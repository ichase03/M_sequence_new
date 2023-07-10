
// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/18 20:44:20
// Design Name: 
// Module Name: System_TOP
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


module System_TOP 
#(
    parameter DATA_WIDTH = 64,
    parameter INPUT_DATA_WIDTH = 288
)(
    input clk,
    input rst_n,
    input calcu_ctrl
);
// 参数赋值区
    // 调制系数K
    localparam para_K = 16'd1700;   // K = 1.7

// 定义区
    // 混沌方程输出相关信号
    wire n1_valid;                      // 状态输出的有效信号
    wire signed [DATA_WIDTH-1:0] xn1;   //状态输出（不包含混沌初值）
    wire signed [DATA_WIDTH-1:0] yn1;
    wire signed [DATA_WIDTH-1:0] zn1;
    wire [7:0] xyz_out_num;             // 混沌输出x y z的序号
    // MSEQ模块的相关信号
    wire [3:0] MSEQ_din_valid ;  // MESQ输入有效信号
    wire [INPUT_DATA_WIDTH-1:0] MSEQ_din;   // 拼合后的混沌序列，将其输入至M信号发生器
    wire [15:0] MSEQ_output;
    // DDS输出的待调制信号
    wire [31:0] DDS_signal;
    // 调制后的信号
    wire [31:0] PRNs_x_K;                   // PRNs * K的结果取归一化，取�?�范围为0—�?�K
    wire [31:0] Signal_Send;

// 功能区
// step: 1 例化混沌模块，生成混沌序列
    Chaotic_TOP 
    #(
        .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
    )
    Chaotic_TOP_system
    (
        .clk(clk),
        .rst_n(rst_n),
        .n1_valid(n1_valid),
        .xn1(xn1),              //状态输出（不包含混沌初值）
        .yn1(yn1),
        .zn1(zn1),
        .xyz_ram_w_addr(xyz_out_num)
    );

// step: 2 将混沌信号拼合成所需的M序列输入信号，并控制M序列模块的选通
// memo: 4位的MSEQ_din_valid最多控制4个M序列模型更新，
//      如需更多的M序列模块，需修改MSEQ_control模块内MSEQ_din_valid信号位宽，同时拓展内部状态机的逻辑
MSEQ_control
#(
    .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH), //! MSEQ模块需求的输入的数据MSEQ_din的位宽
    .DATA_WIDTH(DATA_WIDTH)
)
MSEQ_control_inst
(
    .clk(clk),
    .rst_n(rst_n),
    .n1_valid(n1_valid),                    // 混沌系统输出有效信号
    .xn1(xn1),                              // 混沌系统次态（状态输出值）
    .yn1(yn1),
    .zn1(zn1),
    .xyz_out_num(xyz_out_num),
    .MSEQ_din(MSEQ_din),                    // MESQ选通信号
    .MSEQ_din_valid(MSEQ_din_valid)
);


 // step: 3 使用混沌序列作为M序列输入，输出随机数
 // memo: 如需例化更多的top_M_sequence模块，只需修改.MSEQ_din_vld ( MSEQ_din_valid[i]处连线即可
   top_M_sequence top_M_sequence_dut (
     .MSEQ_clk     ( clk     ),
     .MSEQ_rst_n   ( rst_n   ),
     .MSEQ_din     ( MSEQ_din     ),
     .MSEQ_din_vld ( MSEQ_din_valid[0] ),
     .MSEQ_output  ( MSEQ_output  )
   );

 // step: 4 DDS模块生成待调试信号
 // 例化 DDS 模块
//  assign DDS_signal = 32'h3F000000;		// 0.5
DDS DDS_inst(
	.clk(clk),
	.rst_n(rst_n),
    .wave_shape(00), //00：正弦   01：方波   10：三角   11：三次谐波

    .frq_word(32'd1000),   //频率控制字
    .phase_init(32'd1111), //初始相位

    .phase(), //相位累加器，原位宽扩大1位用于控制器计算周期数
	.dds_out(DDS_signal)
);

 // step: 5 信号调制
 PRNs_Multiply_K PRNs_Multiply_K_inst(  
         .MSEQ_clk(clk) ,
         .MSEQ_rst_n(rst_n) ,
         .MSEQ_signal(MSEQ_output),
         .DDS_signal(DDS_signal),
         .para_K(para_K),
         .PRNs_x_K(PRNs_x_K),
         .Signal_Send(Signal_Send )
     );


     
endmodule
