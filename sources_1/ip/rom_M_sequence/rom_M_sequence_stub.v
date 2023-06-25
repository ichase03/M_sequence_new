// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun  9 17:03:16 2023
// Host        : TataEverglow running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top rom_M_sequence -prefix
//               rom_M_sequence_ rom_M_sequence_stub.v
// Design      : rom_M_sequence
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module rom_M_sequence(clka, addra, douta, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[10:0],douta[17:0],clkb,addrb[10:0],doutb[17:0]" */;
  input clka;
  input [10:0]addra;
  output [17:0]douta;
  input clkb;
  input [10:0]addrb;
  output [17:0]doutb;
endmodule
