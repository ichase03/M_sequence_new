-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Feb  9 16:53:37 2023
-- Host        : SKY-20220622QEG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_prjs/2CH_X1_MEMORISOR/2ch_x1_memorisor_fpga/2ch_x1_memorisor_fpga.srcs/sources_1/chaotic_dds/DDS/RAM/DDS_RAM_W16D1024/DDS_RAM_W16D1024_sim_netlist.vhdl
-- Design      : DDS_RAM_W16D1024
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W16D1024_spram is
  port (
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_RAM_W16D1024_spram : entity is "spram";
end DDS_RAM_W16D1024_spram;

architecture STRUCTURE of DDS_RAM_W16D1024_spram is
  signal qspo_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal ram_reg_0_255_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_0_0_n_0 : STD_LOGIC;
  signal ram_reg_0_255_10_10_n_0 : STD_LOGIC;
  signal ram_reg_0_255_11_11_n_0 : STD_LOGIC;
  signal ram_reg_0_255_12_12_n_0 : STD_LOGIC;
  signal ram_reg_0_255_13_13_n_0 : STD_LOGIC;
  signal ram_reg_0_255_14_14_n_0 : STD_LOGIC;
  signal ram_reg_0_255_15_15_n_0 : STD_LOGIC;
  signal ram_reg_0_255_1_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_2_2_n_0 : STD_LOGIC;
  signal ram_reg_0_255_3_3_n_0 : STD_LOGIC;
  signal ram_reg_0_255_4_4_n_0 : STD_LOGIC;
  signal ram_reg_0_255_5_5_n_0 : STD_LOGIC;
  signal ram_reg_0_255_6_6_n_0 : STD_LOGIC;
  signal ram_reg_0_255_7_7_n_0 : STD_LOGIC;
  signal ram_reg_0_255_8_8_n_0 : STD_LOGIC;
  signal ram_reg_0_255_9_9_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_n_0 : STD_LOGIC;
  signal ram_reg_256_511_10_10_n_0 : STD_LOGIC;
  signal ram_reg_256_511_11_11_n_0 : STD_LOGIC;
  signal ram_reg_256_511_12_12_n_0 : STD_LOGIC;
  signal ram_reg_256_511_13_13_n_0 : STD_LOGIC;
  signal ram_reg_256_511_14_14_n_0 : STD_LOGIC;
  signal ram_reg_256_511_15_15_n_0 : STD_LOGIC;
  signal ram_reg_256_511_1_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_2_2_n_0 : STD_LOGIC;
  signal ram_reg_256_511_3_3_n_0 : STD_LOGIC;
  signal ram_reg_256_511_4_4_n_0 : STD_LOGIC;
  signal ram_reg_256_511_5_5_n_0 : STD_LOGIC;
  signal ram_reg_256_511_6_6_n_0 : STD_LOGIC;
  signal ram_reg_256_511_7_7_n_0 : STD_LOGIC;
  signal ram_reg_256_511_8_8_n_0 : STD_LOGIC;
  signal ram_reg_256_511_9_9_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_n_0 : STD_LOGIC;
  signal ram_reg_512_767_10_10_n_0 : STD_LOGIC;
  signal ram_reg_512_767_11_11_n_0 : STD_LOGIC;
  signal ram_reg_512_767_12_12_n_0 : STD_LOGIC;
  signal ram_reg_512_767_13_13_n_0 : STD_LOGIC;
  signal ram_reg_512_767_14_14_n_0 : STD_LOGIC;
  signal ram_reg_512_767_15_15_n_0 : STD_LOGIC;
  signal ram_reg_512_767_1_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_2_2_n_0 : STD_LOGIC;
  signal ram_reg_512_767_3_3_n_0 : STD_LOGIC;
  signal ram_reg_512_767_4_4_n_0 : STD_LOGIC;
  signal ram_reg_512_767_5_5_n_0 : STD_LOGIC;
  signal ram_reg_512_767_6_6_n_0 : STD_LOGIC;
  signal ram_reg_512_767_7_7_n_0 : STD_LOGIC;
  signal ram_reg_512_767_8_8_n_0 : STD_LOGIC;
  signal ram_reg_512_767_9_9_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_10_10_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_11_11_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_12_12_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_13_13_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_14_14_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_15_15_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_1_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_2_2_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_3_3_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_4_4_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_5_5_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_6_6_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_7_7_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_8_8_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_9_9_n_0 : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute KEEP of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute KEEP of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute KEEP of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute KEEP of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute KEEP of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_255_0_0 : label is 16384;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_255_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_255_0_0 : label is 255;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_255_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_255_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_10_10 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_10_10 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_10_10 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_10_10 : label is 255;
  attribute ram_offset of ram_reg_0_255_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_0_255_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_11_11 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_11_11 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_11_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_11_11 : label is 255;
  attribute ram_offset of ram_reg_0_255_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_0_255_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_12_12 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_12_12 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_12_12 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_12_12 : label is 255;
  attribute ram_offset of ram_reg_0_255_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_0_255_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_13_13 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_13_13 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_13_13 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_13_13 : label is 255;
  attribute ram_offset of ram_reg_0_255_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_0_255_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_14_14 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_14_14 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_14_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_14_14 : label is 255;
  attribute ram_offset of ram_reg_0_255_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_0_255_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_15_15 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_15_15 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_15_15 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_15_15 : label is 255;
  attribute ram_offset of ram_reg_0_255_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_0_255_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_1_1 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_1_1 : label is 255;
  attribute ram_offset of ram_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_255_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_2_2 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_2_2 : label is 255;
  attribute ram_offset of ram_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_255_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_3_3 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_3_3 : label is 255;
  attribute ram_offset of ram_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_255_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_4_4 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_4_4 : label is 255;
  attribute ram_offset of ram_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_255_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_5_5 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_5_5 : label is 255;
  attribute ram_offset of ram_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_255_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_6_6 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_6_6 : label is 255;
  attribute ram_offset of ram_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_255_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_7_7 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_7_7 : label is 255;
  attribute ram_offset of ram_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_255_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_8_8 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_8_8 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_8_8 : label is 255;
  attribute ram_offset of ram_reg_0_255_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_255_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_9_9 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_0_255_9_9 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_9_9 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_9_9 : label is 255;
  attribute ram_offset of ram_reg_0_255_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_0_255_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_0_0 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_0_0 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_0_0 : label is 511;
  attribute ram_offset of ram_reg_256_511_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_256_511_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_10_10 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_10_10 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_10_10 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_10_10 : label is 511;
  attribute ram_offset of ram_reg_256_511_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_256_511_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_11_11 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_11_11 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_11_11 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_11_11 : label is 511;
  attribute ram_offset of ram_reg_256_511_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_256_511_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_12_12 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_12_12 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_12_12 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_12_12 : label is 511;
  attribute ram_offset of ram_reg_256_511_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_256_511_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_13_13 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_13_13 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_13_13 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_13_13 : label is 511;
  attribute ram_offset of ram_reg_256_511_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_256_511_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_14_14 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_14_14 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_14_14 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_14_14 : label is 511;
  attribute ram_offset of ram_reg_256_511_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_256_511_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_15_15 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_15_15 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_15_15 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_15_15 : label is 511;
  attribute ram_offset of ram_reg_256_511_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_256_511_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_1_1 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_1_1 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_1_1 : label is 511;
  attribute ram_offset of ram_reg_256_511_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_256_511_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_2_2 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_2_2 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_2_2 : label is 511;
  attribute ram_offset of ram_reg_256_511_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_256_511_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_3_3 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_3_3 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_3_3 : label is 511;
  attribute ram_offset of ram_reg_256_511_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_256_511_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_4_4 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_4_4 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_4_4 : label is 511;
  attribute ram_offset of ram_reg_256_511_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_256_511_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_5_5 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_5_5 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_5_5 : label is 511;
  attribute ram_offset of ram_reg_256_511_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_256_511_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_6_6 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_6_6 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_6_6 : label is 511;
  attribute ram_offset of ram_reg_256_511_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_256_511_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_7_7 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_7_7 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_7_7 : label is 511;
  attribute ram_offset of ram_reg_256_511_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_256_511_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_8_8 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_8_8 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_8_8 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_8_8 : label is 511;
  attribute ram_offset of ram_reg_256_511_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_256_511_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_9_9 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_256_511_9_9 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_9_9 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_9_9 : label is 511;
  attribute ram_offset of ram_reg_256_511_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_256_511_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_0_0 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_0_0 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_0_0 : label is 767;
  attribute ram_offset of ram_reg_512_767_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_512_767_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_10_10 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_10_10 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_10_10 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_10_10 : label is 767;
  attribute ram_offset of ram_reg_512_767_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_512_767_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_11_11 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_11_11 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_11_11 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_11_11 : label is 767;
  attribute ram_offset of ram_reg_512_767_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_512_767_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_12_12 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_12_12 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_12_12 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_12_12 : label is 767;
  attribute ram_offset of ram_reg_512_767_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_512_767_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_13_13 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_13_13 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_13_13 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_13_13 : label is 767;
  attribute ram_offset of ram_reg_512_767_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_512_767_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_14_14 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_14_14 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_14_14 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_14_14 : label is 767;
  attribute ram_offset of ram_reg_512_767_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_512_767_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_15_15 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_15_15 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_15_15 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_15_15 : label is 767;
  attribute ram_offset of ram_reg_512_767_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_512_767_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_1_1 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_1_1 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_1_1 : label is 767;
  attribute ram_offset of ram_reg_512_767_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_512_767_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_2_2 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_2_2 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_2_2 : label is 767;
  attribute ram_offset of ram_reg_512_767_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_512_767_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_3_3 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_3_3 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_3_3 : label is 767;
  attribute ram_offset of ram_reg_512_767_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_512_767_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_4_4 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_4_4 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_4_4 : label is 767;
  attribute ram_offset of ram_reg_512_767_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_512_767_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_5_5 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_5_5 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_5_5 : label is 767;
  attribute ram_offset of ram_reg_512_767_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_512_767_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_6_6 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_6_6 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_6_6 : label is 767;
  attribute ram_offset of ram_reg_512_767_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_512_767_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_7_7 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_7_7 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_7_7 : label is 767;
  attribute ram_offset of ram_reg_512_767_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_512_767_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_8_8 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_8_8 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_8_8 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_8_8 : label is 767;
  attribute ram_offset of ram_reg_512_767_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_512_767_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_9_9 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_512_767_9_9 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_9_9 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_9_9 : label is 767;
  attribute ram_offset of ram_reg_512_767_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_512_767_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_0_0 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_0_0 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_0_0 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_768_1023_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_10_10 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_10_10 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_10_10 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_10_10 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_768_1023_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_11_11 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_11_11 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_11_11 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_11_11 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_768_1023_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_12_12 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_12_12 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_12_12 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_12_12 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_768_1023_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_13_13 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_13_13 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_13_13 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_13_13 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_768_1023_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_14_14 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_14_14 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_14_14 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_14_14 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_768_1023_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_15_15 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_15_15 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_15_15 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_15_15 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_768_1023_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_1_1 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_1_1 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_1_1 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_768_1023_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_2_2 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_2_2 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_2_2 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_768_1023_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_3_3 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_3_3 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_3_3 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_768_1023_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_4_4 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_4_4 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_4_4 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_768_1023_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_5_5 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_5_5 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_5_5 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_768_1023_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_6_6 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_6_6 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_6_6 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_768_1023_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_7_7 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_7_7 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_7_7 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_768_1023_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_8_8 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_8_8 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_8_8 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_8_8 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_768_1023_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_9_9 : label is 16384;
  attribute RTL_RAM_NAME of ram_reg_768_1023_9_9 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_9_9 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_9_9 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_768_1023_9_9 : label is 9;
begin
  spo(15 downto 0) <= \^spo\(15 downto 0);
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(10),
      Q => qspo_int(10),
      R => '0'
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(11),
      Q => qspo_int(11),
      R => '0'
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(12),
      Q => qspo_int(12),
      R => '0'
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(13),
      Q => qspo_int(13),
      R => '0'
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(14),
      Q => qspo_int(14),
      R => '0'
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(15),
      Q => qspo_int(15),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(7),
      Q => qspo_int(7),
      R => '0'
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(8),
      Q => qspo_int(8),
      R => '0'
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(9),
      Q => qspo_int(9),
      R => '0'
    );
