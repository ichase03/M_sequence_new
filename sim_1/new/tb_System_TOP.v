`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/18 21:36:28
// Design Name: 
// Module Name: tb_System_TOP
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


module tb_System_TOP(
    );

    reg clk = 'd1;
    reg rst_n = 'd0;
    wire [31:0] signal_send;

    always #10 clk = !clk;
    // always #20 calcu_ctrl = !calcu_ctrl;

    initial begin
        #2000 rst_n = 'd1;
        #1000000 $finish;
    end

    System_TOP
    #(
        .DATA_WIDTH(64)
    )
    System_TOP_inst
    (
        .clk(clk),
        .rst_n(rst_n),
        .Signal_Send(signal_send)
    );

endmodule
