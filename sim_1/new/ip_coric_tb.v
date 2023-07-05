`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/03 16:01:32
// Design Name: 
// Module Name: ip_coric_tb
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


module ip_coric_tb(
    );
	
ip_cordic_sincos cordic_sincos_test (
  .aclk(clk),                                // input wire aclk
  .aresetn(rst_n),                          // input wire aresetn
  .s_axis_phase_tvalid(phase_tvalid),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata(phase_tdata),    // input wire [31 : 0] s_axis_phase_tdata
  .m_axis_dout_tvalid(dout_tvalid),    // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata(dout_tdata)      // output wire [63 : 0] m_axis_dout_tdata
);




endmodule
