-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Mar  2 17:32:27 2023
-- Host        : SKY-20220622QEG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_prjs/2CH_X1_MEMORISOR/2ch_x1_memorisor_fpga/2ch_x1_memorisor_fpga.srcs/sources_1/chaotic_dds/DDS/RAM/DDS_RAM_W16D1024_tri/DDS_RAM_W16D1024_tri_stub.vhdl
-- Design      : DDS_RAM_W16D1024_tri
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DDS_RAM_W16D1024_tri is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end DDS_RAM_W16D1024_tri;

architecture stub of DDS_RAM_W16D1024_tri is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[9:0],d[15:0],clk,we,spo[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_13,Vivado 2019.2";
begin
end;
