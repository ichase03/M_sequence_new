// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/16 15:58:06
// Design Name: 
// Module Name: Chaotic_equation_x
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
module Chaotic_equation_x
#(
    parameter DATA_WIDTH = 64 //数据位宽须与 Floating-point IP 数据位宽匹配
)(
	input clk,
    input rst_n,

    input signed [DATA_WIDTH-1:0] a,
    input signed [DATA_WIDTH-1:0] c,
    input signed [DATA_WIDTH-1:0] e,
    input signed [DATA_WIDTH-1:0] k0,
    input signed [DATA_WIDTH-1:0] k1,
    input signed [DATA_WIDTH-1:0] k2,
	
    input xn_valid,
    input signed [DATA_WIDTH-1:0] xn,
    input yn_valid,
    input signed [DATA_WIDTH-1:0] yn,
    input zn_valid,
    input signed [DATA_WIDTH-1:0] zn,

    output reg xn1_valid,
    output reg signed [DATA_WIDTH-1:0] xn1 //向前欧拉差分公式中的xn+1
    );

    // 定义区
    wire a_yn_valid;                        // step1.1中a*yn计算结果有效信号
    wire signed [DATA_WIDTH-1:0] a_yn;      // 1.1中a*yn计算结果
    wire dly_a_yn_valid;                    // 延时1.1中a_yn_valid
    wire signed [DATA_WIDTH-1:0] dly_a_yn;   // 延时1.1中a_yn
                                            
    wire e_yn_valid;                        // step1.2  含义同上
    wire signed [DATA_WIDTH-1:0] e_yn;
    wire dly_e_yn_valid;
    wire signed [DATA_WIDTH-1:0] dly_e_yn;

    wire zn_zn_valid;                       // 1.3
    wire signed [DATA_WIDTH-1:0] zn_zn;
    wire dly_zn_zn_valid;
    wire signed [DATA_WIDTH-1:0] dly_zn_zn;

    wire k0k1zn_valid;                      // 1.4
    wire signed [DATA_WIDTH-1:0] k0k1zn;    // 因为1.4延时最长，故不需要reg寄存，直接进入step2的计算

    // wire signed [DATA_WIDTH-1:0] dly_k2;                                     
    wire k0k1k2zn_valid;                    // 2
    wire signed [DATA_WIDTH-1:0] k0k1k2zn;

    wire ek0k1k2znyn_valid;                 // 3
    wire signed [DATA_WIDTH-1:0] ek0k1k2znyn;

    wire sin_data_valid;                    // 4
    wire signed [DATA_WIDTH-1:0] sin_data;
    wire signed [DATA_WIDTH-1:0] c_dly;
    
    wire xn1_temp_valid;                    // 5
    wire signed [DATA_WIDTH-1:0] xn1_temp;

    // 功能区
    // -------------------------------------------------
    // step: 1 并行计算a*yn  e*yn   zn*zn  k1*zn+k0   latency26
    // 其中乘加模块k1*zn+k0延时最长，最后完成，故step2时，使用k0k1zn_valid作为输入有效信号
    // 1.1 计算a*yn    15 latency
    IP_float64_multiply a_MUL_yn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(yn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(a),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(yn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(yn),              // input wire [63 : 0] s_axis_b_tdata
        .m_axis_result_tvalid(a_yn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(a_yn)    // output wire [63 : 0] m_axis_result_tdata
    );
    
    IP_shift_register a_yn_dly (
        .A(8'd199),      // input wire [7 : 0] A    199 = 11+15+26+149-1-1-1-1+2
        .D({a_yn_valid,a_yn}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({dly_a_yn_valid, dly_a_yn})      // output wire [64 : 0] Q
    );

    // 1.2 计算e*yn  15latency  输出值在step3中使用
    IP_float64_multiply e_MUL_yn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(yn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(e),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(yn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(yn),              // input wire [63 : 0] s_axis_b_tdata
        .m_axis_result_tvalid(e_yn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(e_yn)    // output wire [63 : 0] m_axis_result_tdata
    );

    IP_shift_register e_yn_dly (
        .A(8'd35),      // input wire [7 : 0] A     35=11-1+26-1
        .D({e_yn_valid,e_yn}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({dly_e_yn_valid, dly_e_yn})      // output wire [64 : 0] Q
    );

    // 1.3 计算zn*zn    （输出值在step2中使用）
    IP_float64_multiply zn_MUL_zn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(zn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(zn),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(zn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(zn),              // input wire [63 : 0] s_axis_b_tdata
        .m_axis_result_tvalid(zn_zn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(zn_zn)    // output wire [63 : 0] m_axis_result_tdata
    );

        // 此处延时因为step1需要26个时钟，1.3仅15个时钟即完成，为保证step2中输入有效的时间匹配，故添加 11-2 个时钟的延时
    IP_shift_register zn_zn_dly (
        .A(8'd9),      // input wire [7 : 0] A  9 = 11 - 2
        .D({zn_zn_valid,zn_zn}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({dly_zn_zn_valid, dly_zn_zn})      // output wire [64 : 0] Q
    );

    // 1.4 计算k1*zn+k0  26latency  (输出值在step2中计算)
    // 乘加模块k1*zn+k0延时最长，最后完成，故step2时，使用k0k1zn_valid作为输入有效信号
    IP_float64_multiply_add calculate_k0k1zn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(zn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(k1),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(zn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(zn),              // input wire [63 : 0] s_axis_b_tdata
        .s_axis_c_tvalid(zn_valid),            // input wire s_axis_c_tvalid
        .s_axis_c_tdata(k0),              // input wire [63 : 0] s_axis_c_tdata
        .m_axis_result_tvalid(k0k1zn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(k0k1zn)    // output wire [63 : 0] m_axis_result_tdata
    );
    // step1 end----------26latency----------------------------

    //---------------------------------------------------------
    // step: 2 计算 k0 + k1*zn + k2 * zn *zn  
    // 其中k0+k1*zn  zn*zn已在step1完成，故只需一个乘加模块即可完成计算
    // 下一级时，使用k0k1k2zn_valid作为输入有效信号

    IP_float64_multiply_add calculate_k0k1k2zn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(dly_zn_zn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(dly_zn_zn),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(k0k1zn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(k2),              // input wire [63 : 0] s_axis_b_tdata
        .s_axis_c_tvalid(k0k1zn_valid),            // input wire s_axis_c_tvalid
        .s_axis_c_tdata(k0k1zn),              // input wire [63 : 0] s_axis_c_tdata
        .m_axis_result_tvalid(k0k1k2zn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(k0k1k2zn)    // output wire [63 : 0] m_axis_result_tdata
    );
    // step2 end---26latency

    //------------------------------------
    // step: 3 计算sin函数括号内的内容 ek0k1k2znyn = e*( k0 + k1*zn + k2*zn^2 )*yn
    IP_float64_multiply calculate_ek0k1k2znyn (
        .aclk(clk),                                  // input wire aclk
        .aresetn(rst_n),                            // input wire aresetn
        .s_axis_a_tvalid(k0k1k2zn_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(k0k1k2zn),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(dly_e_yn_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(dly_e_yn),              // input wire [63 : 0] s_axis_b_tdata
        .m_axis_result_tvalid(ek0k1k2znyn_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(ek0k1k2znyn)    // output wire [63 : 0] m_axis_result_tdata
    );
    // step3 end---15latency

    //------------------------------------------------
    // bug!!! 
    //step: 4 计算sin（ step3 ）
    sincos_TOP 
	#(
		.DATA_WIDTH(DATA_WIDTH), //数据位宽须与 Floating-point IP 数据位宽匹配
		.CORDIC_PHASE_WIDTH(32)  //数据位宽须与 CORDIC IP 数据位宽匹配
	)
	calculate_sin
	(
		.clk(clk),
		.rst_n(rst_n),

		.Theta_valid(ek0k1k2znyn_valid),
		.Theta(ek0k1k2znyn),
        
		.sin_valid(sin_data_valid),
		.sin(sin_data),
		.cos_valid(),
		.cos()
	);
    // step4 end --------

    //---------------------
    // step: 5 计算xn1 = (a_yn_dly) + (c_dly) * (sin)
    // 注意要对参数c单独做延时，以免错位
    IP_shift_register para_c_dly (
        .A(8'd214),      // input wire [7 : 0] A    212 = 26+26+15+149 -1 -1 -1-1-1 +2
        .D({0,c}),      // input wire [64 : 0] D
        .CLK(clk),  // input wire CLK
        .Q({0, c_dly})      // output wire [64 : 0] Q
    );

    IP_float64_multiply_add calculate_xn1 (
        .aclk(clk ),                                  // input wire aclk
        .aresetn(rst_n ),                            // input wire aresetn
        .s_axis_a_tvalid(sin_data_valid),            // input wire s_axis_a_tvalid
        .s_axis_a_tdata(c_dly),              // input wire [63 : 0] s_axis_a_tdata
        .s_axis_b_tvalid(sin_data_valid),            // input wire s_axis_b_tvalid
        .s_axis_b_tdata(sin_data),              // input wire [63 : 0] s_axis_b_tdata
        .s_axis_c_tvalid(dly_a_yn_valid),            // input wire s_axis_c_tvalid
        .s_axis_c_tdata(dly_a_yn),              // input wire [63 : 0] s_axis_c_tdata
        .m_axis_result_tvalid(xn1_temp_valid),  // output wire m_axis_result_tvalid
        .m_axis_result_tdata(xn1_temp)    // output wire [63 : 0] m_axis_result_tdata
    );  

    // 输出
    always @(posedge clk or negedge rst_n)begin
        if(rst_n == 1'b0)begin
            xn1_valid <= 1'b0;
            xn1 <= 'h0;
        end
        else if (xn1_temp_valid) begin
            xn1_valid <= xn1_temp_valid;
            xn1 <= xn1_temp;
        end
        else begin
            xn1_valid <= xn1_temp_valid;
            xn1 <= xn1;
        end
    end

endmodule
