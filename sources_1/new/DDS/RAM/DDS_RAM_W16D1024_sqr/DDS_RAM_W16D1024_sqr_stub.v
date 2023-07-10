// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Mar  2 17:30:51 2023
// Host        : SKY-20220622QEG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_prjs/2CH_X1_MEMORISOR/2ch_x1_memorisor_fpga/2ch_x1_memorisor_fpga.srcs/sources_1/chaotic_dds/DDS/RAM/DDS_RAM_W16D1024_sqr/DDS_RAM_W16D1024_sqr_stub.v
// Design      : DDS_RAM_W16D1024_sqr
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module DDS_RAM_W16D1024_sqr(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],d[15:0],clk,we,spo[15:0]" */;
  input [9:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;
endmodule
