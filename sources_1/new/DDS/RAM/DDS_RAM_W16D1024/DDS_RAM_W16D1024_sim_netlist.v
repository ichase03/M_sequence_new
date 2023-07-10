// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Feb  9 16:53:37 2023
// Host        : SKY-20220622QEG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_prjs/2CH_X1_MEMORISOR/2ch_x1_memorisor_fpga/2ch_x1_memorisor_fpga.srcs/sources_1/chaotic_dds/DDS/RAM/DDS_RAM_W16D1024/DDS_RAM_W16D1024_sim_netlist.v
// Design      : DDS_RAM_W16D1024
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DDS_RAM_W16D1024,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module DDS_RAM_W16D1024
   (a,
    d,
    clk,
    we,
    spo);
  input [9:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "DDS_RAM_W16D1024.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "kintex7" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "DDS_RAM_W16D1024.mif" *) (* C_MEM_TYPE = "1" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "16" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module DDS_RAM_W16D1024_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [15:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [15:0]spo;
  output [15:0]dpo;
  output [15:0]qspo;
  output [15:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;

  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth
   (spo,
    clk,
    d,
    a,
    we);
  output [15:0]spo;
  input clk;
  input [15:0]d;
  input [9:0]a;
  input we;

  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;

  DDS_RAM_W16D1024_spram \gen_sp_ram.spram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .spo(spo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "spram" *) 
module DDS_RAM_W16D1024_spram
   (spo,
    clk,
    d,
    a,
    we);
  output [15:0]spo;
  input clk;
  input [15:0]d;
  input [9:0]a;
  input we;

  wire [9:0]a;
  wire clk;
  wire [15:0]d;
  (* RTL_KEEP = "true" *) wire [15:0]qspo_int;
  wire ram_reg_0_255_0_0_i_1_n_0;
  wire ram_reg_0_255_0_0_n_0;
  wire ram_reg_0_255_10_10_n_0;
  wire ram_reg_0_255_11_11_n_0;
  wire ram_reg_0_255_12_12_n_0;
  wire ram_reg_0_255_13_13_n_0;
  wire ram_reg_0_255_14_14_n_0;
  wire ram_reg_0_255_15_15_n_0;
  wire ram_reg_0_255_1_1_n_0;
  wire ram_reg_0_255_2_2_n_0;
  wire ram_reg_0_255_3_3_n_0;
  wire ram_reg_0_255_4_4_n_0;
  wire ram_reg_0_255_5_5_n_0;
  wire ram_reg_0_255_6_6_n_0;
  wire ram_reg_0_255_7_7_n_0;
  wire ram_reg_0_255_8_8_n_0;
  wire ram_reg_0_255_9_9_n_0;
  wire ram_reg_256_511_0_0_i_1_n_0;
  wire ram_reg_256_511_0_0_n_0;
  wire ram_reg_256_511_10_10_n_0;
  wire ram_reg_256_511_11_11_n_0;
  wire ram_reg_256_511_12_12_n_0;
  wire ram_reg_256_511_13_13_n_0;
  wire ram_reg_256_511_14_14_n_0;
  wire ram_reg_256_511_15_15_n_0;
  wire ram_reg_256_511_1_1_n_0;
  wire ram_reg_256_511_2_2_n_0;
  wire ram_reg_256_511_3_3_n_0;
  wire ram_reg_256_511_4_4_n_0;
  wire ram_reg_256_511_5_5_n_0;
  wire ram_reg_256_511_6_6_n_0;
  wire ram_reg_256_511_7_7_n_0;
  wire ram_reg_256_511_8_8_n_0;
  wire ram_reg_256_511_9_9_n_0;
  wire ram_reg_512_767_0_0_i_1_n_0;
  wire ram_reg_512_767_0_0_n_0;
  wire ram_reg_512_767_10_10_n_0;
  wire ram_reg_512_767_11_11_n_0;
  wire ram_reg_512_767_12_12_n_0;
  wire ram_reg_512_767_13_13_n_0;
  wire ram_reg_512_767_14_14_n_0;
  wire ram_reg_512_767_15_15_n_0;
  wire ram_reg_512_767_1_1_n_0;
  wire ram_reg_512_767_2_2_n_0;
  wire ram_reg_512_767_3_3_n_0;
  wire ram_reg_512_767_4_4_n_0;
  wire ram_reg_512_767_5_5_n_0;
  wire ram_reg_512_767_6_6_n_0;
  wire ram_reg_512_767_7_7_n_0;
  wire ram_reg_512_767_8_8_n_0;
  wire ram_reg_512_767_9_9_n_0;
  wire ram_reg_768_1023_0_0_i_1_n_0;
  wire ram_reg_768_1023_0_0_n_0;
  wire ram_reg_768_1023_10_10_n_0;
  wire ram_reg_768_1023_11_11_n_0;
  wire ram_reg_768_1023_12_12_n_0;
  wire ram_reg_768_1023_13_13_n_0;
  wire ram_reg_768_1023_14_14_n_0;
  wire ram_reg_768_1023_15_15_n_0;
  wire ram_reg_768_1023_1_1_n_0;
  wire ram_reg_768_1023_2_2_n_0;
  wire ram_reg_768_1023_3_3_n_0;
  wire ram_reg_768_1023_4_4_n_0;
  wire ram_reg_768_1023_5_5_n_0;
  wire ram_reg_768_1023_6_6_n_0;
  wire ram_reg_768_1023_7_7_n_0;
  wire ram_reg_768_1023_8_8_n_0;
  wire ram_reg_768_1023_9_9_n_0;
  wire [15:0]spo;
  wire we;

  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[0]),
        .Q(qspo_int[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[10]),
        .Q(qspo_int[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[11]),
        .Q(qspo_int[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[12]),
        .Q(qspo_int[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[13]),
        .Q(qspo_int[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[14]),
        .Q(qspo_int[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[15]),
        .Q(qspo_int[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[1]),
        .Q(qspo_int[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[2]),
        .Q(qspo_int[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[3]),
        .Q(qspo_int[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[4]),
        .Q(qspo_int[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[5]),
        .Q(qspo_int[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[6]),
        .Q(qspo_int[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[7]),
        .Q(qspo_int[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[8]),
        .Q(qspo_int[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \qspo_int_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(spo[9]),
        .Q(qspo_int[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'h39C14A0D83AAB9F2990D059A7A599AB3E6C9B1B6276E23C582EF9D72FD5FCD2B)) 
    ram_reg_0_255_0_0
       (.A(a[7:0]),
        .D(d[0]),
        .O(ram_reg_0_255_0_0_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ram_reg_0_255_0_0_i_1
       (.I0(we),
        .I1(a[8]),
        .I2(a[9]),
        .O(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFF00007FFE003FF007F807F80FE07F03F03F03E07C0F83F07C1F07C1)) 
    ram_reg_0_255_10_10
       (.A(a[7:0]),
        .D(d[10]),
        .O(ram_reg_0_255_10_10_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFF8000003FFFF80007FFF0007FFC003FFC007FF003FF801FF801)) 
    ram_reg_0_255_11_11
       (.A(a[7:0]),
        .D(d[11]),
        .O(ram_reg_0_255_11_11_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFFFFFFFFC000000007FFFFFF8000003FFFFF800003FFFFE00001)) 
    ram_reg_0_255_12_12
       (.A(a[7:0]),
        .D(d[12]),
        .O(ram_reg_0_255_12_12_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFC0000000001)) 
    ram_reg_0_255_13_13
       (.A(a[7:0]),
        .D(d[13]),
        .O(ram_reg_0_255_13_13_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000001)) 
    ram_reg_0_255_14_14
       (.A(a[7:0]),
        .D(d[14]),
        .O(ram_reg_0_255_14_14_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    ram_reg_0_255_15_15
       (.A(a[7:0]),
        .D(d[15]),
        .O(ram_reg_0_255_15_15_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h891C48E0388423B896E0D83E41BC3DD2F0B3D17A305F62B9435FD4FCAB3FF1CD)) 
    ram_reg_0_255_1_1
       (.A(a[7:0]),
        .D(d[1]),
        .O(ram_reg_0_255_1_1_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'hD9BECDF428DF628265F4142997D42BE60582B1A9C53FB67E693FE6AA670001F1)) 
    ram_reg_0_255_2_2
       (.A(a[7:0]),
        .D(d[2]),
        .O(ram_reg_0_255_2_2_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'hEC809BF967151CD606AC1967E54C32AE06D671CD53003B55270007334A5554AB)) 
    ram_reg_0_255_3_3
       (.A(a[7:0]),
        .D(d[3]),
        .O(ram_reg_0_255_3_3_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'hF12A47FE4AB300E4AD9C1E4AACC3C334ADB1F1F19A5569331F0007C38C6666CD)) 
    ram_reg_0_255_4_4
       (.A(a[7:0]),
        .D(d[4]),
        .O(ram_reg_0_255_4_4_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'hFE336AAAD98F00F8C9294AD99C3FFC38C9255B54B6CCE70F00FFF803F07878F1)) 
    ram_reg_0_255_5_5
       (.A(a[7:0]),
        .D(d[5]),
        .O(ram_reg_0_255_5_5_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'hFFC38CCC92D5AA55A49B39C783FFFFC0F1C66266DB694A55AAAAAAA9552AD5AB)) 
    ram_reg_0_255_6_6
       (.A(a[7:0]),
        .D(d[6]),
        .O(ram_reg_0_255_6_6_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'hFFFC0F0F1CE63366C92DAD6AD5555555AB52D6D24924D933666666673319CC67)) 
    ram_reg_0_255_7_7
       (.A(a[7:0]),
        .D(d[7]),
        .O(ram_reg_0_255_7_7_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S #(
    .INIT(256'hFFFFF00FE0F83C78F1CE318CE6666666CD9B649B6DB6925A4B4B4B4A5A5296B5)) 
    ram_reg_0_255_8_8
       (.A(a[7:0]),
        .D(d[8]),
        .O(ram_reg_0_255_8_8_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFF000FFC07F01F03E0F078787870E1C78E38E38E39C738C738C639CE739)) 
    ram_reg_0_255_9_9
       (.A(a[7:0]),
        .D(d[9]),
        .O(ram_reg_0_255_9_9_n_0),
        .WCLK(clk),
        .WE(ram_reg_0_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'hA967F57E9D73EE834788EDC8DB1B26CF9AB334BCB34161329F3AAB8360A50738)) 
    ram_reg_256_511_0_0
       (.A(a[7:0]),
        .D(d[0]),
        .O(ram_reg_256_511_0_0_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_256_511_0_0_i_1
       (.I0(a[9]),
        .I1(a[8]),
        .I2(we),
        .O(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S #(
    .INIT(256'h07C1F07C1F83E07C0F81F81F81FC0FE03FC03FC01FF800FFFC0001FFFFFFFFFF)) 
    ram_reg_256_511_10_10
       (.A(a[7:0]),
        .D(d[10]),
        .O(ram_reg_256_511_10_10_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S #(
    .INIT(256'h003FF003FF801FFC007FF8007FFC001FFFC0003FFFF8000003FFFFFFFFFFFFFF)) 
    ram_reg_256_511_11_11
       (.A(a[7:0]),
        .D(d[11]),
        .O(ram_reg_256_511_11_11_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S #(
    .INIT(256'h00000FFFFF800003FFFFF8000003FFFFFFC000000007FFFFFFFFFFFFFFFFFFFF)) 
    ram_reg_256_511_12_12
       (.A(a[7:0]),
        .D(d[12]),
        .O(ram_reg_256_511_12_12_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S #(
    .INIT(256'h00000000007FFFFFFFFFF80000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    ram_reg_256_511_13_13
       (.A(a[7:0]),
        .D(d[13]),
        .O(ram_reg_256_511_13_13_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    ram_reg_256_511_14_14
       (.A(a[7:0]),
        .D(d[14]),
        .O(ram_reg_256_511_14_14_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    ram_reg_256_511_15_15
       (.A(a[7:0]),
        .D(d[15]),
        .O(ram_reg_256_511_15_15_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h671FF9AA7E57F5853A8DF418BD179A1E97787B04F8360ED23B8842380E247123)) 
    ram_reg_256_511_1_1
       (.A(a[7:0]),
        .D(d[1]),
        .O(ram_reg_256_511_1_1_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'h1F0001CCAACFF92CFCDBF9472B1A8340CFA857D328505F4C828DF6285F66FB37)) 
    ram_reg_256_511_2_2
       (.A(a[7:0]),
        .D(d[2]),
        .O(ram_reg_256_511_2_2_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'hAA5554A599C001C955B80195671CD6C0EA98654FCD306AC0D67151CD3FB2026F)) 
    ram_reg_256_511_3_3
       (.A(a[7:0]),
        .D(d[3]),
        .O(ram_reg_256_511_3_3_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h66CCCC6387C001F1992D54B31F1F1B6A5987866AA4F0736A4E019AA4FFC4A91F)) 
    ram_reg_256_511_4_4
       (.A(a[7:0]),
        .D(d[4]),
        .O(ram_reg_256_511_4_4_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'h1E3C3C1F803FFE01E1CE66DA55B54926387FF87336A529263E01E336AAAD98FF)) 
    ram_reg_256_511_5_5
       (.A(a[7:0]),
        .D(d[5]),
        .O(ram_reg_256_511_5_5_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'hAB56A9552AAAAAAB54A52DB6CC8CC71E07FFFF83C739B24B54AB5692666387FF)) 
    ram_reg_256_511_6_6
       (.A(a[7:0]),
        .D(d[6]),
        .O(ram_reg_256_511_6_6_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'hCC673199CCCCCCCD9936492496D695AB55555556AD6B6926CD98CE71E1E07FFF)) 
    ram_reg_256_511_7_7
       (.A(a[7:0]),
        .D(d[7]),
        .O(ram_reg_256_511_7_7_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S #(
    .INIT(256'h5AD294B4A5A5A5A4B492DB6DB24DB366CCCCCCCE6318E71E3C783E0FE01FFFFF)) 
    ram_reg_256_511_8_8
       (.A(a[7:0]),
        .D(d[8]),
        .O(ram_reg_256_511_8_8_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S #(
    .INIT(256'h39CE738C639C639C738E38E38E3C70E1C3C3C3C1E0F81F01FC07FE001FFFFFFF)) 
    ram_reg_256_511_9_9
       (.A(a[7:0]),
        .D(d[9]),
        .O(ram_reg_256_511_9_9_n_0),
        .WCLK(clk),
        .WE(ram_reg_256_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'hC63EB5F27C55460D66F2FA6585A6654C19364E49D891DC3A7D10628D02A032D4)) 
    ram_reg_512_767_0_0
       (.A(a[7:0]),
        .D(d[0]),
        .O(ram_reg_512_767_0_0_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_512_767_0_0_i_1
       (.I0(a[8]),
        .I1(a[9]),
        .I2(we),
        .O(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S #(
    .INIT(256'h0000000000FFFF8001FFC00FF807F807F01F80FC0FC0FC1F83F07C0F83E0F83E)) 
    ram_reg_512_767_10_10
       (.A(a[7:0]),
        .D(d[10]),
        .O(ram_reg_512_767_10_10_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S #(
    .INIT(256'h000000000000007FFFFFC00007FFF8000FFF8003FFC003FF800FFC007FE007FE)) 
    ram_reg_512_767_11_11
       (.A(a[7:0]),
        .D(d[11]),
        .O(ram_reg_512_767_11_11_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S #(
    .INIT(256'h000000000000000000003FFFFFFFF80000007FFFFFC000007FFFFC00001FFFFE)) 
    ram_reg_512_767_12_12
       (.A(a[7:0]),
        .D(d[12]),
        .O(ram_reg_512_767_12_12_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S #(
    .INIT(256'h000000000000000000000000000007FFFFFFFFFFFFC00000000003FFFFFFFFFE)) 
    ram_reg_512_767_13_13
       (.A(a[7:0]),
        .D(d[13]),
        .O(ram_reg_512_767_13_13_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFE)) 
    ram_reg_512_767_14_14
       (.A(a[7:0]),
        .D(d[14]),
        .O(ram_reg_512_767_14_14_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000001)) 
    ram_reg_512_767_15_15
       (.A(a[7:0]),
        .D(d[15]),
        .O(ram_reg_512_767_15_15_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h76E3B71FC77BDC47691F27C1BE43C22D0F4C2E85CFA09D46BCA02B0354C00E32)) 
    ram_reg_512_767_1_1
       (.A(a[7:0]),
        .D(d[1]),
        .O(ram_reg_512_767_1_1_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'h2641320BD7209D7D9A0BEBD6682BD419FA7D4E563AC0498196C0195598FFFE0E)) 
    ram_reg_512_767_2_2
       (.A(a[7:0]),
        .D(d[2]),
        .O(ram_reg_512_767_2_2_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'h137F640698EAE329F953E6981AB3CD51F9298E32ACFFC4AAD8FFF8CCB5AAAB54)) 
    ram_reg_512_767_3_3
       (.A(a[7:0]),
        .D(d[3]),
        .O(ram_reg_512_767_3_3_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h0ED5B801B54CFF1B5263E1B5533C3CCB524E0E0E65AA96CCE0FFF83C73999932)) 
    ram_reg_512_767_4_4
       (.A(a[7:0]),
        .D(d[4]),
        .O(ram_reg_512_767_4_4_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'h01CC95552670FF0736D6B52663C003C736DAA4AB493318F0FF0007FC0F87870E)) 
    ram_reg_512_767_5_5
       (.A(a[7:0]),
        .D(d[5]),
        .O(ram_reg_512_767_5_5_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'h003C73336D2A55AA5B64C6387C00003F0E399D992496B5AA55555556AAD52A54)) 
    ram_reg_512_767_6_6
       (.A(a[7:0]),
        .D(d[6]),
        .O(ram_reg_512_767_6_6_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'h0003F0F0E319CC9936D252952AAAAAAA54AD292DB6DB26CC99999998CCE63398)) 
    ram_reg_512_767_7_7
       (.A(a[7:0]),
        .D(d[7]),
        .O(ram_reg_512_767_7_7_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S #(
    .INIT(256'h00000FF01F07C3870E31CE731999999932649B6492496DA5B4B4B4B5A5AD694A)) 
    ram_reg_512_767_8_8
       (.A(a[7:0]),
        .D(d[8]),
        .O(ram_reg_512_767_8_8_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S #(
    .INIT(256'h0000000FFF003F80FE0FC1F0F8787878F1E3871C71C71C638C738C739C6318C6)) 
    ram_reg_512_767_9_9
       (.A(a[7:0]),
        .D(d[9]),
        .O(ram_reg_512_767_9_9_n_0),
        .WCLK(clk),
        .WE(ram_reg_512_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'h56980A81628C117CB877123724E4D930654CCB434CBE9ECD60C5547C9F5AF8C6)) 
    ram_reg_768_1023_0_0
       (.A(a[7:0]),
        .D(d[0]),
        .O(ram_reg_768_1023_0_0_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ram_reg_768_1023_0_0_i_1
       (.I0(we),
        .I1(a[8]),
        .I2(a[9]),
        .O(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S #(
    .INIT(256'hF83E0F83E07C1F83F07E07E07E03F01FC03FC03FE007FF0003FFFE0000000000)) 
    ram_reg_768_1023_10_10
       (.A(a[7:0]),
        .D(d[10]),
        .O(ram_reg_768_1023_10_10_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S #(
    .INIT(256'hFFC00FFC007FE003FF8007FF8003FFE0003FFFC00007FFFFFC00000000000000)) 
    ram_reg_768_1023_11_11
       (.A(a[7:0]),
        .D(d[11]),
        .O(ram_reg_768_1023_11_11_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S #(
    .INIT(256'hFFFFF000007FFFFC000007FFFFFC0000003FFFFFFFF800000000000000000000)) 
    ram_reg_768_1023_12_12
       (.A(a[7:0]),
        .D(d[12]),
        .O(ram_reg_768_1023_12_12_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFF800000000007FFFFFFFFFFFFC00000000000000000000000000000)) 
    ram_reg_768_1023_13_13
       (.A(a[7:0]),
        .D(d[13]),
        .O(ram_reg_768_1023_13_13_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S #(
    .INIT(256'hFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000)) 
    ram_reg_768_1023_14_14
       (.A(a[7:0]),
        .D(d[14]),
        .O(ram_reg_768_1023_14_14_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    ram_reg_768_1023_15_15
       (.A(a[7:0]),
        .D(d[15]),
        .O(ram_reg_768_1023_15_15_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h98E0065581A80A7AC5720BE742E865E1688784FB07C9F12DC477BDC7F1DB8EDC)) 
    ram_reg_768_1023_1_1
       (.A(a[7:0]),
        .D(d[1]),
        .O(ram_reg_768_1023_1_1_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'hE0FFFE33553006D3032406B8D4E57CBF3057A82CD7AFA0B37D7209D7A09904C8)) 
    ram_reg_768_1023_2_2
       (.A(a[7:0]),
        .D(d[2]),
        .O(ram_reg_768_1023_2_2_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'h55AAAB5A663FFE36AA47FE6A98E3293F15679AB032CF953F298EAE32C04DFD90)) 
    ram_reg_768_1023_3_3
       (.A(a[7:0]),
        .D(d[3]),
        .O(ram_reg_768_1023_3_3_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h9933339C783FFE0E66D2AB4CE0E0E495A67879955B0F8C95B1FE655B003B56E0)) 
    ram_reg_768_1023_4_4
       (.A(a[7:0]),
        .D(d[4]),
        .O(ram_reg_768_1023_4_4_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'hE1C3C3E07FC001FE1E319925AA4AB6D9C780078CC95AD6D9C1FE1CC955526700)) 
    ram_reg_768_1023_5_5
       (.A(a[7:0]),
        .D(d[5]),
        .O(ram_reg_768_1023_5_5_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'h54A956AAD5555554AB5AD249337338E1F800007C38C64DB4AB54A96D999C7800)) 
    ram_reg_768_1023_6_6
       (.A(a[7:0]),
        .D(d[6]),
        .O(ram_reg_768_1023_6_6_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'h3398CE663333333266C9B6DB69296A54AAAAAAA9529496D93267318E1E1F8000)) 
    ram_reg_768_1023_7_7
       (.A(a[7:0]),
        .D(d[7]),
        .O(ram_reg_768_1023_7_7_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S #(
    .INIT(256'hA52D6B4B5A5A5A5B4B6D24924DB24C99333333319CE718E1C387C1F01FE00000)) 
    ram_reg_768_1023_8_8
       (.A(a[7:0]),
        .D(d[8]),
        .O(ram_reg_768_1023_8_8_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S #(
    .INIT(256'hC6318C739C639C638C71C71C71C38F1E3C3C3C3E1F07E0FE03F801FFE0000000)) 
    ram_reg_768_1023_9_9
       (.A(a[7:0]),
        .D(d[9]),
        .O(ram_reg_768_1023_9_9_n_0),
        .WCLK(clk),
        .WE(ram_reg_768_1023_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[0]_INST_0 
       (.I0(ram_reg_768_1023_0_0_n_0),
        .I1(ram_reg_512_767_0_0_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_0_0_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_0_0_n_0),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[10]_INST_0 
       (.I0(ram_reg_768_1023_10_10_n_0),
        .I1(ram_reg_512_767_10_10_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_10_10_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_10_10_n_0),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[11]_INST_0 
       (.I0(ram_reg_768_1023_11_11_n_0),
        .I1(ram_reg_512_767_11_11_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_11_11_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_11_11_n_0),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[12]_INST_0 
       (.I0(ram_reg_768_1023_12_12_n_0),
        .I1(ram_reg_512_767_12_12_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_12_12_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_12_12_n_0),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[13]_INST_0 
       (.I0(ram_reg_768_1023_13_13_n_0),
        .I1(ram_reg_512_767_13_13_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_13_13_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_13_13_n_0),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[14]_INST_0 
       (.I0(ram_reg_768_1023_14_14_n_0),
        .I1(ram_reg_512_767_14_14_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_14_14_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_14_14_n_0),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[15]_INST_0 
       (.I0(ram_reg_768_1023_15_15_n_0),
        .I1(ram_reg_512_767_15_15_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_15_15_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_15_15_n_0),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[1]_INST_0 
       (.I0(ram_reg_768_1023_1_1_n_0),
        .I1(ram_reg_512_767_1_1_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_1_1_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_1_1_n_0),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[2]_INST_0 
       (.I0(ram_reg_768_1023_2_2_n_0),
        .I1(ram_reg_512_767_2_2_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_2_2_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_2_2_n_0),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[3]_INST_0 
       (.I0(ram_reg_768_1023_3_3_n_0),
        .I1(ram_reg_512_767_3_3_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_3_3_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_3_3_n_0),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[4]_INST_0 
       (.I0(ram_reg_768_1023_4_4_n_0),
        .I1(ram_reg_512_767_4_4_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_4_4_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_4_4_n_0),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[5]_INST_0 
       (.I0(ram_reg_768_1023_5_5_n_0),
        .I1(ram_reg_512_767_5_5_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_5_5_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_5_5_n_0),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[6]_INST_0 
       (.I0(ram_reg_768_1023_6_6_n_0),
        .I1(ram_reg_512_767_6_6_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_6_6_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_6_6_n_0),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[7]_INST_0 
       (.I0(ram_reg_768_1023_7_7_n_0),
        .I1(ram_reg_512_767_7_7_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_7_7_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_7_7_n_0),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[8]_INST_0 
       (.I0(ram_reg_768_1023_8_8_n_0),
        .I1(ram_reg_512_767_8_8_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_8_8_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_8_8_n_0),
        .O(spo[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \spo[9]_INST_0 
       (.I0(ram_reg_768_1023_9_9_n_0),
        .I1(ram_reg_512_767_9_9_n_0),
        .I2(a[9]),
        .I3(ram_reg_256_511_9_9_n_0),
        .I4(a[8]),
        .I5(ram_reg_0_255_9_9_n_0),
        .O(spo[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
