-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Feb  8 16:34:41 2023
-- Host        : TimZou running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/fpga_git/2CH_X1_MEMORISOR3/2ch_x1_memorisor_fpga/2ch_x1_memorisor_fpga.runs/DDS_RAM_W8D1024_synth_1/DDS_RAM_W8D1024_sim_netlist.vhdl
-- Design      : DDS_RAM_W8D1024
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tffg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W8D1024_spram is
  port (
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_RAM_W8D1024_spram : entity is "spram";
end DDS_RAM_W8D1024_spram;

architecture STRUCTURE of DDS_RAM_W8D1024_spram is
  signal qspo_int : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal ram_reg_0_255_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_0_0_n_0 : STD_LOGIC;
  signal ram_reg_0_255_1_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_2_2_n_0 : STD_LOGIC;
  signal ram_reg_0_255_3_3_n_0 : STD_LOGIC;
  signal ram_reg_0_255_4_4_n_0 : STD_LOGIC;
  signal ram_reg_0_255_5_5_n_0 : STD_LOGIC;
  signal ram_reg_0_255_6_6_n_0 : STD_LOGIC;
  signal ram_reg_0_255_7_7_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_n_0 : STD_LOGIC;
  signal ram_reg_256_511_1_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_2_2_n_0 : STD_LOGIC;
  signal ram_reg_256_511_3_3_n_0 : STD_LOGIC;
  signal ram_reg_256_511_4_4_n_0 : STD_LOGIC;
  signal ram_reg_256_511_5_5_n_0 : STD_LOGIC;
  signal ram_reg_256_511_6_6_n_0 : STD_LOGIC;
  signal ram_reg_256_511_7_7_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_n_0 : STD_LOGIC;
  signal ram_reg_512_767_1_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_2_2_n_0 : STD_LOGIC;
  signal ram_reg_512_767_3_3_n_0 : STD_LOGIC;
  signal ram_reg_512_767_4_4_n_0 : STD_LOGIC;
  signal ram_reg_512_767_5_5_n_0 : STD_LOGIC;
  signal ram_reg_512_767_6_6_n_0 : STD_LOGIC;
  signal ram_reg_512_767_7_7_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_1_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_2_2_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_3_3_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_4_4_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_5_5_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_6_6_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_7_7_n_0 : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
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
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_255_0_0 : label is 8192;
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
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_1_1 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_1_1 : label is 255;
  attribute ram_offset of ram_reg_0_255_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_255_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_2_2 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_2_2 : label is 255;
  attribute ram_offset of ram_reg_0_255_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_255_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_3_3 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_3_3 : label is 255;
  attribute ram_offset of ram_reg_0_255_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_255_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_4_4 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_4_4 : label is 255;
  attribute ram_offset of ram_reg_0_255_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_255_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_5_5 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_5_5 : label is 255;
  attribute ram_offset of ram_reg_0_255_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_255_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_6_6 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_6_6 : label is 255;
  attribute ram_offset of ram_reg_0_255_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_255_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_0_255_7_7 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_0_255_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_7_7 : label is 255;
  attribute ram_offset of ram_reg_0_255_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_255_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_0_0 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_0_0 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_0_0 : label is 511;
  attribute ram_offset of ram_reg_256_511_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_256_511_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_1_1 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_1_1 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_1_1 : label is 511;
  attribute ram_offset of ram_reg_256_511_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_256_511_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_2_2 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_2_2 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_2_2 : label is 511;
  attribute ram_offset of ram_reg_256_511_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_256_511_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_3_3 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_3_3 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_3_3 : label is 511;
  attribute ram_offset of ram_reg_256_511_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_256_511_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_4_4 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_4_4 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_4_4 : label is 511;
  attribute ram_offset of ram_reg_256_511_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_256_511_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_5_5 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_5_5 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_5_5 : label is 511;
  attribute ram_offset of ram_reg_256_511_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_256_511_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_6_6 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_6_6 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_6_6 : label is 511;
  attribute ram_offset of ram_reg_256_511_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_256_511_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_256_511_7_7 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_256_511_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_256_511_7_7 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_7_7 : label is 511;
  attribute ram_offset of ram_reg_256_511_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_256_511_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_256_511_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_0_0 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_0_0 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_0_0 : label is 767;
  attribute ram_offset of ram_reg_512_767_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_512_767_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_1_1 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_1_1 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_1_1 : label is 767;
  attribute ram_offset of ram_reg_512_767_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_512_767_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_2_2 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_2_2 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_2_2 : label is 767;
  attribute ram_offset of ram_reg_512_767_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_512_767_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_3_3 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_3_3 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_3_3 : label is 767;
  attribute ram_offset of ram_reg_512_767_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_512_767_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_4_4 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_4_4 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_4_4 : label is 767;
  attribute ram_offset of ram_reg_512_767_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_512_767_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_5_5 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_5_5 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_5_5 : label is 767;
  attribute ram_offset of ram_reg_512_767_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_512_767_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_6_6 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_6_6 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_6_6 : label is 767;
  attribute ram_offset of ram_reg_512_767_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_512_767_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_512_767_7_7 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_512_767_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_512_767_7_7 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_7_7 : label is 767;
  attribute ram_offset of ram_reg_512_767_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_512_767_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_512_767_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_0_0 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_0_0 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_0_0 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_768_1023_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_1_1 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_1_1 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_1_1 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_768_1023_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_2_2 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_2_2 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_2_2 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_768_1023_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_3_3 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_3_3 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_3_3 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_768_1023_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_4_4 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_4_4 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_4_4 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_768_1023_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_5_5 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_5_5 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_5_5 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_768_1023_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_6_6 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_6_6 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_6_6 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_768_1023_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute RTL_RAM_BITS of ram_reg_768_1023_7_7 : label is 8192;
  attribute RTL_RAM_NAME of ram_reg_768_1023_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_768_1023_7_7 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_7_7 : label is 1023;
  attribute ram_offset of ram_reg_768_1023_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_768_1023_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_768_1023_7_7 : label is 7;
begin
  spo(7 downto 0) <= \^spo\(7 downto 0);
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
ram_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFF00FE0783C3871C739CE6733332664D936492492496D2DA5A5A5AD29694A"
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
ram_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFF0007FC03F81F83E0F87C3C3C7871E3871C71C718E31C639C631CE718C"
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
      INIT => X"FFFFFFFFFF80003FFE003FF007FC03F807E03F81F81F81F03E07C1F83E0F81F0"
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
      INIT => X"FFFFFFFFFFFFFFC000003FFFF80003FFF8003FFE001FFE003FF801FFC00FFE00"
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
      INIT => X"FFFFFFFFFFFFFFFFFFFFC000000003FFFFFFC000001FFFFFC00001FFFFF00000"
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
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000001FFFFFFFFFFE0000000000"
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
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000"
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
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_0_255_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A52D296B4B4B4B696D24924924D9364CC99999CCE739C71C38783C0FE01FFFFF"
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
ram_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"631CE718C738C718E31C71C71C38F1C3C78787C3E0F83F03F807FC001FFFFFFF"
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
      INIT => X"1F03E0F83F07C0F81F03F03F03F80FC03F807FC01FF800FFF80003FFFFFFFFFF"
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
      INIT => X"00FFE007FF003FF800FFF000FFF8003FFF80003FFFF8000007FFFFFFFFFFFFFF"
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
      INIT => X"00001FFFFF000007FFFFF0000007FFFFFF8000000007FFFFFFFFFFFFFFFFFFFF"
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
      INIT => X"0000000000FFFFFFFFFFF00000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
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
      INIT => X"000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
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
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_256_511_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000FF01F87C3C78E38C63198CCCCD99B26C9B6DB6DB692D25A5A5A52D696B5"
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
ram_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFF0007FC03F81F83E0F87C3C3C7871E3871C71C718E31C639C631CE718C"
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
      INIT => X"0000000FFFFFC0007FF801FF803FC03F80FE07F03F03F07E0FC1F83E0FC1F07C"
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
      INIT => X"0000000000003FFFFFF800007FFFC0007FFE000FFF000FFE003FF801FFC00FFC"
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
      INIT => X"00000000000000000007FFFFFFFFC0000001FFFFFF000001FFFFF800003FFFFC"
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
      INIT => X"00000000000000000000000000003FFFFFFFFFFFFF000000000007FFFFFFFFFC"
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
      INIT => X"000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFC"
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
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_512_767_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"5AD2D694B4B4B49692DB6DB6DB26C9B33666663318C638E3C787C3F01FE00001"
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
ram_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"631CE718C738C718E31C71C71C38F1C3C78787C3E0F83F03F807FC001FFFFFFE"
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
      INIT => X"7C1F07E0F83F07E0FC1F81F81FC0FE03F807F803FF003FFC0007FFFFE0000000"
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
      INIT => X"7FE007FF003FF800FFE001FFE000FFFC0007FFFC00003FFFFFF8000000000000"
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
      INIT => X"7FFFF800003FFFFF000001FFFFFF00000007FFFFFFFFC0000000000000000000"
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
      INIT => X"7FFFFFFFFFC00000000001FFFFFFFFFFFFF80000000000000000000000000000"
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
      INIT => X"7FFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000000"
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
      INIT => X"7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_768_1023_7_7_n_0,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W8D1024_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end DDS_RAM_W8D1024_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13_synth is
begin
\gen_sp_ram.spram_inst\: entity work.DDS_RAM_W8D1024_spram
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1024;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is "kintex7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is "DDS_RAM_W8D1024.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is 8;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end DDS_RAM_W8D1024_dist_mem_gen_v8_0_13;

architecture STRUCTURE of DDS_RAM_W8D1024_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
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
\synth_options.dist_mem_inst\: entity work.DDS_RAM_W8D1024_dist_mem_gen_v8_0_13_synth
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_RAM_W8D1024 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of DDS_RAM_W8D1024 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of DDS_RAM_W8D1024 : entity is "DDS_RAM_W8D1024,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of DDS_RAM_W8D1024 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of DDS_RAM_W8D1024 : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end DDS_RAM_W8D1024;

architecture STRUCTURE of DDS_RAM_W8D1024 is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute c_mem_init_file of U0 : label is "DDS_RAM_W8D1024.mif";
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
  attribute c_width of U0 : label is 8;
begin
U0: entity work.DDS_RAM_W8D1024_dist_mem_gen_v8_0_13
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(7 downto 0) => d(7 downto 0),
      dpo(7 downto 0) => NLW_U0_dpo_UNCONNECTED(7 downto 0),
      dpra(9 downto 0) => B"0000000000",
      i_ce => '1',
      qdpo(7 downto 0) => NLW_U0_qdpo_UNCONNECTED(7 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(7 downto 0) => NLW_U0_qspo_UNCONNECTED(7 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(7 downto 0) => spo(7 downto 0),
      we => we
    );
end STRUCTURE;
