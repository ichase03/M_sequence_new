`timescale 1ns / 1ps
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
    parameter DATA_WIDTH = 64
)(
    input clk,
    input rst_n,
    input calcu_ctrl
);
// 参数赋值区
    // 调制系数K
    localparam para_K = 16'd1700;   // K = 1.7

    // 混沌方程1 相关参数
    localparam s1_a = 'h3FD3333333333333;
    localparam s1_b = 'h3FD3333333333333;
    localparam s1_c = 'h3FD3333333333333;
    localparam s1_d = 'h3FD3333333333333;
    localparam s1_e = 'h3FD3333333333333;
    localparam s1_tao = 'h3FD3333333333333;
    localparam s1_k1 = 'h3FD3333333333333;
    localparam s1_k2 = 'h3FD3333333333333;
    localparam s1_k3 = 'h3FD3333333333333;
    localparam s1_xn_initial = 'h3FD3333333333333;
    localparam s1_yn_initial = 'h3FD3333333333333;
    localparam s1_zn_initial = 'h3FD3333333333333;
    // // 混沌方程2
    // localparam s2_a = 'h3FD3333333333333;
    // localparam s2_b = 'h3FD3333333333333;
    // localparam s2_c = 'h3FD3333333333333;
    // localparam s2_d = 'h3FD3333333333333;
    // localparam s2_e = 'h3FD3333333333333;
    // localparam s2_tao = 'h3FD3333333333333;
    // localparam s2_k1 = 'h3FD3333333333333;
    // localparam s2_k2 = 'h3FD3333333333333;
    // localparam s2_k3 = 'h3FD3333333333333;
    // localparam s2_xn_initial = 'h3FD3333333333333;
    // localparam s2_yn_initial = 'h3FD3333333333333;
    // localparam s2_zn_initial = 'h3FD3333333333333;

// 定义区
    // 混沌方程1 输出的相关结果
    wire s1_n1_valid;
    reg reg_s1_n1_valid;
    wire signed [DATA_WIDTH-1:0] s1_xn1; //状态输出（不包含混沌初值）
    wire signed [DATA_WIDTH-1:0] s1_yn1;
    wire signed [DATA_WIDTH-1:0] s1_zn1;
    reg signed [DATA_WIDTH-1:0] reg_s1_xn1; //状态输出暂存（不包含混沌初值）
    reg signed [DATA_WIDTH-1:0] reg_s1_yn1;
    reg signed [DATA_WIDTH-1:0] reg_s1_zn1;
    wire s1_busy;
    // wire s2_n1_valid;
    // wire signed [DATA_WIDTH-1:0] s2_xn1; //状态输出（不包含混沌初值）
    // wire signed [DATA_WIDTH-1:0] s2_yn1;
    // wire signed [DATA_WIDTH-1:0] s2_zn1;
    // wire s2_busy;
    reg MSEQ_din_vld ;
    reg [287:0] MSEQ;   // 拼合出的混沌序列，将其输入至M信号发生器

    wire [15:0] MSEQ_output;
    wire [31:0] DDS_signal;
    wire [31:0] PRNs_x_K;                   // PRNs * K的结果取归一化，取值范围为0——K
    wire [31:0] Signal_Send;

// 功能区
// step1 例化混沌模块，生成混沌序列
    // 1.1 分别例化两个混沌模块
    Chaotic_TOP 
    #(
        .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
    )
    Chaotic_TOP_system1
    (
        .clk(clk),
        .rst_n(rst_n),

        .a(s1_a),
        .b(s1_b),
        .c(s1_c),
        .d(s1_d),
        .e(s1_e),
        .tao(s1_tao),
        .k0(s1_k0),
        .k1(s1_k1),
        .k2(s1_k2),
        
        .xn_initial(s1_xn_initial), //混沌初值
        .yn_initial(s1_yn_initial),
        .zn_initial(s1_zn_initial),

        .calcu_ctrl(calcu_ctrl), //控制混沌方程组迭代，此信号的上升沿做一次状态迭代运算，busy信号高有效期间输入的上升沿无效（上升沿间隔需大于混沌方程组迭代周期Latency）
        .busy(s1_busy), //忙信号，方程组迭代运算未完成，高有效，期间拉高calcu_ctrl无效

        .n1_valid(s1_n1_valid),
        .xn1(s1_xn1), //状态输出（不包含混沌初值）
        .yn1(s1_yn1),
        .zn1(s1_zn1)
    );

    //     Chaotic_TOP 
    // #(
    //     .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
    // )
    // Chaotic_TOP_system2
    // (
    //     .clk(clk),
    //     .rst_n(rst_n),

    //     .a(s2_a),
    //     .b(s2_b),
    //     .c(s2_c),
    //     .d(s2_d),
    //     .e(s2_e),
    //     .tao(s2_tao),
    //     .k0(s2_k0),
    //     .k1(s2_k1),
    //     .k2(s2_k2),
        
    //     .xn_initial(s2_xn_initial), //混沌初值
    //     .yn_initial(s2_yn_initial),
    //     .zn_initial(s2_zn_initial),

    //     .calcu_ctrl(calcu_ctrl), //控制混沌方程组迭代，此信号的上升沿做一次状态迭代运算，busy信号高有效期间输入的上升沿无效（上升沿间隔需大于混沌方程组迭代周期Latency）
    //     .busy(s2_busy), //忙信号，方程组迭代运算未完成，高有效，期间拉高calcu_ctrl无效

    //     .n1_valid(s2_n1_valid),
    //     .xn1(s2_xn1), //状态输出（不包含混沌初值）
    //     .yn1(s2_yn1),
    //     .zn1(s2_zn1)
    // );

    // 1.2 将输出拼接
    // always @(posedge clk or negedge rst_n)
    // begin
    //     if (!rst_n) begin
    //         MSEQ_din_vld <= 'd0;
    //         MSEQ <= 'd0 ;
    //     end
    //     else if (s1_n1_valid&s2_n1_valid) begin
    //         MSEQ_din_vld <= 'd1;
    //         MSEQ <= {s1_xn1[51:3],s1_yn1[51:3], s1_zn1[51:3],s2_xn1[51:3],s2_yn1[51:3],s2_zn1[51:3] };
    //     end
    //     else begin
    //         MSEQ_din_vld <= 'd0;
    //         MSEQ <= MSEQ ;
    //     end
    // end

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            reg_s1_n1_valid <= 'd0;
            reg_s1_xn1 <= 'd0;
            reg_s1_yn1 <= 'd0;
            reg_s1_zn1 <= 'd0;
            MSEQ_din_vld <= 'd0;
            MSEQ <= 'd0;
        end
        else if ( (reg_s1_n1_valid == 'd0 ) & s1_n1_valid) begin
            reg_s1_n1_valid <='d1 ;
            reg_s1_xn1 <= s1_xn1;
            reg_s1_yn1 <= s1_yn1;
            reg_s1_zn1 <= s1_zn1;
        end
        else if ( reg_s1_n1_valid & s1_n1_valid) begin
            reg_s1_n1_valid <='d0 ;
            MSEQ_din_vld <= 'd1;
            MSEQ <= {s1_xn1[51:3],s1_yn1[51:3], s1_zn1[51:3],reg_s1_xn1[51:3],reg_s1_yn1[51:3],reg_s1_zn1[51:3] };
        end
        else begin
            reg_s1_n1_valid <= reg_s1_n1_valid;
            MSEQ_din_vld <= 'd0;
        end
    end

    // always @(posedge clk or negedge rst_n)
    // begin
    //     if (!rst_n) begin
    //         reg_s1_xn1 <= 'd0;
    //         reg_s1_yn1 <= 'd0;
    //         reg_s1_zn1 <= 'd0;
    //     end
    //     else if (s1_n1_valid_cnt == 'd1) begin
    //         reg_s1_xn1 <= s1_xn1;
    //         reg_s1_yn1 <= s1_yn1;
    //         reg_s1_zn1 <= s1_zn1;
    //     end
    //     else begin
    //         reg_s1_xn1 <= reg_s1_xn1;
    //         reg_s1_yn1 <= reg_s1_yn1;
    //         reg_s1_zn1 <= reg_s1_zn1;
    //     end
    // end

    // always @(posedge clk or negedge rst_n)
    // begin
    //     if (!rst_n) begin
    //         MSEQ_din_vld <= 'd0;
    //         MSEQ <= 'd0 ;
    //     end
    //     else if (s1_n1_valid&(s1_n1_valid_cnt == 'd1 )) begin
    //         MSEQ_din_vld <= 'd1;
    //         MSEQ <= {s1_xn1[51:3],s1_yn1[51:3], s1_zn1[51:3],s2_xn1[51:3],s2_yn1[51:3],s2_zn1[51:3] };
    //     end
    //     else begin
    //         MSEQ_din_vld <= 'd0;
    //         MSEQ <= MSEQ ;
    //     end
    // end

// step2 使用混沌序列作为M序列输入，输出随机数
  top_M_sequence top_M_sequence_dut (
    .MSEQ_clk     ( clk     ),
    .MSEQ_rst_n   ( rst_n   ),
    .MSEQ_din     ( MSEQ     ),
    .MSEQ_din_vld ( MSEQ_din_vld ),
    .MSEQ_output  ( MSEQ_output  )
  );

// step3 DDS模块生成待调试信号
assign DDS_signal = 32'h3F000000;		// 0.5

// step4 信号调制
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
