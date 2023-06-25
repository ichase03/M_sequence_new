`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/25 11:35:56
// Design Name: 
// Module Name: MSEQ_control
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


module MSEQ_control#(
    parameter INPUT_DATA_WIDTH  = 288 , //! MSEQ模块需求的输入的数据MSEQ_din的位宽
    parameter DATA_WIDTH = 'd64
)(
    input clk,
    input rst_n,
    input n1_valid,                    // 混沌系统输出有效信号
    input signed [DATA_WIDTH-1:0] xn1, // 混沌系统次态（状态输出值）
    input signed [DATA_WIDTH-1:0] yn1,
    input signed [DATA_WIDTH-1:0] zn1,
    input [7:0] xyz_out_num,
    output  reg [INPUT_DATA_WIDTH-1:0] MSEQ_din,
    output  reg [3:0] MSEQ_din_valid
);
// 定义区
    reg signed [DATA_WIDTH-1:0] reg_xn1; // 暂存一个时钟的混沌输出值
    reg signed [DATA_WIDTH-1:0] reg_yn1;
    reg signed [DATA_WIDTH-1:0] reg_zn1;
    reg [3:0] MSEQ_control_state;
    
    parameter IDLE = 'd0;
    parameter MSEQ1_Update = 'd1;
    parameter MSEQ2_Update = 'd2;
    parameter MSEQ3_Update = 'd3;
    parameter MSEQ4_Update = 'd4;
    parameter Update_Wait = 'd5;


// 功能区
    // step 1 使用寄存器暂存xn1 yn1 zn1的值
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            reg_xn1 <= 'd0;
            reg_yn1 <= 'd0;
            reg_zn1 <= 'd0;
        end
        else if (n1_valid) begin
            reg_xn1 <= xn1;
            reg_yn1 <= yn1;
            reg_zn1 <= zn1;
        end
    end
     
    // step 2  使用状态机循环更新多个M序列发生器
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            MSEQ_control_state <= IDLE;
        end
        else begin
        case (MSEQ_control_state)
            IDLE :      // 默认状态，MSEQ_control控制器不工作
            begin
                MSEQ_din <= 'd0;
                MSEQ_din_valid <= 'd0;
                if (n1_valid)   begin
                    MSEQ_control_state <= MSEQ1_Update;
                end
            end

            // 使用{xn1_0,yn1_0,zn1_0,xn1_1,yn1_1,zn1_1}更新 1 号M序列发生器
            MSEQ1_Update :
            begin
                MSEQ_din_valid <= 'b0000;
                if (xyz_out_num == 'd1 ) begin   // xyz_out_num == 'd1 表示第二组混沌模型计算完成
                                                    // 此时可以使用第一组，第二组混沌模型的输出值来更新1号M序列发生器
                    MSEQ_din <= {reg_xn1[51:3], reg_yn1[51:3], reg_zn1[51:3],xn1[51:3],yn1[51:3],zn1[51:3] };
                    MSEQ_din_valid <= 'b0001;       // 1号M序列发生器输入有效
                                                    // 将MSEQ_din输入至1号M序列发生器
                    MSEQ_control_state <= MSEQ2_Update;
                end
            end

            // // 使用{xn1_2,yn1_2,zn1_2,xn1_3,yn1_3,zn1_3}更新 2 号M序列发生器
            MSEQ2_Update :
            begin
                MSEQ_din_valid <= 'b0000;
                if (xyz_out_num == 'd3 ) begin      // xyz_out_num == 'd3 表示第四组混沌模型计算完成
                                                    // 此时可以使用第三组，第四组混沌模型的输出值来更新1号M序列发生器
                    MSEQ_din <= {reg_xn1[51:3], reg_yn1[51:3], reg_zn1[51:3],xn1[51:3],yn1[51:3],zn1[51:3] };
                    MSEQ_din_valid <= 'b0010;       // 2号M序列发生器输入有效
                    MSEQ_control_state <= MSEQ3_Update;
                end
            end

            // 使用{xn1_4,yn1_4,zn1_4,xn1_5,yn1_5,zn1_5}更新 3 号M序列发生器
            MSEQ3_Update :
            begin
                MSEQ_din_valid <= 'b0000;
                if (xyz_out_num == 'd5 ) begin      // xyz_out_num == 'd5 表示第六组混沌模型计算完成
                                                    // 此时可以使用第五组，第六组混沌模型的输出值来更新1号M序列发生器
                    MSEQ_din <= {reg_xn1[51:3], reg_yn1[51:3], reg_zn1[51:3],xn1[51:3],yn1[51:3],zn1[51:3] };
                    MSEQ_din_valid <= 'b0100;       // 3号M序列发生器输入有效
                    MSEQ_control_state <= MSEQ4_Update;
                end
            end

            // 使用{xn1_6,yn1_6,zn1_6,xn1_7,yn1_7,zn1_7}更新 4 号M序列发生器
            MSEQ4_Update :
            begin
                MSEQ_din_valid <= 'b0000;
                if (xyz_out_num == 'd7 ) begin      // xyz_out_num == 'd7 表示第八组混沌模型计算完成
                                                    // 此时可以使用第七组，第八组混沌模型的输出值来更新1号M序列发生器
                    MSEQ_din <= {reg_xn1[51:3], reg_yn1[51:3], reg_zn1[51:3],xn1[51:3],yn1[51:3],zn1[51:3] };
                    MSEQ_din_valid <= 'b1000;       // 4号M序列发生器输入有效
                    MSEQ_control_state <= Update_Wait;
                end
            end


            // 一个迭代周期的M序列更新完成，等待下一个周期到来
            Update_Wait :
            begin
                MSEQ_din_valid <= 'b0000;
                if (xyz_out_num == 'd240) begin     // 混沌方程的迭代周期为242
                                                    // xyz_out_num == 'd240代表第241组混沌参数计算完成，
                                                    // 即将可以进行新一轮的M序列输入参数更新
                    MSEQ_control_state <= MSEQ1_Update;
                end
            end

            default: 
            begin
                MSEQ_control_state <= IDLE;
                MSEQ_din <= 'd0;
                MSEQ_din_valid <= 'd0;
            end
        endcase

        end

    end


endmodule
