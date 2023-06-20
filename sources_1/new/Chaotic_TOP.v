`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/16 16:59:40
// Design Name: 
// Module Name: Chaotic_TOP
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


module Chaotic_TOP #(
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

    input signed [DATA_WIDTH-1:0] xn_initial, //混沌初值
    input signed [DATA_WIDTH-1:0] yn_initial,
    input signed [DATA_WIDTH-1:0] zn_initial,

    input calcu_ctrl, //控制混沌方程组迭代，此信号的上升沿做一次状态迭代运算，busy信号高有效期间输入的上升沿无效（上升沿间隔需大于混沌方程组迭代周期Latency）
    output busy, //忙信号，方程组迭代运算未完成，高有效，期间拉高calcu_ctrl无效

    output n1_valid,
    output signed [DATA_WIDTH-1:0] xn1, //状态输出（不包含混沌初值）
    output signed [DATA_WIDTH-1:0] yn1,
    output signed [DATA_WIDTH-1:0] zn1
);

//控制信号打拍用于捕获边沿
reg calcu_ctrl_dly1;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        calcu_ctrl_dly1 <= 1'b0;
    end
    else begin
        calcu_ctrl_dly1 <= calcu_ctrl;
    end
end

//下一个状态更新值缓存，buf寄存器在复位时赋混沌初值，在方程组一次迭代完成后立即更新为迭代后的状态值
reg signed [DATA_WIDTH-1:0] xn_buf;
reg signed [DATA_WIDTH-1:0] yn_buf;
reg signed [DATA_WIDTH-1:0] zn_buf;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        xn_buf <= xn_initial;
        yn_buf <= yn_initial;
        zn_buf <= zn_initial;
    end
    else begin
        if(n1_valid == 1'b1)begin
            xn_buf <= xn1;
            yn_buf <= yn1;
            zn_buf <= zn1;
        end
        else begin
            xn_buf <= xn_buf;
            yn_buf <= yn_buf;
            zn_buf <= zn_buf;
        end
    end
end

// 输入有效信号
reg n_valid;
reg signed [DATA_WIDTH-1:0] xn;
reg signed [DATA_WIDTH-1:0] yn;
reg signed [DATA_WIDTH-1:0] zn;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        n_valid <= 1'b0;
        xn <= 32'd0;
        yn <= 32'd0;
        zn <= 32'd0;
    end
    else begin
        if(calcu_ctrl_dly1 == 1'b0 && calcu_ctrl == 1'b1 && busy == 1'b0)begin//此处的敏感条件为，使能信号上升沿在忙信号低无效时出现
            n_valid <= 1'b1;
            xn <= xn_buf;
            yn <= yn_buf;
            zn <= zn_buf;
        end
        else begin
            n_valid <= 1'b0;
            xn <= xn;
            yn <= yn;
            zn <= zn;
        end
    end
end


Chaotic_Equations #(
    .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
)u_Chaotic_equations(
    .clk(clk),
    .rst_n(rst_n),

    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .tao(tao),
    .k0(k0),
    .k1(k1),
    .k2(k2),

    .n_valid(n_valid),  // 输入有效信号
    .xn(xn), //混沌现态
    .yn(yn),
    .zn(zn),

    .n1_valid(n1_valid),// 输出有效信号
    .xn1(xn1), //混沌次态
    .yn1(yn1),
    .zn1(zn1),
    .busy(busy) //忙信号，方程组运算未完成，高有效
);

endmodule
