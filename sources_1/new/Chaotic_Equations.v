`timescale 1ns/1ps
/*
方程组顶层，3个混沌方程模块分别对应方程组3个维度
*/
module Chaotic_Equations #(
    parameter DATA_WIDTH = 64  //数据位宽须与 Floating-point IP 数据位宽匹配
)(
    input clk,
    input rst_n,

    input signed [DATA_WIDTH-1:0] a,
	input signed [DATA_WIDTH-1:0] b,
	input signed [DATA_WIDTH-1:0] c,
	input signed [DATA_WIDTH-1:0] d,
	input signed [DATA_WIDTH-1:0] e,
	input signed [DATA_WIDTH-1:0] tao,
    input signed [DATA_WIDTH-1:0] k0,
    input signed [DATA_WIDTH-1:0] k1,
    input signed [DATA_WIDTH-1:0] k2,

    input n_valid,
    input signed [DATA_WIDTH-1:0] xn, //混沌现态
    input signed [DATA_WIDTH-1:0] yn,
    input signed [DATA_WIDTH-1:0] zn,

    output n1_valid,
    output signed [DATA_WIDTH-1:0] xn1, //混沌次态
    output signed [DATA_WIDTH-1:0] yn1,
    output signed [DATA_WIDTH-1:0] zn1
    // output reg busy  //忙信号，方程组运算未完成，高有效
);

// 定义区--------------------------------------------------
wire xn1_valid;
wire yn1_valid;
wire zn1_valid;

assign n1_valid = xn1_valid && yn1_valid && zn1_valid;

// // busy忙信号产生逻辑
// //忙信号产生，由于状态方程对过去状态存在依赖，即必须完成前一次迭代才能开始下一次迭代，故未采用流水线。忙信号产生方式
// always @(posedge clk or negedge rst_n)begin
//     if(rst_n == 1'b0)begin
//         busy <= 1'b0;
//     end
//     else begin
//         if(n_valid == 1'b1 && busy == 1'b0)begin
//             busy <= 1'b1;
//         end
//         else if(n1_valid == 1'b1 && busy == 1'b1)begin
//             busy <= 1'b0;
//         end
//         else begin
//             busy <= busy;
//         end
//     end
// end


// 混沌方程x_n1
Chaotic_equation_x #(
    .DATA_WIDTH(DATA_WIDTH) //数据位宽须与 Floating-point IP 数据位宽匹配
)x_equation(
    .clk(clk),
    .rst_n(rst_n),

    .a(a),
    .c(c),
    .e(e),
    .k0(k0),
    .k1(k1),
    .k2(k2),

    .yn_valid(n_valid),
    .yn(yn),
    .zn_valid(n_valid),
    .zn(zn),

    .xn1_valid(xn1_valid),
    .xn1(xn1) //向前欧拉差分公式中的xn+1
);

// 混沌方程y_n1
Chaotic_equation_y #(
    .DATA_WIDTH(DATA_WIDTH) //数据位宽须与 Floating-point IP 数据位宽匹配
)y_equation(
    .clk(clk),
    .rst_n(rst_n),

    .b(b),
    .d(d),
	
    .xn_valid(n_valid),
    .xn(xn),
    .yn_valid(n_valid),
    .yn(yn),
    .zn_valid(n_valid),
    .zn(zn),

    .yn1_valid(yn1_valid),
    .yn1(yn1) //向前欧拉差分公式中的yn+1
);

// 混沌方程z_n1
Chaotic_equation_z #(
    .DATA_WIDTH(DATA_WIDTH) //数据位宽须与 Floating-point IP 数据位宽匹配
)z_equation(
    .clk(clk),
    .rst_n(rst_n),

    .tao(tao),
	
    .yn_valid(n_valid),
    .yn(yn),
    .zn_valid(n_valid),
    .zn(zn),

    .zn1_valid(zn1_valid),
    .zn1(zn1) //向前欧拉差分公式中的zn+1
);


endmodule