`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/16 17:08:26
// Design Name: 
// Module Name: tb_Chaotic_TOP
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


module tb_Chaotic_TOP(
    );

    localparam DATA_WIDTH = 64;

    reg clk='d1;
    reg rst_n='d0;
    reg signed [DATA_WIDTH-1:0] a=64'h3FD3333333333333;
    reg signed [DATA_WIDTH-1:0] b=64'h3FD3333333333333;
    reg signed [DATA_WIDTH-1:0] c=64'h3FD3333333333333;
    reg signed [DATA_WIDTH-1:0] d=64'h3FD3333333333333;
    reg signed [DATA_WIDTH-1:0] e=64'h3FD3333333333333;
    reg signed [DATA_WIDTH-1:0] tao=64'h3FC999999999999A;
    reg signed [DATA_WIDTH-1:0] k0=64'h3FC999999999999A;
    reg signed [DATA_WIDTH-1:0] k1=64'h3FC999999999999A;
    reg signed [DATA_WIDTH-1:0] k2=64'h3FC999999999999A;

    reg signed [DATA_WIDTH-1:0] xn_initial=64'h3FB999999999999A; //混沌初值
    reg signed [DATA_WIDTH-1:0] yn_initial=64'h3FB999999999999A;
    reg signed [DATA_WIDTH-1:0] zn_initial=64'h3FB999999999999A;
    reg calcu_ctrl='d1;

    wire busy; //忙信号，方程组迭代运算未完成，高有效，期间拉高calcu_ctrl无效
    wire n1_valid;
    wire signed [DATA_WIDTH-1:0] xn1; //状态输出（不包含混沌初值）
    wire signed [DATA_WIDTH-1:0] yn1;
    wire signed [DATA_WIDTH-1:0] zn1;

    always #10 clk = !clk;
    always #20 calcu_ctrl = !calcu_ctrl;

    initial begin
        #2000 rst_n = 'd1;
        #1000000 $finish;
    end

    Chaotic_TOP 
    #(
        .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
    )
    Chaotic_TOP_inst
    (
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
        
        .xn_initial(xn_initial), //混沌初值
        .yn_initial(yn_initial),
        .zn_initial(zn_initial),

        .calcu_ctrl(calcu_ctrl), //控制混沌方程组迭代，此信号的上升沿做一次状态迭代运算，busy信号高有效期间输入的上升沿无效（上升沿间隔需大于混沌方程组迭代周期Latency）
        .busy(busy), //忙信号，方程组迭代运算未完成，高有效，期间拉高calcu_ctrl无效

        .n1_valid(n1_valid),
        .xn1(xn1), //状态输出（不包含混沌初值）
        .yn1(yn1),
        .zn1(zn1)
    );

endmodule
