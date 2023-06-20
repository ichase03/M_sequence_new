`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/10 19:40:00
// Design Name: 
// Module Name: PRNs_to_Float
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PRNs_Multiply_K#(
  parameter OUTPUT_DATA_WIDTH = 16   //! 输入的数据位宽
)(  
    input MSEQ_clk ,
    input MSEQ_rst_n ,
    input [OUTPUT_DATA_WIDTH-1:0] MSEQ_signal,
    input [OUTPUT_DATA_WIDTH-1:0] para_K,
    input [31:0] DDS_signal,
    output [31:0] PRNs_x_K,                   // PRNs * K的结果取归一化，取值范围为0——K
    output [31:0] Signal_Send 
    // output PRNs_x_K_valid
    );


//! 定义区
wire [31:0] MSEQ_signal_temp;             // 32位的MSEQ_signal信号，作为fixed to float的输入   
wire [31:0] para_K_temp;                  // 32位的para_K

wire [31:0] PRNs_float;                   // 单精度浮点数类型的PRNs
wire        PRNs_float_valid;
wire [31:0] para_K_float;                 // 单精度浮点数类型的K
wire        para_K_float_valid;

wire  [31:0] PRNs_x_K_temp;               // PRNs * K 的结果，取值范围为0-K*2^26
wire  [31:0] modulate_signal_float_temp;  // 信号调制结果，取值范围为0——1+K
wire  [31:0] modulate_signal_float;       // modulate_signal_float = modulate_signal_float_temp * 2^16

assign MSEQ_signal_temp = MSEQ_signal;    // 将MSEQ_signal转化为32位无符号int
assign para_K_temp      = para_K     ;    // 将para_K转化为32位无符号int


//! 功能区
//---------------------------------------
// 1 将相关系数转化为单精度浮点数
// 1.1 将整数PRNs转化为单精度浮点数
IP_fix_to_float PRNs_to_float (
  .aclk                 (   MSEQ_clk    ),                                  // input wire aclk
  .s_axis_a_tvalid      (   'd1         ),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata       (   MSEQ_signal_temp ),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid (   PRNs_float_valid      ),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata  (   PRNs_float  )    // output wire [31 : 0] m_axis_result_tdata
);

// 1.2 将系数K转化为单精度浮点数
IP_fix_to_float K_to_float (
  .aclk                 (   MSEQ_clk    ),                                  // input wire aclk
  .s_axis_a_tvalid      (   'd1         ),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata       (   para_K_temp ),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid (   para_K_float_valid            ),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata  (   para_K_float)    // output wire [31 : 0] m_axis_result_tdata
);

//------------------------------------------
// 2 计算 PRNs*K，并将结果归一化
// 2.1 计算PRNs_x_K = PRNs_float_0_1 x para_K_float
float_multiply float_multiply_PRNs_x_K (
  .aclk             ( MSEQ_clk),                                  // input wire aclk
  .s_axis_a_tvalid  ( PRNs_float_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata   ( PRNs_float  ),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid  ( para_K_float_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tdata   ( para_K_float),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(  ),                // output wire m_axis_result_tvalid
  .m_axis_result_tdata ( PRNs_x_K_temp )    // output wire [31 : 0] m_axis_result_tdata
);

// 2.2 将乘积的结果PRNs_x_K_temp重映射到0-K之间，得到PRNs_x_K
//      PRNs_x_K_temp = PRNs_float * para_K_float
//      其中：PRNs_float：0——2^16   para_K：0——1000约等于1024=2^10
//      为将结果重映射至0——K之间（k=0 —— 1），需将PRNs_x_K_temp缩小2^26
//      即将单精度浮点数PRNs_x_K_temp的指数位[30:23]的值减去26
assign PRNs_x_K = {PRNs_x_K_temp[31],PRNs_x_K_temp[30:23]-26,PRNs_x_K_temp[22:0]};


//-----------------------------------------------
// 3 将PRNs_x_K同DDS信号进行调制
// 3.1 加法调制
IP_signal_add signal_add (
  .aclk(MSEQ_clk),                                  // input wire aclk
  .s_axis_a_tvalid('d1),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(PRNs_x_K),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid('d1),            // input wire s_axis_b_tvalid
  .s_axis_b_tdata(DDS_signal),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid( ),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(modulate_signal_float_temp)    // output wire [31 : 0] m_axis_result_tdata
);

// 3.2 将加法调制的结果扩大2^16倍，并将结果转化为32位定点整数
assign modulate_signal_float = {modulate_signal_float_temp[31],modulate_signal_float_temp[30:23]+16,modulate_signal_float_temp[22:0]};

IP_float_to_fixed float_to_fixed (
  .aclk(MSEQ_clk),                                  // input wire aclk
  .s_axis_a_tvalid( 'd1 ),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(modulate_signal_float),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid( ),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata( Signal_Send  )    // output wire [31 : 0] m_axis_result_tdata
);

endmodule
