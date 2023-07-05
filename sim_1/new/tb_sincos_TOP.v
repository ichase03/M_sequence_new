`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/15 15:50:08
// Design Name: 
// Module Name: tb_sincos_TOP
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


module tb_sincos_TOP(

    );
	
	localparam  DATA_WIDTH = 64;
	localparam CORDIC_PHASE_WIDTH = 32;
	
	reg clk = 0;
	reg rst_n = 0;
	reg Theta_valid = 0;
	reg [DATA_WIDTH-1:0] Theta;
	
	wire sin_valid;
	wire [DATA_WIDTH-1:0] sin;
	wire cos_valid;
	wire [DATA_WIDTH-1:0] cos;
	
	sincos_TOP 
	#(
		.DATA_WIDTH(DATA_WIDTH), //数据位宽须与 Floating-point IP 数据位宽匹配
		.CORDIC_PHASE_WIDTH(CORDIC_PHASE_WIDTH)  //数据位宽须与 CORDIC IP 数据位宽匹配
	)
	sincos_TOP_inst
	(
		.clk(clk),
		.rst_n(rst_n),

		.Theta_valid(Theta_valid),
		.Theta(Theta),

		.sin_valid(sin_valid),
		.sin(sin),
		.cos_valid(cos_valid),
		.cos(cos)
	);
	
	initial begin
        #200 rst_n = 1;    Theta_valid = 1; 	Theta = 64'h40091EB851EB851F;	// 3.14
		#20  Theta_valid = 0;
        #2000              Theta_valid = 1; 	Theta = 64'hBFF3333333333333;	// -1.2
		#10  Theta_valid = 0;
		#2000              Theta_valid = 1; 	Theta = 64'h402E000000000000;	// 15
        // #1000                   MSEQ_output = 'd111111;para_K = 'd351;
        // #1000                   MSEQ_output = 'd18161;para_K = 'd1711;
        #6000 $finish;
    end

    always
    #5  clk = ! clk ;
	
	
	
	
	
	
	
	
	
	
endmodule
