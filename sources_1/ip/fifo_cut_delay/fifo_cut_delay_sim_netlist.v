// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun  9 17:03:10 2023
// Host        : TataEverglow running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_cut_delay -prefix
//               fifo_cut_delay_ fifo_cut_delay_sim_netlist.v
// Design      : fifo_cut_delay
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_cut_delay,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module fifo_cut_delay
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire clk;
  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire valid;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "1" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "3" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_cut_delay_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
p3xZiM+pyw9zM/gSK5Y5J2VqJeI5RmsQAwuO95k28tTDmZGvwFgvqWjvalD9i+zmCTha/uFnDpyV
K0qGAsmDzQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUWkDDd6XN5jea47iDxgSmU61ydCRWLFTDNMUbu8ZSl+gQRAYHxGTve3nrxiyvBs/E3S/94V2JkG
VFBiu7zBHODWVx8rLWFQITA4yeUlNzq0QQHWUfVdDssfI0Zkum1Ja12/aUZVcFhDbL1jT68asnxm
9hg1A2/ZPpr0i0CchMo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EL8JB/0K3hrKfzwjllVv47bRxgnAbLQjATgRMHs3PKGmCpFv5ZmRmbK1fpvLE0Q3ofzUIa8FNRbc
/4kzUW8eleAi/wyS1nNGG5Wa9cC0c+kE90W6lUUWg2L15mL6VsnzyT33WqZd1cP/2hBxiVDkhZPi
s+P4b5be2FyDB1AyYBMwnD6dTxyt0dT2VqM16fwPRX4QywhfzMGRGGVEuOzLqu+yjz/yelZIWipT
dyhX4V2E4q5XhdnhdHHUqJ/FAucuhhEKQTZ22ouGHbjfhSvdgQ15ACpCoi6v1oR7uDq+9d61pD9H
cIl7cSJ97MIxbvnuN77u/M1ZYEcsIN45dLQU3w==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RHNrVLYQZagZOIf8kdpOYu4Dj/Xi7SBoZO6Jyxfq6oB2APehj+1obBuAMuCHPaFWzacivgU7H1u8
JBlR3ZegFsmIraInUDiDEmXAv62xyluzVQXXifXUnwclYfpfN90jAoVoy0LD/+T24MHfpeqGMyp2
be2ScEJLZCqCFN/IX1fUs96sjjgpKy1BAZconw7lNYgDM+WaVzpVD/4guOsJUm2S9uWcJ81dW2kD
58GgS8+B3sRYzYYnm0nNJZ5haHsm1oU355TSB7UPzWAr6a8Dxu7iK4MvG/owI2uraL/OwkYA6iVO
Kg04vd3GMfPQTBGQjtXujmZQxB2ArJcGMsOiPA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BcqG425s6WNdz20r4dbPqXF8tEHIRp9gIDqPN34JRB/ISwQbpl1jIbOUeO1DoPVznnN8q2Y/RQoT
WHbW/m0xJLrtGupy2euqu8etMyg3IDPNEHFUFF7Hr1mvZCtPTfG7gwEJsKsHDauwVKn9KIXcgcN7
11e0+c1CPoZZhfULbvT2BgF78JudpDXauiqAxrgcWSkSN8CVlfluvaLexrR4bxr/ucG1fx24cqxN
BnboxOojoem/kTvtHLGqbG8dM0dldQdvTKV12wPFM1JgWzTjOZP4ihGBKPlpVmdRcvTmMdG03Ijq
/eSAfEtqeEexZnulOzBbCkZx5DJzQJWzlkAw0A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N4ubZIUNte/pm7kTGLxYXiSi7r4cWvgbg72yqZJ4o/2PK9H3vcRpuwK3CQ3Mg+vPNEYh7VN5CBC9
K0tIdSR2/t8yYyyc5OSrFGYreD8MQ3xiE8WIU9exnW1PnPfUN7Byl/mWK7KkCgZa3ul+Po0bSyc+
Tvr9FHtmrRilApJeYLc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UzJpN/j1tw7ugZ7isYHzbYZ2dhdxG4+mKfJvOaIBfAVC9lTyF+cQWU9ndO2A0Sqpl9SGiwfnZTeb
dbO6RQZholsW2iJzABFtNPqN9QipfNpfexzrZT4IuFISJQ+4dNF52JIxOnLDyiyhavGAUeAQ/QQL
nvrvM3uI/NHVzOqkMzV4JrISESZskceZy1kFo1ins2rrqShKUVoknNcK4JVgXqLMG8aBLNANjN5h
9tWFg7VfNdzADlCBPpTdG+yKhiXy++wbqlHKP8WSr62n0r7w3z6rTSUvoknXfE00+sOmYInOd7vU
EXXzk+ba5dXETRiPLLyIFOdh8eB2jtj0tDAxig==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yxBgJGWNJbVJgzZ4djwTv/YMJOy8Flfm4Ji83Xvb4h4WutWvkhRJXEVs9D/J6db/cjvrqD1RG85d
3BLE9Xp/13zSd0DCbCNAyiW9oL92mDV821OpDl4sHuYTCxn3nGgoh1FbmnbpxWCJyen5G5FEWS0Z
QunNK84mr8mbwQxx9cWabWoYyGACxKPVFyTPHaeJhD5NbKw736Jy6IPqaXiShY+6gQsy5wzbndF0
jIhzcYyLwd7AihASvayLGSugRmFLNPn8Et6BqUaIJd1qN0TNycY+5I0vOfVQyW/msf1orkIpAEvn
CATcbsR7JW5al72hkuTdf/DoHT+0IxdplFI9pw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 63808)
`pragma protect data_block
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
hxDb7xsxTjppEvGWeJqOX0b4AK1q0VtAOg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
