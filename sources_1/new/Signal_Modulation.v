`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/10 18:46:17
// Design Name: 
// Module Name: Signal_Modulation
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


module Signal_Modulation#(
    parameter OUTPUT_DATA_WIDTH = 16   //! 输入的数据位宽
  )(
    input MSEQ_clk ,
    input MSEQ_rst_n ,
    input [OUTPUT_DATA_WIDTH-1:0] MSEQ_signal,
    input [OUTPUT_DATA_WIDTH-1:0] para_K,
    input [15:0] DDS_signal,
    output [31:0] Signal_Send
    );

    wire [31:0] MSEQ_mul_K;                   // MSEQ_signal*para_K的结果
    reg [31:0] DDS_signal_uint32;               // 暂存32位的DDS_signal信号，扩大1024倍并延时一拍
    wire [31:0] Signal_Send_uint32;
    wire [31:0] Signal_Send_float32;

    // 计算MSEQ_signal*para_K
    IP_uint16_mult uint16_mult (
        .CLK(MSEQ_clk),  // input wire CLK
        .A(MSEQ_signal),      // input wire [15 : 0] A
        .B(para_K),      // input wire [15 : 0] B
        .P(MSEQ_mul_K)      // output wire [31 : 0] P
    );

    // 将DDS的值扩大1024（为了同K*MSEQ_signal的值相匹配）
    // assign DDS_signal_temp = DDS_signal << 'd10;
    always@(posedge MSEQ_clk or negedge MSEQ_rst_n)
    begin
        if (!MSEQ_rst_n)
            DDS_signal_uint32 <= 'd0;
        else
            DDS_signal_uint32 <= DDS_signal << 10 ;
    end

    // 信号调制，计算DDS_signal+(MSEQ_signal*para_K)
    IP_uint32_add uint32_add (
        .A(DDS_signal_uint32),      // input wire [31 : 0] A
        .B(MSEQ_mul_K),      // input wire [31 : 0] B
        .CLK(MSEQ_clk),  // input wire CLK
        .S( Signal_Send_uint32 )      // output wire [31 : 0] S
    );

    IP_fix_to_float uint32_to_float32 (
        .aclk                (MSEQ_clk), // input wire aclk
        .s_axis_a_tvalid     ('d1),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata      (Signal_Send_uint32), // input wire [31 : 0] s_axis_a_tdata
        .m_axis_result_tvalid(), // output wire m_axis_result_tvalid
        .m_axis_result_tdata (Signal_Send_float32) // output wire [31 : 0] m_axis_result_tdata
    );

    // 将Signal_Send_float32缩放到0————（1+k）之间
    assign Signal_Send = {Signal_Send_float32[31],Signal_Send_float32[30:23]-10-16,Signal_Send_float32[22:0]};

endmodule
