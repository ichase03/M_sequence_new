`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/11 15:08:06
// Design Name: 
// Module Name: PRNs_Multiply_K_tb
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


module PRNs_Multiply_K_tb(
    );
    // Parameters
    localparam  OUTPUT_DATA_WIDTH = 16;

    // Ports
    reg     MSEQ_clk         =   0               ;
    reg     MSEQ_rst_n       =   0               ;
    reg     [OUTPUT_DATA_WIDTH - 1:0] MSEQ_output = 'd0;
    reg     [OUTPUT_DATA_WIDTH - 1:0] para_K = 'd0;
    reg     [31:0] DDS_signal = 'h42C80000;
    wire    [31:0] PRNs_x_K  ;
    wire    [31:0] Signal_Send;
    
    PRNs_Multiply_K
    #(
        .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH ) //! 输入的数据位宽
    )
    PRNs_Multiply_K_inst(  
        .MSEQ_clk(MSEQ_clk) ,
        .MSEQ_rst_n(MSEQ_rst_n) ,
        .MSEQ_signal(MSEQ_output),
        .DDS_signal(DDS_signal),
        .para_K(para_K),
        .PRNs_x_K(PRNs_x_K),
        .Signal_Send(Signal_Send )
    );

    initial begin
        begin
        #100 MSEQ_rst_n = 1;    MSEQ_output = 'd1128;para_K = 'd650;
        #1000                   MSEQ_output = 'd111111;para_K = 'd650;
        #1000                   MSEQ_output = 'd111111;para_K = 'd351;
        #1000                   MSEQ_output = 'd18161;para_K = 'd1711;
        #1000 $finish;
        end
    end

    always
    #5  MSEQ_clk = ! MSEQ_clk ;

endmodule
