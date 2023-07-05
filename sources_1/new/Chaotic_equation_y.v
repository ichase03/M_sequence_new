`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/16 14:08:39
// Design Name: 
// Module Name: Chaotic_equation_y
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

// 混沌方程y_n1
module Chaotic_equation_y#(
    parameter DATA_WIDTH = 64 //数据位宽须与 Floating-point IP 数据位宽匹配
)(
	input clk,
    input rst_n,

    input signed [DATA_WIDTH-1:0] b,
    input signed [DATA_WIDTH-1:0] d,
	
    input xn_valid,
    input signed [DATA_WIDTH-1:0] xn,
    input yn_valid,
    input signed [DATA_WIDTH-1:0] yn,
    input zn_valid,
    input signed [DATA_WIDTH-1:0] zn,

    output yn1_valid,
    output signed [DATA_WIDTH-1:0] yn1 //向前欧拉差分公式中的yn+1
    );

    // 定义区
    wire b_xn_valid;
    wire signed [DATA_WIDTH-1:0] b_xn;
    wire dly_b_xn_valid;
    wire signed [DATA_WIDTH-1:0] dly_b_xn;

    wire d_yn_valid;
    wire signed [DATA_WIDTH-1:0] d_yn;
    wire dly_d_yn_valid;
    wire signed [DATA_WIDTH-1:0] dly_d_yn;

    wire cos_zn_valid;
    wire signed [DATA_WIDTH-1:0] cos_zn;
    wire yn1_temp_valid;
    wire signed [DATA_WIDTH-1:0] yn1_temp;
    
	// 功能区
	// 1 并行计算b*x_n  d*yn   cos(zn)
	// 1.1 调用IP_float64_multiply计算b*x_n   
    // 15latency
    IP_float64_multiply b_MUL_xn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(xn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(b),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(xn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(xn),              // input wire [63 : 0] s_axis_b_tdata
        .m_axis_result_tvalid(b_xn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(b_xn)    // output wire [63 : 0] m_axis_result_tdata
    );
	
    IP_shift_register b_xn_dly (
        .A(8'd132),      // input wire [7 : 0] A  132 = 149 - 15 -1 +2
        .D({b_xn_valid,b_xn}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({dly_b_xn_valid, dly_b_xn})      // output wire [64 : 0] Q
    );
	
	// 1.2 调用IP_float64_multiply计算d*yn  
    // 15latency
	IP_float64_multiply d_MUL_yn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(yn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(d),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(yn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(yn),              // input wire [63 : 0] s_axis_b_tdata
        .m_axis_result_tvalid(d_yn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(d_yn)    // output wire [63 : 0] m_axis_result_tdata
    );

    IP_shift_register d_yn_dly (
        .A(8'd132),      // input wire [7 : 0] A  132 = 149 - 15 - 1 + 2
        .D({d_yn_valid,d_yn}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({dly_d_yn_valid, dly_d_yn})      // output wire [64 : 0] Q
    );
	
	// 1.3 调用sin/cos 模块 计算cos(zn)
    // latency149 最长
    sincos_TOP 
	#(
		.DATA_WIDTH(DATA_WIDTH), //数据位宽须与 Floating-point IP 数据位宽匹配
		.CORDIC_PHASE_WIDTH(32)  //数据位宽须与 CORDIC IP 数据位宽匹配
	)
	sincos_TOP_inst
	(
		.clk(clk),
		.rst_n(rst_n),

		.Theta_valid(zn_valid),
		.Theta(zn),

		.sin_valid(),
		.sin(),
		.cos_valid(cos_zn_valid),
		.cos(cos_zn)
	);

    // 2 调用IP_float64_multiply_add  latency26 乘加模块计算 式1.2 * 式1.3 + 式1.1
    // 计算式1.3的latency时间最长，故使用cos_zn_valid作为有效信号
    IP_float64_multiply_add calculate_yn1 (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(cos_zn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(cos_zn),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(dly_d_yn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(dly_d_yn),              // input wire [63 : 0] s_axis_b_tdata
        .s_axis_c_tvalid(dly_b_xn_valid),            // input wire s_axis_c_tvalid
        .s_axis_c_tdata(dly_b_xn),              // input wire [63 : 0] s_axis_c_tdata
        .m_axis_result_tvalid(yn1_temp_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(yn1_temp)    // output wire [63 : 0] m_axis_result_tdata
    );
	
    // 3 输出
    IP_shift_register yn1_dly (
        .A(8'd66),      // input wire [7 : 0] A  66 = 244-149-26 - 1 -2
        .D({yn1_temp_valid,yn1_temp}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({yn1_valid, yn1})      // output wire [64 : 0] Q
    );
    
endmodule