ram_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"39C14A0D83AAB9F2990D059A7A599AB3E6C9B1B6276E23C582EF9D72FD5FCD2B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_0_255_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => we,
      I1 => a(8),
      I2 => a(9),
      O => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFF00007FFE003FF007F807F80FE07F03F03F03E07C0F83F07C1F07C1"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_0_255_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFF8000003FFFF80007FFF0007FFC003FFC007FF003FF801FF801"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_0_255_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFC000000007FFFFFF8000003FFFFF800003FFFFE00001"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_0_255_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFC0000000001"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_0_255_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000000000000000001"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_0_255_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_0_255_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"891C48E0388423B896E0D83E41BC3DD2F0B3D17A305F62B9435FD4FCAB3FF1CD"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_0_255_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"D9BECDF428DF628265F4142997D42BE60582B1A9C53FB67E693FE6AA670001F1"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_0_255_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"EC809BF967151CD606AC1967E54C32AE06D671CD53003B55270007334A5554AB"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_0_255_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F12A47FE4AB300E4AD9C1E4AACC3C334ADB1F1F19A5569331F0007C38C6666CD"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_0_255_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FE336AAAD98F00F8C9294AD99C3FFC38C9255B54B6CCE70F00FFF803F07878F1"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_0_255_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFC38CCC92D5AA55A49B39C783FFFFC0F1C66266DB694A55AAAAAAA9552AD5AB"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_0_255_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFC0F0F1CE63366C92DAD6AD5555555AB52D6D24924D933666666673319CC67"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_0_255_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFF00FE0F83C78F1CE318CE6666666CD9B649B6DB6925A4B4B4B4A5A5296B5"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_0_255_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFF000FFC07F01F03E0F078787870E1C78E38E38E39C738C738C639CE739"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_0_255_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A967F57E9D73EE834788EDC8DB1B26CF9AB334BCB34161329F3AAB8360A50738"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_256_511_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => we,
      O => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"07C1F07C1F83E07C0F81F81F81FC0FE03FC03FC01FF800FFFC0001FFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_256_511_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"003FF003FF801FFC007FF8007FFC001FFFC0003FFFF8000003FFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_256_511_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000FFFFF800003FFFFF8000003FFFFFFC000000007FFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_256_511_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000007FFFFFFFFFF80000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_256_511_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_256_511_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_256_511_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"671FF9AA7E57F5853A8DF418BD179A1E97787B04F8360ED23B8842380E247123"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_256_511_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"1F0001CCAACFF92CFCDBF9472B1A8340CFA857D328505F4C828DF6285F66FB37"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_256_511_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"AA5554A599C001C955B80195671CD6C0EA98654FCD306AC0D67151CD3FB2026F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_256_511_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"66CCCC6387C001F1992D54B31F1F1B6A5987866AA4F0736A4E019AA4FFC4A91F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_256_511_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"1E3C3C1F803FFE01E1CE66DA55B54926387FF87336A529263E01E336AAAD98FF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_256_511_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"AB56A9552AAAAAAB54A52DB6CC8CC71E07FFFF83C739B24B54AB5692666387FF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_256_511_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"CC673199CCCCCCCD9936492496D695AB55555556AD6B6926CD98CE71E1E07FFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_256_511_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"5AD294B4A5A5A5A4B492DB6DB24DB366CCCCCCCE6318E71E3C783E0FE01FFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_256_511_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"39CE738C639C639C738E38E38E3C70E1C3C3C3C1E0F81F01FC07FE001FFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_256_511_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"C63EB5F27C55460D66F2FA6585A6654C19364E49D891DC3A7D10628D02A032D4"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_512_767_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => we,
      O => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000FFFF8001FFC00FF807F807F01F80FC0FC0FC1F83F07C0F83E0F83E"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_512_767_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000007FFFFFC00007FFF8000FFF8003FFC003FF800FFC007FE007FE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_512_767_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000003FFFFFFFF80000007FFFFFC000007FFFFC00001FFFFE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_512_767_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000007FFFFFFFFFFFFC00000000003FFFFFFFFFE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_512_767_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFE"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_512_767_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000001"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_512_767_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"76E3B71FC77BDC47691F27C1BE43C22D0F4C2E85CFA09D46BCA02B0354C00E32"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_512_767_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"2641320BD7209D7D9A0BEBD6682BD419FA7D4E563AC0498196C0195598FFFE0E"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_512_767_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"137F640698EAE329F953E6981AB3CD51F9298E32ACFFC4AAD8FFF8CCB5AAAB54"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_512_767_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0ED5B801B54CFF1B5263E1B5533C3CCB524E0E0E65AA96CCE0FFF83C73999932"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_512_767_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"01CC95552670FF0736D6B52663C003C736DAA4AB493318F0FF0007FC0F87870E"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_512_767_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"003C73336D2A55AA5B64C6387C00003F0E399D992496B5AA55555556AAD52A54"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_512_767_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0003F0F0E319CC9936D252952AAAAAAA54AD292DB6DB26CC99999998CCE63398"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_512_767_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000FF01F07C3870E31CE731999999932649B6492496DA5B4B4B4B5A5AD694A"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_512_767_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000FFF003F80FE0FC1F0F8787878F1E3871C71C71C638C738C739C6318C6"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_512_767_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"56980A81628C117CB877123724E4D930654CCB434CBE9ECD60C5547C9F5AF8C6"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_768_1023_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => we,
      I1 => a(8),
      I2 => a(9),
      O => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F83E0F83E07C1F83F07E07E07E03F01FC03FC03FE007FF0003FFFE0000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_768_1023_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFC00FFC007FE003FF8007FF8003FFE0003FFFC00007FFFFFC00000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_768_1023_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFF000007FFFFC000007FFFFFC0000003FFFFFFFF800000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_768_1023_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFF800000000007FFFFFFFFFFFFC00000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_768_1023_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_768_1023_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_768_1023_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"98E0065581A80A7AC5720BE742E865E1688784FB07C9F12DC477BDC7F1DB8EDC"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_768_1023_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"E0FFFE33553006D3032406B8D4E57CBF3057A82CD7AFA0B37D7209D7A09904C8"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_768_1023_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"55AAAB5A663FFE36AA47FE6A98E3293F15679AB032CF953F298EAE32C04DFD90"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_768_1023_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"9933339C783FFE0E66D2AB4CE0E0E495A67879955B0F8C95B1FE655B003B56E0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_768_1023_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"E1C3C3E07FC001FE1E319925AA4AB6D9C780078CC95AD6D9C1FE1CC955526700"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_768_1023_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"54A956AAD5555554AB5AD249337338E1F800007C38C64DB4AB54A96D999C7800"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_768_1023_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"3398CE663333333266C9B6DB69296A54AAAAAAA9529496D93267318E1E1F8000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_768_1023_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A52D6B4B5A5A5A5B4B6D24924DB24C99333333319CE718E1C387C1F01FE00000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_768_1023_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"C6318C739C639C638C71C71C71C38F1E3C3C3C3E1F07E0FE03F801FFE0000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_768_1023_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_0_0_n_0,
      I1 => ram_reg_512_767_0_0_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_0_0_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_0_0_n_0,
      O => \^spo\(0)
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_10_10_n_0,
      I1 => ram_reg_512_767_10_10_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_10_10_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_10_10_n_0,
      O => \^spo\(10)
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_11_11_n_0,
      I1 => ram_reg_512_767_11_11_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_11_11_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_11_11_n_0,
      O => \^spo\(11)
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_12_12_n_0,
      I1 => ram_reg_512_767_12_12_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_12_12_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_12_12_n_0,
      O => \^spo\(12)
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_13_13_n_0,
      I1 => ram_reg_512_767_13_13_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_13_13_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_13_13_n_0,
      O => \^spo\(13)
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_14_14_n_0,
      I1 => ram_reg_512_767_14_14_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_14_14_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_14_14_n_0,
      O => \^spo\(14)
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_15_15_n_0,
      I1 => ram_reg_512_767_15_15_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_15_15_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_15_15_n_0,
      O => \^spo\(15)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_1_1_n_0,
      I1 => ram_reg_512_767_1_1_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_1_1_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_1_1_n_0,
      O => \^spo\(1)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_2_2_n_0,
      I1 => ram_reg_512_767_2_2_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_2_2_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_2_2_n_0,
      O => \^spo\(2)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_3_3_n_0,
      I1 => ram_reg_512_767_3_3_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_3_3_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_3_3_n_0,
      O => \^spo\(3)
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_4_4_n_0,
      I1 => ram_reg_512_767_4_4_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_4_4_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_4_4_n_0,
      O => \^spo\(4)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_5_5_n_0,
      I1 => ram_reg_512_767_5_5_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_5_5_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_5_5_n_0,
      O => \^spo\(5)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_6_6_n_0,
      I1 => ram_reg_512_767_6_6_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_6_6_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_6_6_n_0,
      O => \^spo\(6)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_7_7_n_0,
      I1 => ram_reg_512_767_7_7_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_7_7_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_7_7_n_0,
      O => \^spo\(7)
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_8_8_n_0,
      I1 => ram_reg_512_767_8_8_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_8_8_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_8_8_n_0,
      O => \^spo\(8)
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_9_9_n_0,
      I1 => ram_reg_512_767_9_9_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_9_9_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_9_9_n_0,
      O => \^spo\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth is
