`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/16 15:58:21
// Design Name: 
// Module Name: Chaotic_equation_z
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


// 混沌方程z_n1
module Chaotic_equation_z
#(
    parameter DATA_WIDTH = 64 //数据位宽须与 Floating-point IP 数据位宽匹配
)(
	input clk,
    input rst_n,

    input signed [DATA_WIDTH-1:0] tao,
	
    input yn_valid,
    input signed [DATA_WIDTH-1:0] yn,
    input zn_valid,
    input signed [DATA_WIDTH-1:0] zn,

    output zn1_valid,
    output signed [DATA_WIDTH-1:0] zn1 //向前欧拉差分公式中的yn+1
    );

    // 定义区
    wire zn1_temp_valid;
    wire signed [DATA_WIDTH-1:0] zn1_temp;

    // 功能区
    // 计算zn1 = zn + tao * yn   latency26
    IP_float64_multiply_add calculate_zn1 (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(yn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(tao),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(yn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(yn),              // input wire [63 : 0] s_axis_b_tdata
        .s_axis_c_tvalid(yn_valid),            // input wire s_axis_c_tvalid
        .s_axis_c_tdata(zn),              // input wire [63 : 0] s_axis_c_tdata
        .m_axis_result_tvalid(zn1_temp_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(zn1_temp)    // output wire [63 : 0] m_axis_result_tdata
    );
    
    IP_shift_register zn1_dly (
        .A(8'd215),      // input wire [7 : 0] A  215 = 244 - 26 - 5 -2 -3 + 2
        .D({zn1_temp_valid,zn1_temp}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({zn1_valid, zn1})      // output wire [64 : 0] Q
    );
    
endmodule
