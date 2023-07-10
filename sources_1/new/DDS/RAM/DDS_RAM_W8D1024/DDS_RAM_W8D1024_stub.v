// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Feb  8 16:34:41 2023
// Host        : TimZou running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/fpga_git/2CH_X1_MEMORISOR3/2ch_x1_memorisor_fpga/2ch_x1_memorisor_fpga.runs/DDS_RAM_W8D1024_synth_1/DDS_RAM_W8D1024_stub.v
// Design      : DDS_RAM_W8D1024
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module DDS_RAM_W8D1024(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],d[7:0],clk,we,spo[7:0]" */;
  input [9:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;
endmodule