begin
\gen_sp_ram.spram_inst\: entity work.DDS_RAM_W16D1024_spram
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(15 downto 0) => d(15 downto 0),
      spo(15 downto 0) => spo(15 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 15 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1024;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is "kintex7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is "DDS_RAM_W16D1024.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is 16;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end DDS_RAM_W16D1024_dist_mem_gen_v8_0_13;

architecture STRUCTURE of DDS_RAM_W16D1024_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.DDS_RAM_W16D1024_dist_mem_gen_v8_0_13_synth
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(15 downto 0) => d(15 downto 0),
      spo(15 downto 0) => spo(15 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W16D1024 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DDS_RAM_W16D1024 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DDS_RAM_W16D1024 : entity is "DDS_RAM_W16D1024,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DDS_RAM_W16D1024 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DDS_RAM_W16D1024 : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end DDS_RAM_W16D1024;

architecture STRUCTURE of DDS_RAM_W16D1024 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintex7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 10;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1024;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "DDS_RAM_W16D1024.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 16;
begin
U0: entity work.DDS_RAM_W16D1024_dist_mem_gen_v8_0_13
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(15 downto 0) => d(15 downto 0),
      dpo(15 downto 0) => NLW_U0_dpo_UNCONNECTED(15 downto 0),
      dpra(9 downto 0) => B"0000000000",
      i_ce => '1',
      qdpo(15 downto 0) => NLW_U0_qdpo_UNCONNECTED(15 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(15 downto 0) => NLW_U0_qspo_UNCONNECTED(15 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(15 downto 0) => spo(15 downto 0),
      we => we
    );
end STRUCTURE;
