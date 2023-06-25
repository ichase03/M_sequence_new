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
33VFoyaU5iaoijafQ+/FxqjoFfIUebgrFPdRJ34gLgE1d4oop+4+RGG9Ji7l5pI1iKkuYFEdzc3Q
05bbn7/CgSwOp4Ow6l6zMy90BG6aZgXsde0hZ3HDq45C1zLAPAsTvsHnKZPzM76Lq5ldIlGw04cg
qu4q9UPhPn8//o8QvWsSRGmQduCJFuVovVvVHsQZitdQf3eRG+Nr6AHdeiMNlU8+d3Hrc5dx8WoI
WO6yjAB0sD2HG8WnGq6wOXWx5TEJGTzn97M0HjvJVWOubMuujO1erXoDBOTyBRdDUZNtrQzXnJuS
VC0D0Knl6Iaa7lAZbbPJ57ngK7vCu2VxvN7JzpitnBR815+tSo4kvP3SyvMvN/doYuVcF6OnIJZa
+6NMZsZ4TPslUeF1KRqnTC3h/xTFA7cUKFsi3rsYrUDtNoZXFKV9Wj3vRV3oHLlGSMA6dZpeQCHw
WnxKVA9rLj8DsLAQPBRjbt8KKX7y0nIKbsM0ESG6TePXUL+q5i01zQOFrG/YZp1esGzJbU+eHbGh
YTY1nT0O935gQebbtNOR7aaxMMCrc3hVPVxOzzczN9vg8/PeVv2aRJTsSdtvrmITjsotMx7Ls4Ih
fk7+OlZgFz2WZFL7q2KO6+ccT7Lr+FSJ6nPdftQ1+KO8vPdSFbw6deuh1IRKfaoVe7Wqp0MNGq/1
Zd1OnPcEZ9TWB59fQnGFWmD7Z52mflw1+Q6crXGas8G3MXhhMKpm3W66K8/BB1Dk2Rb/KVmBxHGu
xE04zFGBRcPYFJTS6eml82Lfu90hjwRiw9N8gXT+VFU8BqUFhPfXhUj3m69cHgUvEKQ8Zn8FJiVa
f8DokCDLpEX5QftpUhPHmaE2MiHtJLevEPl0f1ybmsWJW+AB9a7sbG2JqMq2N3tFUS/tmukq5+KS
+dhZ870qP++Xq3uxNOi3nHHj7xBZs24Mtuspk+mQqxJ6EI4sKKDBm5gFz8GKCxa55p5hoBHucNAX
rwdFU7EKCujwQ+xgaJK4txn0vPODxDfPld8nQ/Z8U/XVbP9d29+2gwPbdLwRnXbGgh0ciagc7oL8
hfHr+xa+rY3Xy1giDp3jW2IB+kkABalEhBKUwXA692OJ5K8GjSfeSOBL3SZw6bhi7nGbRjnMoqme
ciXTVhK/VReLHvigotcW5bnYhzYIV0oMFaqUPAttE4k0TpE/xCsTWyvMVHioPVrju9yBw0du91/z
b81nSI9xyoMdsGxgMiJJcuZPMVI2g1xiElh1IeoR/f6bnNDofhIKJA6qds0retLYna/bb17MPjgI
HH8rG1U5TC6nJEpw0KxHeKv83r1KmjgdyHSQsagb9tmEkZSegjGNrU+jcCGkr1zNHh6TbOCC6kQ3
B1uf6FhBPgqhB62hgWRvZxKxWGNa+r566eqUhbuE4uSQtszo1JD050xmGUxQTx7G0qd7aDTW2AVF
bAfI7V8CECLoV5fsDjp868iJzUlcUj2KfkFjekSF6W78CKefDEp5boHQ3fZKdg5LVa1RO9Pd+/kw
ppv2rwGSIDUNVuqEElGd+gsKO2bDGrnU32dFBbg0pDl8u6woHsuLMnOY3hZuh2aXUIuWCwzHQ2Ku
7rHNEjR/71mqtwUuJyOPcI+IeXpTvFLz+spDmkg+3qQUWsmXnLtnmqtT2lVzmcZSz9KBwtHd+yAC
nrnpyB7mMHTLCGsbSN9lskKzL2MBx3cKw7rSQoOKGm8fiH0oQHuDvMQPtDpcDJlfp+RtF8s0eO2s
vSZ3UJ54eMUAUc2+qk/SW8R5zYaCpzGqeL0blYubUjV23TVK5g3/UYbqE/27NRlNYvDPKkk/w/1G
sJsDox/A10PzW9O5w1VYgLw+tvgXVICKSYTfTvzUX3Yg7u8ZaHySk8wpCgIWgfGw+7eTn2tKy6wt
TWT2SwC+sFw3uxahcq1QHuioFh29zi4oZbsP/i8Iq9hEY2sIzCswmRpWtUEAXvHVBIGGv+49jBe3
8nDrcOum50BeMeyt4EfP+cmi5p/x2TAInfijxPhFZOucOIXZkXvUIqMzgNZk/XxLfizLgwBkMmeH
DQ9rsgsU9Z7r+nYqWwNQtGBzYXbvLHPnHl9hlofjOmgffppPUxh1p/C2XprJnFDRp5I6gYSoJ1xl
OtLFAsAp9UuGqoWNjHrGkhs8XnP7APfKhEFc1pDdqWEGKlthxPzWOjfGZvpyD+BgeuqvFDnZiDvs
76WMlHIeKuKiUzZZxNQ9Gv8SkBZwB2wmSJQb18wwuF+Q/xR5ULN04YeZMOA3x2u/l8FHPB0zq+i4
10M+euYGHxnvgGhLtEnogAkNWFiuQK2twfOefnGtyoM9RJfwXpPq5RypWPK2NMaVcll536DfwPEV
pt7VH1MeOKpJyOo79G4XNFajcEzX57FuyObp7rrcCrvISCRUz5DneNKIFk61mPGH/XBHN98fuODW
C2q73vmLHckw+9d9+ny0dGxg8rxK2OkKF6Ev/oVsHq7X/thXzJaY/S9Q3gR4kpsA6HG0Pk85vbyv
UO2tJgzIhvUc/nKfDQKjHFls64RUdBMyVPQKEOTfHGJhQHaqr49xnzVhI6bW96b+/Sn+3PiM5NsK
Kl3bbSHjbw9pjOd9PU3apFWuTLTRk/u7Ctvu3E/3wnMmYXQgKZbiz3Vidh8lKVCMBEKhLLLL5wHE
5DoEcXmbWHeUVTF0A/9yj+9InEiaBv2YI7X7U7cNcF8zgEo3lkLbN40Evj4NtsUsisPsJ2OJUTjg
3P6VAUFCZHN0oM+qsCe49NbulesRdEaEWoBjCdhW0YXHqCzS8cTPiKXlVC/HYa483lv7pvRSSP7i
gH+PFlXeLgsp+e+AIHJWew21YbyOMIuA52u4w7DDEyOCZs+xuxl1nYdS4jVFloTxNJmFCwtAPCEp
5pFeJ0cN27Uq9rmIgMSjlZIZxP/LRhbeTxioOcBEFXj2sq96IoTvZKrbvDjWvi6/uOW+P996CtJx
8xtS3JqPmlsiikPU5f7gxZMRpav2UEHCHapdI9GYdm4qlMNIN9RQU35/vU7jd10zATlcngXEhk5D
MTAtmTmNzS5ZVX1cr3RS1oX74JOTw8hXCuJQzrCAOW7r28sCNxPiP/zKAhK2D4o3frNJgW2jBkEz
e+CtLuym9TyFaJciCDwXGZWeLe7g9LtSyzxtp225QL9MQBr7wnK/iSWYKn7V4fZLWJq3upGbcdlm
dZreAlZs+bzm6KNI6H0Vi6hWX74yv+qyXDzZ6PpsUonIJ655YOc07pJCepwkBKwcIhAC+gJYusIA
ZmEzlZ2tBB5iExQCXOr7kW3KKaiehiOtBnBXs3I/U2JXSWOUszqgTUpR75lMQcUqYkFYwoiPKkyw
IHhrCUpKYiw9rz11bS3P0ZLT/9TJA6kVzToFwkUBkhEqGlrO3OeUGTV7BVm2HST9se7fse4jObRM
Yi6WWTPxJJ73BUteVtl+6UNw8w5QnuXn9XxslzTj8mmEtS2yw15ceqIAXf363orQjIxbN0Melyfh
vK5HkSHuNIivQfYJCubyjmO5UWSkc+yCnfpnKIV/tLwbVEYGqPjJLADO7ZXJHLBXRt5Ys4Ghzsp+
kKyeGAjRXKiKwxwl2TJgr5jzKXfvjf/WOOYNU9cW9ObzjzNtc+MEgowYvjrwSflpteWCzSs7c9Y/
7VA4HlgEhrsOuYChVkRaFJtL/XSB072YRMZ2eGXxl84sr+DEEAEA3v5tNF5WJZTXKHChhGYqSv/g
8l7MUU06YRKAHouaBcZiia5+vuPj4QVXc+rTE0EDGBDhGeXx1OHBU0hX0F2iIXBgQC7uHwkZKgRM
6kiP0X7kkxSTpheTNICl888TKWREU3AXwfk5LzKhv8EDwTruVQu0Ac4qdNCQrgrhXAeMe2DBjldP
Qu/raJVJL9eBwkGMG1kydJzXD2sp4kIQjO98H3WhhLio2hhBB89UgF+eZNdS8HnShQCBn8u+sRZj
O4D2yzs5rDV41vR6VasPu/atK3hlstiVyqX5OVCkXPda7guTjmOpk+VE23tNyNdMWrLqwdSN+2G/
1u2u69t8AFUok1SdJprkyun1GkivSMkm4Bp+YuGTg1+azt+GlVZkRkQXtz/CLap3LxjnmgdvnCdk
A+6PxhqeuLcSfSaAifMFad6JGa7NzdHSS+7HG3Pl1m/QCAfoq6t7jnSYvIoi3czrnXWv82i29HVR
sXH4MGHA6jq94uEhk+1yqrjOQ1p6P0E7rGfidEOyY8V5cAmmT2w2TqOoczp81XV5pqrphCXVzw/u
sx8ObXJcmPQf/mi4s/an8BLUt/I2UaxCexv+kUQ5vEQFME/rdNgIHILE1VC0OL+0fCA26fX3ZStJ
UrX+RpzkI5y2fT/Z4IpYOdV1WOkwSZbQxqwBEB3D+xB6ezr/KW9y1l2V2Tebr77QUVNVnzyHS9HF
Tyn4QccQwWiYhwnW+drTwIi/1B1kf2xRv/YthmdVz8+SK/F9x+fUtEIgPGKf2Xtsfykjd6kOJoJY
mer3V2ETLaSU2cMW23dFdpxLfkCoVmE4Wqg/nIgBHyooSt9vvSI1b0sYXzAasvLX/58xz8xcrZcb
2GT0ZZt6QyLMLUlHAeI3zS8AxNSiEWrWETWjxatGHvG/QnsRyak40bEPB+8qpQYbMT/aJ9dJ5cZ+
zmFIKW8BOCO7TGIN46GeMVCExkX7BeEebHWbmbe3Bi0ACGOLF5SV2MaQgb8ZxPbELmkhN6H6Lipc
RP7dAxy73T1O2fFMI1kU9ly3dmiTXD3Pb3gQ3rk5hr10VR7L4DJxYXqtANjk4F8S5AH4b6wb7nQG
H5YmNtbRhfSg4A6EekHcVGb7ztdND2iDgwb5Px3inK9aD0GU6nsHW9+a8Z7FzqxNcIFbtLc+b890
A57r57RodUtu68Ooj7ZveD9tLByOlR5cv4X81lhbeoZmqqQXYmW7jGKLjAW7X+5vqBXkKQnAWnK6
1W+SQoxuWPkDylfnS53yCQa5pdXTWyzCVpXOIv4OCk1osxJ50rUVdbto3HVnsMEHBgJ8DU5mVj2y
EfLikQdUHoxOGeg5lX4U2oXUnZGlWtkn+LKptc96LckelehLOB3ARqmpnoSdSbiBlDprPIRGHzrz
w95UjZPoevkukWOj8rayWRtOqHScb92LfOdE60VU5meFX5SPM4NE7MuCsx6M52WDTcuPHNgXa52L
NgOVzHbkRfhaajKFxB+UrfbXCx2Mv4eYPCSiXv5zftEskiRQhHXvul4RNNKyowJcIMzZbaoJJNLu
+c4hRIMcRDXIBf1aUY+iMZm/e+O+A0xkdiRSZL/BZIORNwf939T5tIcKHvQKT9cBuS0Br0BCHuUM
Dn314W9S9LI6m/+CHRuC7CZcYrDiOdegAVWZihlocY6R2aLMzXPFz9TSH8zLlneEjhCIf2tmOeDg
djU2VLqxUajm7zxF5fxZTvutkhLdXV+9Q2rGhAOssmwVHdcYRPgmSgstIEiQlNNAzZbp7OQpUeB4
NU39nFT33H04dEmOTfFfhsbM3PtWiyT7/cAx9aOFcAUeB1ohGKCtOxOaemt3Hnbqz1cnFnLCyhwY
sPDzyCU+YEzNIJBW9fnWuASaVnZx3yub98fORNgyzKCKPFWOf+xJdfi9hlxSYVRWBQf8IbuBhvNV
ksPubX+GYloLOohH1JfqsvNPoYYFvl70VP0t4AZdKE0eEepHhjY5wJA2CusliGj5ut7OwsP0i2XP
J1WSeCQRkepfK8dTLQ41X7I84z0LlnMQUkoyIz4uF8YuYlGMfXTJ8+259dbDTnodQyjCXTJWWLWa
vX86W4kvTj1zNg8xkQDTqJIqksRVehUBstFQN0dgvrZS5BU5EfQDjuu7IVpzUS32IjxofSJrU5/Y
3URGorJp2sog/tNn7T1Kd8K3KMZD2qf9MCGahGvF5eT4U9CgJd++GTqRlnziqYLgie53KyvYjd1u
mrRyb7OhaRt+Z5KkjNFNo0D7Q5kBgM0TcmGO7iDV8y/Adja4IcVozsVfF/dyiZ2+8WX/ZJUP87An
hY+Cxl9fspm0JL8eTt7eE+F6YVHne+liByxoUfLjdcRo1vmvQNL4Gw3SYJntUtyvBML52iMpCf4s
O0/8h7GwrMa5LIWuGIXteo/9lRMtG8jibaYd/ySYDxnNS7ia8PrA0/Ujp2UdBxjIPILH4MjMrGcf
zSojsv12DGrRZ708A4Vv8zA0wWejSGd/m5mKAGImABos6QObxffKN/Qw3ZuwqewypCpX/ala1F1a
haLIR29RzkOg/tKumAzBFmJUKZHncYeuhnRqZPRYmSpL6YUKE1bPxQtYwHtrNZJC/r7YZbNZll5n
Z45ZK/qFGbKv7BRg1bK5iCWzeJml10K/KpcWwegzDyisCclSjsb8sYB1T67ZWZOxC6kxyxxEdQAG
DF4kp2y8+EM8vlPhvW4oaC4Vm4tVE3XCrHThXpivAtT8vy8exG1hfjHZBN4mosZZdCXOCRRiCGRt
elBqnPvmOR0x+/YUbXu3ner5zLcUpWv99FPhBGedgnBoPgW2OhUjNOw20Q3zS5e2hdJbaa733PpI
Dcr1Cj8f1g33pr/3Y+N0JpHZacHsNFzrOcl3IsOrrQvcnK5PJApC6NO7Asd39S7ff88KEGPizZjy
5nFmHG6CGmlqUaNmm+CGVSqwdtYUYRWA/xkaav0bC4rgWn4iQ+ogWSkTIJaYkrEjXhE/N1SThm2I
c18peDKfYySe6fJKehl/+OCaStXycNV0rpTFuXfKEPZdbChJFxAdhuUUHWHCcnMhQ1ApunC+LbIX
IbJMu9Oyt0Xli6BrenecebExpEvCI7W0+/Pm5yaFLrNjvT1KD3Uf2Obpj1+fj1gUpHmOJzXkXEQs
XDpRD79fW7rZLqzIH45HTGOCqv49VHozvdorAl1S+QTeH6SY/+BhdzwLlwOQ0xhMbl0/TXnWgQGj
AhsxaEgVjTgmzqOT5NjyC+8XJIFqMgbQJFgFm00n/R2MZwogOpacCALkcILJ+sRM+8bMWJPXPzSj
J9iYnqUi91806c9IHbBYaiibacaKw+C1Mn+ETyrfCpWPx804RlUr/v+wJcVrdboLSz2XeaBstsun
FAkap+NUTDnfDYvLW5F0jaW2B5HDDo5paSK3gn9+neV8jyWPY6I/iWQSE7FVp1PcmrqzWHHc7RKj
3MGqaNzQz8jO9YRKSBlGnRHTdXpO0mfxScL8ZJCxRr4Ny+hSUsFBrGFrRz/Yws4hiVqSZ2qRYSDa
TWQnNkLMLUZ/xb4xLzRhDgqbEgcTDoZVzZCfRLY2o+oO5+VbjPesj6UHp3VDXFJGHfuISPmFDzdR
u8z3uHN1eaDpuD39Ey/YaDNMII8r5OM9yAJE5cSHgBpeYUg4BQfNYBJCp+nwm0hio+hSffDJDHA1
Ebxrx7WKEgvvD1T73+2mzGztB3TBZpAs+XmS+ctmEQhJUEotOCDNXPbXsTTrWfTJ2GTqWXZq2FGh
zRt5opTVJqnaZ9d5gRyeLuvdxLIxcIvFWIu6SFoT1+ODQqoHk8MicBentHhB8Y2kl6KN5OQVfcLB
ka8NwYaFrbWkgensOHsHace7Lm19MrDlWWOQbuREXuQFf8oB4/IBhD7b47FVD4veOpQy9MN6SCzk
rdHl54c2WvqrpodBZz0Sb3fBdaReeH7xzbj4V6wTSZhtYevm3eAkewT7qAioi0DHoIrTPcoTqG8N
1Lc3C1emllEeVAIEps6ZzhisSxQ1i3lLIbAqhrRVDUG5CH1iouQxvbgYbWW+w7/uGCxZfYXkUGvB
C3HlsFS9gIZ/ntKu9AKrrDJOQ+tbNpjAjJ7jHHD3sKOn8Gu3WXlIDrvwpQuJci7+c3I+xUSA+xSu
MaA2+VDQN1u1lB3WiPCVWc0URB/9GAFVBayuClmE6eTZrBQkzXtIIuk2OPu9dvTOx/Q9NUC31Uu2
WifvWVvn4/IFQdSVIq0Xi/benudxiwf3hXvs2Ji4O6ca2x/bPil1YwZGTm3oP4nBSNWx0JOme4Qv
0gPM7tiZvUXoyJiBKFeboX/QieexTn4gIG8W/7USLmrQGovFxx5Mygsp+sJ68Ojt1sKrycfllY2Y
Hx+/gWrvVIVm0Vw/QH1hxe8/A5FO+yOOBbZegRc+gKAhpceR/iCL02yJ/QgxrTP97z+URRiEOc8D
OLZXzp15VXJOwWkEK5Oq6SGzaZbQVjPBVJAfOFWw8NucOQO6U7B7FsQk1eaRgm2P68dG+aQYYMO/
wgTI2a7fK3o7AH1M6WpT8GMX1hZeoi5F5c3NtkYMRLqkZV0FFn47/TxAwZJW/jUrCqRiKm1jZLW7
p7gA5A9Ow72pWOEqU4xnZ27H9OTkvRTtw/11FteXxitKNy0Tg5mgVCBLc+WBa+7TEsfL/k27lRkN
H3pIGjpLQWWy5WNnFlNyriqRdgRdUxnW7DHq0VaAsI9v4yH8A6OSm9/InvmqUvwWt8W0wtWNRoQB
jSID+7R5yYwoDtkwqeWNj9offBJDyOcRy5QBIU4kVwpQpqCaQrdy66x0RsKBhMswqnQVd1NwFVZd
A3waKk3qwsugEM67+UevZ+YksKg86BWC2Lsq9FoNOOOV2kV19lJQ7wdEBT5HBFWN3rojl7QQHTE5
3IRSjGGRsh7WJIotk2MmVDBVSb8vajXHqLsEvypsIGNyyiSHNifHDAAyvJe+O8Bu26Dku7lwUSdB
LZ3RgSNKxTJTB1nNgXQXPWrZqmUY1MdmzA0UXfgHaa/wwJG0OI01K/yzAiXCGl2MmpLhFt0E0Fdd
ujJwQmkXNgqNfwD1QWqeoWXbOS/mExaw6sH1vW4tFWy5Vp2QLzBjIFUtoahB8Q8DK5FfP9D58JI5
TUG+KKGqU6vpiE2AKUXq5lbRFh78zVCFhsd8cIogv6LH3yNzcpnltWOHzHnRW+6G705+9hxE6Nqr
hN4rpSah3hRbJ59I1KMcP7S8kDZCeHjpBb3lAGDRVy5PKb1cuYH4lXp/Rv1gs1PNSdl6WV1kFzz6
w+J/aNrpW9mqazhaVWcS9IzcxjFBVP2Ff+cQYJYNiiDCcUqfPZOtgpsMPaYob3Isqn43VpXBUF4q
XiMNAoCpTf/+R9NwelBkqBdOc7WO2mfN1C3iseDSms3cRZ/EtwT0zqjaUt5yu62csj6YNpDTlays
mvT0aTjQgWb6ZY0+IGCzLKOhVs/bJqH0U/SelxOBSGC9cibJh2IAenuuTZfPD+0SuK600/HkDtik
CNDIg8eClbzZiBVrhiJZxwvyI0HSWJ87NHZf6zBBmPWfXYqjoVCqeTBmM1bkRQ0opFKhYghpbDLm
QDk1vvwz0KfnLA4i09s3O58x14RU4mIPoQCgAbAAqrZIILDHBTTGkKe6cCSzPhtV5Tb49r1WGfWr
RFTbkVKZOb0dgYab+f6nmau6ROU5oQC8KvLrRBQutGnEVfEG+RiN3YWf4KW/rC2UpZxx+bmiW4uU
l9pv6uwT7UVBG78AGKso1DkzLNbcoho/f43CSs5NnH/LaRIGmonQ6kl9Po2Ey4sy9zkvRlEMfGxR
W3LZFTRN13ONzW6SuQ+vhTanRYw+Yjw5RhvLWrpCHLRevmA0p9qRZTTeNJWjRQzeAhdv8jIwrn+x
6ji4o7EG6vi6y+3Ai2nVB8p0EW7XsgRWJBLGJ/oSyAzfdGdIp0isg/G5llQu3yt/Sie9VbH5pGBp
1EvXmurc5lKr9vaT7A98DKoabIKR8uWxidKVgRNEKK25JYa+e06cmabIPzbwzkGWsUIOtck/2xtT
hcU+yRo+Evfv9iBBFj6CYfmQ13kB4M4sA6XbkBk5EsX77Ts2vpwVbCWMd/hdZEGvX5ZScDYCTLbQ
65e4oSb7J7+kyQaxNFfDTpqmK2DOFrtbEBVshy6e54WdVfYtzZf7a+/5aqGhwU8AmKkQnf8qifrS
isSKPYaq7PNq9N4Fj1R/SLAEvu91sUKw6+QizkZ/lDlkppd576HabtBDwYM8bYVqYgIjUzPYlkHx
nFl9MSXXnqrHXc9tZ/Fe74HuugPxp7kgJ2Gze2wpWOxehp4dKgaMxuXZDfFHtLl/k+IM/ROCERjI
HgtTjavQyEWoXw3XNBG8igly/Ffw549/vCRey7YJ+vWxNYTzFniGveGu93b7adhHwRmg+HgUy5TC
jegK201Iuc7oe9/EOhi1LuZOCw9f83eN9+BYpFNilWS1EYMWP2zfnF49uWBbI844GgggFT87PEE0
/1xXzJposLSNkanfmcpLXTH3tJgX1LGm9vqPZMPOGpitbTlJ/uyUYH1B+6fE2fTuxMLBgcvs6+VY
+iNBv/pfspmzFxY+2LnV//OtVi3npOSAIOJaTxNyyyGB5Q1YggaKKmL0rNpKdWX4u7qpWdUOPG1E
/leEPaB7qxbWDe5ciE+MToBJ7RD0ZVC2+HHl/pJgm1qe0RVAIIqm0qPAaPaV8wRxrU67tthGVGf1
4qmg2/cRea0eVYQH4uGfrp63mVtAhLwjSw9KKkqwZpOKjKcXpSWP0kCBfULKe52ZQR3EJfnLkoLv
Eu+TVOR3O0MovMnVuZNWQXwcsAHm4K0L35+gGGEDyzTyWNekpDjO4I+rGK05JQ5Ny8NPzhYCh+Iz
ghoGb8yw22vV3hR11kXEsTt8kjxceE6pNxrGj8RLdDFa5x8n8A1lSq+YKwNl4wpNd3HJeRpYNb+M
qTvh03dLj5voXVgXIfG8N0p605UFnIznXv1/jh0cIzDAuEfpjq4T6f196H1udvVnmWXHJjSiqKtb
HQ7KJxFfFrgSsRXXDaLPjYKFKIAsn8MmCmsCOKN98bZ1SfOjlKPXdwK3NldtCnaqP+WJ9tERs9o7
EaFoS7VDjHuJ1wMlU/UyrsFg2v2AI23/PcMu2WgOFGXxjcN0XBe08gfnMNMxtrulXyI7HJMTmcTB
ItQ9BxD+YgKks7iXZNdj7X74x1XzgKQVlZRQo2ePXG5PZode3+EkU/x05vnRW2+opqXdJmsQ6htH
hHuG/xaZu37OQmK5pPyN39gvJ7ZN5PS4Tndg2coaAML4qVRdZCUJ7dki0g1fJRAwK+bCXXm3GbTL
I5vG/mBsXJVJvs2elfq3j+Eb4drwArFgrhYA/iOnwJxkCdsYPOsrNOuncVxzHAmmUNBV4uea6Ptw
N3mWw06pCiDLRj8BjntjjZg+l6FmNDq4JrAnTXVugIdm9u6ZlRf77VIfdrHYPv1RB97LkLtOxDzC
371by3C/lU+0EpZCHo5Wzjo2lxC0F/k84icY3v4FfYdUn9kl4v1nra+BzwnAlD+6ODxgGYch7L+0
OoRDip8zGcWHuTJfayvxoXbFpWR9//9BVKgrblaIbR7cqKshW1KKgVNyV8Iuk1CsuJY9hCQLZ8qO
DIMbrYYtf+UwTMg8xGjsdLtP933dZ5l8k0C8Wha8DxxIUMvI+4sV1O2FpkwAVsjRKcAhd2VurDz/
JtUgm8WaTG0JPsU8bujfhhk/9q7OFSpkx0x9DH6HEdgG+uznio4SGfYlxiHKj6x+PlPDFKYbsK7m
bnZMrmS3L96v2WT2nkvYffYSGOfZAkv2Oxgx53HdpcgU+HUMCk1NCX6Z9A/fO8tidwSPKVp03mOl
MdwKiGxiq/W72fh92YFHIUBYL98ZGK7Em253H8l4g/NBTe37p6t09VngiYMh5YJRlknYXzLpV4F4
pl1/dwMnQEt7hureRmm0lMBPTyEFJaFLDfDoY9pJBA9K1rOvZiB44MheoAMr+O2rjLK4u4MZk43w
htkt8bgwNAB7T8onRNyRzYXPJKOkudZpQ0wVriFEAIgnvRraJeGeqNDGLW8w+3D8czYYgjmvxTb7
JaICQv80RnvyCwd0R3DYdroAuf0riNb8Kz9tT2MzRrdQ1JFMlh811A73P/hgu5HVyfjpYm+I4ycO
xrUgrGIfDjx2i9dwmhjyRH9ymgJ6+Tk+hYArwe8tRZyNuZwZ1R/Nd0I7Umn0qkZ0U/V1ghv7ZnFT
LDfH7S73g5UeKiLhVO9EZ5a3kD0Vrv0OWnGqxEbQT1bNxsPAt7lvfl8RZhJacNCGVsSGYXKVkgK/
cBH/4z+7R/uA7ySNigzr60dNnYYeG18ZhuKO6fW78AgquxP619MZ1CMZjEdhMFuyhcUSbMeyCw+f
CJn5Jv4rf6mQs8eZyBcRT4Q7spL+3SrKvBRWCsw2AZRu9WYD33yAjmMZ3ANYZcUd2S2tJvND43fj
trcO2U4JBnK+7xigxU4O5YJzKhELD1IbNqMIzdxmb0xbN1dNee3sERqLJ17l3rmaFoB+SdwiqYKU
875GdrlCtcRyGU08TLArgY3LW+LMa/FJy4c2lcwnnT3kXcKWuwangOQSlHlkvMxQG2at7RO1ikPr
dOLU2sAAwixs0BlwqaskxvJW90aGKWEoWflKc9BMghUW1uzo3W96PMiypk+K6+i30zZviiJH9Pac
Uyi8GLl79IGUJd1+bUL9OrBMzHLX3jMd9YbWUYvN/Tqu8MXWeICPhKCtKagNbXOwddS+acLwzlRX
4UD5WhVtRMOIi88zV4zfLzqgTYHp0WtoCdWE3VUIKcetI5ryRA3ovrvVycZ3WcZbHwo+mE00XGm2
ifvTlBEwDRM3nZgMI3KximJlAs6X2/Y5/VHU68DQ+K9sAhAVUIQatQNiH+BdIj3DZowt+zkx3Uhz
8xk45w18yrlo4RFHogWBJGzzEAKxj+06BDZthVGYOjF/RSVed4k0UBKGbQl42hSmCxSYbfRPCkBR
cnJ/AyB+L2+F3YVNBQxYc8BiV9urfw6FIZfkViigm0lcNayJhVxZ57fOAZz1JHgXF5LFkOGRFquy
HHt/Zai/j2w6kca3mhpqaKcxRKziCEJkSMM+XrHYJup6RiFGgPGpD/s4tyq6DxVQ8SUWbfNgqFcy
vgJtSvgdujYP5T/yA7bfZxfaUHrlojSsBu1mXwFMcD/5nbEExXw3FWiKhRQvqXrAyUaY0U08AWHw
5julfcIcPGsJnZlsNz6SPWp+FoVrj9Dv/xp9yu/R87kdieioxDHTDfXUvf01kb8hPxrYxh1uWizN
RJ8LO1GVr0TfoSr/VbHc7fLbuxOPjifBMaSpYcO+hJvDAZpXvblYEao3aehkqnaIVjSoesIpHo7C
yinkAZbU1zmfpIJRzX3DGtLiSiam6zJmZ949eJbhrncikgooYf3wL0oPYxS3IGiFTylzMOiaMV+T
5MLPZ5o41Ls/AM2OjFi1kufsk/zsxRa/ZoYlK82z6p2Ho+f/aEbYG9Q2vA8Me1LB0fRzYlRtV1HH
fWcI+wUNCMdhRkRw+7HLfd+fYtHwda3nSvbo4lUyWmXjjvEXpPkCxCz0oLc8IN94Ykdrg7MOzCcF
+bL9Sx7XNH+NRZZG6Mi04e22lmMXVeU0bXbcjs9x9MgAHC70molaHhr1mRZvbjOkpkVH+nXAMpC+
JiOUlvdMol5RKpHEQWNRctsdfhlojLVZuM3Zwvck3hXnIoPfnZIH2fYEZ+/zP/KUw86jy/Pdolf2
EMdw4fpVQxfpLdeKgMfdotZhfvq/FiUdGPZbMjCOYoMZE5CXQQ/iwhQ1o8oRyvGBcvri7d5EU14B
ojIqGgvKaW7GdnbWxXfNULKDjPIOhhBHGsIm1n8fAQYJCx/5LAb9daEgMpBbD+nxRk/QwvTtioC3
S2p4rhoV1uStM2yHVEHZEypRqhJWv3Th21ofEJV1sxaZKn7L7MSD2oy5pXELSq9W1beRk4ZJkLKS
oGtuIMPgUsjycZ7MVxZ9WWuOEcHCSIznmX+34Cvsxe+pX5Ia2rquKVPizx9DfWmpON2Z4FVWjfWb
3F/muRNNCjS9HvJmMykyUh3S+Y8BSn7GMivSBsfW69PX5YZezJKycR/pyDNxuOsczr3olznmAwqv
dQgsNfZsnW1sOk5COyuSAY9sOPMokxbg9BloJzElnjOxhEbcOCm/pbxSJJcB7pqES9keh42AWkXL
xHgyIi1+vidBQ3GuaEvgShXDKXxtDoVNisD7Xt9j+LXqUoAFV3khIfCLU8sI+cH9qeu1vuSnjZJe
xxwMQT7MsuzgiugMEi2gQv++dgHrrCrnYcL+hyG1MQAAiB6+SoCT8llmi4SaBzTcppSYMbYZyj1T
1bI+/pK6ifxZ1Y926Q2y/PFo0NnI0CWXlczdfeS1b15jlpwQ66lDPvUz5tVW85UssmrZo4LfpMAa
4IyU1uS6NZRQdDjCdfHs+R7gkqwg6my6xCR28wIoL14m5ioA6E+OOhG/2zYVzVZQESEllOWkCkBP
6mZ2uPYdIkJrbsDfwkF1699LOSGtuTV/781ciT4BU85hz73BacR8bknxjEPvvtuginmd2PziETLd
iWjC2KigOm0Wqv1RlIbTvxBByWqZD3abjbW7OGlUlsE+ha2YFTH1Jnol8o3EsZAw5KVUl38dwFEi
WiWBuRg/sEg4xTe9BSFy+gosqRL3PP2c92Lvxksg2Qy40oR24uTw+fdD4pyljjfayBLFSFBqeQVT
UngoCF9pgO5e5WikY3xEc1w2ftqJBU1gDQL4MQxqPzP5/0wTMFl4J/ZlBrkEhwTZgefOW4s1ywbW
F7kkrajoxrWY3FdoHqGHNTdxXPBoVZ1u1peSmJ4piI7IQW/cpvjZWsfaByVRV9Y9LNpHdAXYT5u8
vH0PB6evmRp0GiR9yeidmbPE8YkAkfutfleis+KSwOVlPsapdHCb1rAAqT1RC4/p2tf0Zn/IEYnV
ZXfA6S25cp4Qt65imkv659LJyLZaFgH0S89Nc7PT0dIlasaWT6iigCfp98S6UiCTZtyzqEupNjM+
muUdKDpiZVLrzxrAhwd1znEhBCHIi6H2qjPD8PYPyc4DsLCd6SnrOcyAxVLzpYwvY0kHcO5OSrua
vlnB7HvSu1/CvxvxCgW5lNFaQ0suuAvcH3zZqcJZW61oNx7BoqkHaAMIC+1XMeWUSiyjXaLSE1sv
+inBqWqMsq6z+l5TCmUJv3RMHc380h7GgNXYpMzIsjdunebRLdncD/btTE4JTa2ZFbyhc3jB5QCK
v3QaIcRnVIGr7XaIIRc+RDU35CQd3X2iomcbvSN7XULuCGK79tXCeY5f34I7xexckWAzJ362x4vf
758+9SIslXMIFATqC3ZzUstJg1yQD0CIq2oYh5UXEX6zX+zAFZIrRmvA+8jWOkXkH1cBCrkxckAa
hJdbXPndfq1KenPWakw3ggr2krPJlK2eBwUKl52xRg6lFCIr9OldKMnaVt0GyMN/moyq/y8BzsCl
yXRGhazXsYQOGLpRoXG0/5Rw0Nktk7ERAM2un04oqkb4PoZqVvr9CdBsPmgW/ayQd+AqmZknR0hJ
uxhCaH88u/YPM7VJek1jdkq/gVYDSEccUKnzJYEsFGXIyskMnZHFzqvnozxZjwtkFSIxNG8rHHP3
wu/0Xo9epxAgaK7QZJtLyPS5CnrWi1crLjFvmiaj8MS0xkM+PuGDHWmdPuku0Yh3VCkC1RgJnT5W
KzRp0pkvvfUwiYFrzTStYWQFDm42d1K9+63T7pz1sNVnPB8+tA7AHZdqtbyym0VUnNIxlYFcI9Y7
pPMURz2vs+u6LPFaKGOtLqwjCSnbb4dpMrVEHDNnOeK8ge9Gs/qmZnTMuBTKsaRmhTzyCcvdHV5g
/dzKhv13GuntoBKSgl9fX9H99lyKOulJ/+98Q2TPK+B+1V1l+HADJ6UB0IS3lCKJ5ATdqlfILDZx
bEbT5pUI1PJSAzdP2/pYsRzvljs1NZ4H6LWyGA2NozZDlazU0Q4m1US4L8QfTZADYVQ9FizEXd2L
v1tCnCpmzNAYUczN6HxlADj20HkSTJJJtI4GPLdKIsZbj5kni4r1JI/K1jyrDoUTIDcCu0eH/rOm
z/7vMUBYV1FSW5Aq+K1ewIbBENXttQUfynTZBtPUJSgQKFXfCIhKTB4QQqQnJQfBXwMHZCw4jcob
cLOigWtS+ud2B3pSFckw1US61Z/f8HsqRfwMUAKm12FJGGhV5um31f0kwbp00OSkFcDVsMd2WwtP
aEkkYAUhQM817aUDmTXwqZK2KjsS1h3swvvlAfiQ1CidT0BeqLKBCLb/kMqGfKxFycdcD9iLWSsq
SDibTjbzYj6KYtfJpKfph2TQThR8ga+WKNSNHWzuukGn7VIIISuPE7/dckiSNjLz+792XDkw+aTF
iq1o28W7UCwPJav8nARNxvQEwAcFgajIUdgVzv9pgU6pSt/OyD1V5NXNh1+8tuLHIG4hTZs8QQ7b
cJAx0rGUWEoMh/lWOojbn6LDBkymaUFaErkBt+GRNtCIr+WGqeM7aeEDxN1n5j6giAEdWRkID/bv
kCeDxFu24Cm9SAfbeffjCG6iIgKKm+mE8INQkfbIY3i9qxOz/T/KHrVxtoCUhke1rVyUCs5e0E4g
AhrTkS/xuK/m7cFg7ORnXJhqI4qcPAs/ILg/x5C7pLPL5y3g+cUooTiZIhldcrmOFRdHtXQyb4oT
pPEwkGtszNAeiW5Ippqcog7wj/KVJHCCcMwcnkC711+5fmcg2wyHCWx59AbfrKQ0bIfNZS2F5qop
yC+seuXJR46/KfF5xeFL5B3NxPz3eYQBPOLWetSVbYXgycjsA4fraXTh95kFsuf69e8gyOpFa36y
sFXEyQiOILb0cwPo6Yam47ZQQdG5R82FTYRsZJ93lxYGvnMTZbFLLfCfxop84qxqJL/AYzYltMfl
QdBhZS7PRK/5Acqv1gwEbg/JWvuu27BfyXqpj9pYAclVaC2Ke5q+gtBoVEoHEwFdS5YEvleb8YI9
jhsM3R/90Izw2OlgDVRNG5Y8dfbvwh1MvWU5WG3FWiXcTcyZF/L1FKQowh1iKowu2hrXYDcrXexb
xCVX8gCgsZn0jnwg7vuD+hdKgyYGkc0L6RL6cIOjr5q7Zdpkh3cE+lgRL03u2YkzFy23dfw0Kvcm
CB7h3dK6QCS+LXagpGzub14VvE1cgwQxXPlprObB99/5CjV8aszwkJ47lfHgFIv44BrQ1T2VVQQP
BDA2WaaJkctU1u0f4XCWRFL1giL4ucywcYniV7gv4uxG70u9s1Rq59ItmhvnfWIi6o4bObiUIXi7
r6cTcTRNNj2ri7t/ha/rj/8wCAUpSP+4BtAuk/kWj5tqVTHtBgJsiAk9qtCYBvqx0D/p1KRmlXbV
2LV95L4tVPOoETON/oW33LAeFxIh0Eh7mxwBJJF92qspSaKiS1acgjMTXswdzXPEmBlXUqC5133Q
3rej4b711cRTGSSXEuIwsN/ZGsPMbpwl4OL4DNtWfcytYbCnafVWf446Yfqq1aZmtOzqiogwEsH/
7FP2eA9NjvH3d+WBO8XoeAi3iTKJzx6rOhPGiJ8obd4lnWFqLW8Xc+WLae66Y9ddLP/wM7du9gCR
vFkRRzfgwpcnsnfBPznA6qMQVZYuHSKegF9dsi7SHk0CeDkAyUH76vsdolC9J7VQMc7wZhqBQlKh
WYmnZzBry0jcdTSXicVOstxjPb452PIfv54GRiNf3jvzc70hPFlBpXDPmVxJMFfn4S8OUbfTl1ue
3gKtYgwBZ4x5ytW0PQwm/UPeIRyBCalFVKKiHvPJ3AWSN4PdqFBiwbBreJzePAxZ642IKILR11I1
DCajxhD1kjltlj+D2huEXY8iG80NbtOfG8zIxV9JgTjfT5dNoJ9btjQD/E11nST8b7e6WddJkovp
3d99IyUbwaboJqTTEJ2847OGhg4UBwaHCK+2EVsFDeRly5Dp3K4aAb7zc87dKa2mPoMQ0Bg7TgXW
Yj2nU+kuzwdPJjWhb1AmSkfGDM54mU7ZSkqeEnMyABFkp42T0+nCB/MNdnfHAO6aD66FZb8OKeAX
U+D35PIb+fu4IQeyzAFkOSmnwJ2mJFPARg8pJ8tA/Kz1tqH6agH/r4+VSPSBQwun8MhpN8AeDXxn
m7MvVufk3lcoZyLd0CO+VS9Q0joNPId1o/yAm8ypDSJl0WiQzH8RsV3ZTnMZK8DXg4nCIzJ+tWNi
jW4adOfEvBdV+4VYqYTEeOrhv6TEPiLmneieJP3HXUlx+w4g/bbZyjkSz2JvGQVF7NTwdhAyIkKF
4Dq4g2oRMACmT9I/N0c5h76ScR1kzXzeRJ0R6cKy7a8nSHktKHaAc2rdRH78Q29oVB6EBeVJVRrO
r8YR+T34jWS5xj1w5l09VrtGdkt3PYiyzMnW+TmReN3+t9uGaySmbqnd2u+0Vuxpe258tc52HApa
KJ+ZRJ1LUQaVqHaSYKZTy3TPCjex0Oc2HXZsTnfzMC1z21c+tK+ydHQP8lYFyyOyOSK79Y2jAFar
MSgNc24Mx5gHttWCxwuyqkbE/uMA4KtadEVKfNTtKwgoj+ELcYud0u+gUAiv0tjxjgrJcRKVloAl
Tn3YVU4TorhEGdKJmnmHleYgSiCBEZuqdP89nSCOBLLaVbwn9MXA69UhUAcQXY2Ms6tqh7HnmUey
668dlGpzG0ieeeQbzlVYvnA72uG1ExMMj6/zVH+TBSiRgQnj/v2feeoCpzO0xhQNvzuExMKtkcP8
+GnfIqYQkTUP6doE9tHgvXMMI1ctofh3V97grFXAb7bOAMesh8q17ZXei6Pwjr5FCBJcVx1ERvWK
JlYqWnfz088luyVjMC8epDD7nVxZYT9EAvq7tdVq9bW30zOO3O4bTyIKbjQWff9omIC7XcdnhVL+
c0QWK3DhGUvihhWx0TXJts7neJJuwsOxVlvoj3pdWvIX2drW6elw/Bhe5d+OoOTWEjIYjyJkDzp/
EnrVv2Uc8Jzv/NfEEkB6uhRr3S8w5gwWodJW7tI4de3JsZHBhJ8yuIW5NyFwnLM/azjwjp4oYipD
HGbV0ATIlh0LCiZ3qg92lm8oyRm5eZvs/y8ZrPJUX1QRKx+g/pa4mioQ8lAQqO5X5i6dFc0qh1F4
slcBCsjGDBh5qybYIgMuE+fObUCWpzZRnN1KlH9dNOWcB7mQ/wRJ5V8unXlNMzyVeE+T9Pporm7V
baSj3Xe1XBeQaQy2TwEDPmcAESY9OlLvgPM3hvZJndvYGTWq/7/84TbFEZ7YcMDyhZ9E8HZ77oGL
GFCJo4pfxcda3ZKdTXzeZEJkpnSLhD2vbI0ftlt3xpmWtg5QG7TBL61Z8WB6dD48jDQ4oZ3rj8q+
gP52Ucy1Aln78aJZrBoESfrDP3oszyw1Ku4XI4elk7Avm5BcA8NrQ3o9c/be+N2Qwq6Jd6kX5Es3
rfEZHbfykfZiXV3RlYRXyvB8rlpqq1Mp3aIzNE57MFD42UIbJqiv7ltqXpg6MjaMihrMlC32dKYv
z8Ph4i4umlTf/8lMnkiZxaoLYhpbf1R9YyEhoRtx4NbUT5ds9CQhkSi6C/Ct3HeBxk9BCrkmIEDc
LxaWk1Ue/Nb5ABr2ev51qgam0f5Gj/LlC7GWcCq344h9vrv3M3fRnjpyRxyJNe7t1jwZ94jo3KPg
g21OAbxMPWMGH+5IhtJBsM8UH4/fT+6MW+Z/VhSSVvFAslQNq/OTor+YrEdOgyxBOLG09jTGp9RJ
1R0s0twv35InSIeuCtWCw2oMzFuvln2kN/r4mxKeNsHNrb+7qNRUHlRrKPb6CelXUCvQZNwbzRzy
QmLDgOEFKyb3sGY9+mvV1YTxjNyq+eHHQbISq8VJCHccI/O8VbfeDuCBthY0uyLLUbbf2Vnxyv6G
2VsFlkz0v9p6IqkZnKCthXrhgLh9/9+IxLcHQ9rdcFOQt0RhJQSy1sSP5k5C4kUzjW6jo/KRrVEB
oXEI5LLnsLiLuiWKGpJMYK6kRzsmVOcXUCZA4WetnaQ01z9ZuqrSfIQPPsA8k33QIxP1+gscQdvr
Ps3PjciTE6puhGviyRuPB3zcLJep9TozsqwMO600p+tfZinv0d50W8n9ZVg9IJcSb75QPpKh1g2O
fSQ8jRBUcashPYDXL7gJRHfZUQ+1WaCpPLy2SreYkZ+d+cxqdkaKj2CZE2ETIBHZIQ73JpDmoMmP
7cYwOcvIAfImvhBsQGW+8wORdRWds/A9gycCy8Vf/5A+0Y8HwkmUSYuty091RJo1JX9o85oefV8M
AB1Y048Ml9s7IayXItx0XP0tJPZun5DcsHljANNTsKjRrvDiJ73WwQhyRLdHBs5tf2AqBptDERKr
Z6gogBOIUrilku8J4Ow45gxmi9zg2NSanvwZTaQUpuHmh6o9V1XKDsrxtlSm7sR+50SAkbNA0uSw
K9HATINy3dA8f1BLVA2Udmr0yT6MRoNgUyjt+bxCUkRNxIdL/hlV9NlJGhbcETQ9fvDfCCmitL38
v6A2WmP77ih8oGKTOeNDOGiya7Uks8+X5oEDs4M9mDT93jQn+aPIYjiMbzT2oIl5olHfKHlV/bfA
aE2ysZV5fbWEPmx2FckRBm6JmfWzq2HaAbv3qf0QmmR0YQo15ADK8L0HFVC5nbP7mQEjzFZLDGDo
e1YECK9lvmmfhmpQVWoz3CdzE3r1g8aWYCeMDLc5pQxYXNSfw/JXBkkfJTL4WAhRMiwm23gD1c+7
WK39R5T0/flvmU0zvHoN+gi9VhrAjWUM4HuTflvHqQ7sAEjTJ+kvWgjw/gxl00fXUZ7DJd1q/2VI
oTvpUGkUomy5ENVGW1oSv6CYBAzkSbJJ5nrSFO4O4tO69XVXcHCEa5sGD5rlihwZhLpx70pKYXVb
jEgpwfugxVzQX+9uTe2U27qOCaL2FUa+vBIipz3zF6dtEpQ9VzbIkSebn99OCGFb6Ps1IBOjmlSL
QL9I7lS+GuRgcw2uH6P8+QZqZM6SAt5K77HhEF1kaN2bBEz29ps6Q/SfwA8ieuxKl5QxauU1pb8h
gVAPJsOPUohp8bvJXnuPFkb77G3OE/KG/lLuqCKF0k3xCyq/O+SK++PdDrzIRmXpump6Yk9qMfwq
BI3nZIGy9Wmxr+VsbXiSaE/ho6Ncm/kHPbHM9emLBPaUCGSGvJGGBXxsLW6FRj60JbyU4VUvmb6g
ON2jj0r3s7xN4dmiaoTi+RHfT3g08/X5+tRr9vGShoODcGQMFNBvj59wxuqSjH+mADWyu+TOSXlz
78Us5DrswCgWaqNhTaRuuNXM5WZKtx/37PHFDCoF614EFT3cHVeBUzxGqbu0x+lg4E/nUKIvhbMw
Cj142AeG8cJwnxFa7mWTnwyTBMIYB1k8T0c1E5z765jmHiD6HzTQxa4P7CtkVx0PHTZTMTMBQIMH
nRjvI84EsaLnWhuZjFdT7iA8GBv3pGEoCnZVxDtQl9m5SGs8z68EiRHd2672eDEUb0qZAcLfQZaQ
bJopqJUMo481eGG8rf0Wyk201bdpKP88Kc/Wc5BjwemwzFTupIYn/jzWC7vbPE8CRIE6+ekgW3Z3
ICIklP8aO8gKsUqm6qXzfO60BIiyl8LL8Qja494K3eeCrNML7odr4crxFRpU+LD9LRDzSEehQGad
XFsELLDs4zDBo8U30EYz2HQufyr+GeBfAbN/LhLcCHVMDvb3OJ7EojiqP5TUuCW79+fQtnRV9F0q
vuwAtaolAlYZO+zbsFhhtLW3aglSoePg9EVI5fD+vSVAs3dBQ65QJwy4Nq7t3EY/KqvpdYxF5UFb
fs5N7b5cVzcnDYEIGR1flML0is4j/y0ohvI6HNVe+2hQx+3Edluh57VRevUvpQ+v/+PYnzw5/EV1
QYL/eHbP/5FUSj/b4DvGWbMtauEFIM7tEKBCh+ZghaxVZV7mZNhRBAyfeFnuBigfKLaEvn52TR5J
EDflZl9qaNUBlARFXRoSqFjF+KX12z4h1KII2X1hnIZhYWNZYvnnxOEj8fMGsKWbtPQ+4PNDSlmf
npGkIuyFyRLf+wIwPiQfYtbdHFkF0XC1Yc7vq9P7WJCxUv5FwIVYB/3TpA+EyabVMwtDrhzNzyJJ
T0SfZNmdWuGMvrkVzgXFQiCZYmG0q19rlj1pkcl+MykSufzCLzvBlWf1FGjDgkXPK8RxM0lbXRo8
WW+jD+F7R1EVt1BYB/EPOQW8osemT/z0NiWLa2vpxKswaURS05eEBZerxAIJYgse97hJlxb9hfDo
j7DhQX1O4cifhgp2y9WalnpJDhRS0cBsWZWoog9BnJe5FxLPEIRMfPtKItJonSB0Mq9Vbi99oTb3
OnIkZa9jyKRth3q3LMVYyCAKr8pQw4mGrtmOlGGinq8I68f89bqbs+BM3+RsVFmZ2Z8EQCORrQTx
ffKm2c1yqnLGF8wuC9FDJGLVQ73TpdD2+Z9mo4h/7kLrjeq4b9xTdEQs+u5EoPAb2PWlLgPjc5Gh
/q3pFDVLLZOwiE/n+znAppWBQxcujY4pXqZJBa1jPg+TRYaqqSaq28dFFrO2yTqYi4mmNzqhvrV0
AZQViwoKiLxjEx9EyfJKA52Zu+xEnYmH7rrOKaba1HOw3f1EXUhmy86I+lGJrd68ud77mGGHXxH3
D65vgYDtjbvQE2IrGjDPlXHxtn13GakfKhIsuCRNYTXTuYpolCdYC1Qg4O+XJSJxmVogBQ7ZsO2w
6jCvyWP8QyrJenXEPEtAOJehntOxUCkcrC3kL6Qn1otcrzvvSvHuU4rjANM6CMI129CS6CnvvgHx
P8FFXcKOrBKSixm0GeOXs5/TR3ZJA6rhAgIVvHkqfDURFeipoO5Pik1lPuszBmqA4m1xbm8cepzo
mCW5AYepBm7LUv/56VbxJbqt9jRWt7eZaS89F5qVzlwKWWtcew2rIKHzJJ0ruTxXHBGJmmzgSRgq
lG8cww26j9XhbABilacTBOGbRnAJ6Y5es0Sh02JV87Y/h146d2UV3Lz5aqX3JqTJMigwBfR8TJEz
d0cvLW88TaVZT26TX1uG284KYB5nmvzeqIBWg9hJLkfyP70B+5H+ToBWnSgvl/stSY4ed/zDgKdH
97fdPsPUuy+MHCpncUlgdESnkWmnr+P+1LRzPKstRanVlRNu1TcYX6P7qjoPZn2vOD0txonvlyOj
zEpKzCReNCCxBsp3qJLerRGAdQbgBvHo31unawV9nFVHio0syozFuYqQogWZawvJWbc1SP4Z930c
GAQ0iJK4MzqpC03IhlJYy+Dzg0Vvv8CZzof3k9Se0+0rU7iqcoZ8PUhYNUtINx3ICs1hRlVmxdGS
VnVVZGTHSiHSPZmo6hYxQSABwKCYk/0IiW6VJBIxf4jnfNfuzU98WgUkIChvKqYJBlsOoQ3CsLnI
MTQq6kIok1yYDipqeI+CnMCzmPoFGchb1f8XCW9HVEP+PFIZD8pYGJAW30xngfgBymZfFG4Sjdi2
WxwXA72MU+/j4ahQ0rRZLInRw/2FPPXuq2ttci+Hr76CxGBbkIelCm41CO22o1HUarulLzCdOM5v
Hy4J5KhtaLDyleGmHVRCtyBrTwSt6d92wH6WpUKEVCkjQMU61+UrKY882EgpKpXsRLP05lQtJnMZ
Pd2lWXVKyz88iv5s8Kh67bCZp2QePNLaT9Y9e/kSTz0iKWN/7qMGxXQUKoBZAeRtxIjWPAEvWYHn
oZ6s8xFlGJ0iFgBHq+R4flrkLabcqu9/C/kWJlI0bpxNAgN/NVA/dFM43fpkBUpkw6NMoA8UypqJ
wWISd6epd5xJbVEXECbtZNkMilRuU/G3ms6zLpc/Vpu3bwOZGNJGvPZJDy3PtnXiWvlXAF5432h6
Dbd7Q7mjrxdE4JIjLDmpz5i+DZF0F6m1+Xv8NL70vuQ5C+F8uyJdgJPgjeCi6MmTajYJXJrAmNh7
tkRCkq2+Txc+Uxz6DihSh4Y2b4gHC8f7eVOFF3pgzZuP0cFb6nuukN43npy51Fx7WIOBHryE8KkH
9auEdUWaTO7Q4KJLX15Xe6fJj2aqsO3wIklmHYcphAuAXwawHhp/LosNFLzldBa2K/683q9lG9pr
S5CPJVa3jwRsToHKgLBNebCiOtQLZgP04Be1qu10aXR9IemJ8XXCQByOHmSAtRQUN3slORZh+Ptr
tgujVLKACXVf73FQIbKU9NSgnd9g4RAz0G1YzKkJ+8MKrwucQP5UwDU0QNYvpmR7K8jYljq6ajae
au7dlT0oYB5NX5ATc4Y3jw6fJysRD+TWJLunuQMbsjdjdNAC6mOdfI82Kxrn2B8ncqPSES5nenH6
dFKCZtOLjqhDdCenGxn8JoaTdyaAuZowWBMUhxJOGzd1d0B7Pz6kNrZeUFmmNaGwFSUEXDbfMJO/
GC84nzCB/V7ukDKqo0+/mehA8HFOHc1QRaS0C1cbfowisYihvSk2H8Pi+WUgQL7WWobGhiVc5KMx
FZ2UNK4uc8xSaYXrB4E/QDw5ZTqr4tlmlVAIdbmfXxwAyLF+5DJ2XSf/t3tTQB8a8TO4pLh5uL8a
FAxwrLdpkpPMim+WdZn/kbtRd3t0xFwomqes8KPCydYuj4aWJO5rRCyQ8Q99fMlQ4lP7rzbZodxx
cNSSXVhFFZqNUSaew0+tzgOBCAqXuFvLhCFTqvj1LE7IE8D4MYq3vHXigVo99H02dDrzNV/DJyff
ZeC6bstQ5UGyHMyVGS+u1OmWc4HLAObuommLOOcCzDRRW1aC7oNdkNEIyWoS2vApky6L7lz/Kthk
t8a3CTxAW0SGTM6qjDsBe0AQq6mBRr++cFIrq2CH+b9YtURID18P+z4W4b+aqY3/FD+0q71VnHZO
OUB6d289hmIHV02/g4PzOQzqb83neLZNbPvnA+4xcSLhrZaygmEahoO9SjperrH+3f86HZ6eSCJe
yUohENNZUiEys8L33tuig3JnItX6wKIjls9BbS09ErF1D0eCibKLiQPX3St2BE1RmA6mTSAKSvrG
gbIsZbdCRU4XKi1uE/n9qyWZbsYUcy2eJuAt9JTYkGgQ+DDsyOXfy2qYbEkClYJttHl0RRMhYgaQ
AwIdqc6Ary03JHOW/wouOXmW2PeGFa9IrjzfFm1oW7XgDgS74bJgKF+h09sONLFOoRj5MlGd6ki5
gyHzGxN37cAXwGYt10odci9nBo831RMk4/ADh7vO70PV0hHhsKMSO4jdl7L2Pj/2PZkY7EJnNSnH
ieMjuxUzjiBpKGJtzNAdG1xDZfSXf2za3lb7lp5uHJtSIr/cYqIcv59oMPsLwKuP7OKf83LHBr4b
9rcYyOfttvn+3Myck89Al/7KtRJS0HLJX/Ya4aBrXLEjyLH0uvPdXsJiEQ5WPkzY9iO64K/riGeM
iTSSJcdSYotYrRMNUBQUV5v6WUNE3UQZLKbxFsS8HbS3GxZtIYI+bqeQJ7e4Ez00ml6lMZpRvWY6
n6lWxpBctrIgzlMBG+T3CuGhsiy/i6CiVAsnXO/8QJdG/tkcKPEQVWzYZbFjB6KH5zxuphUUYNBV
P7Y8ZJZBcVHUFmgmPbyqjODBD/rH86d5f8+Quz0hSXUg75MFpDu3Z47nk0Nk35489jU8X65sq1ZD
H97mlyRqWTVHDfOO83QFvQ4kK7es1tST/t8xTLwiURhZIkw84pLUClIe9Q658rTAFLcwjK6uhtVf
NduE/kUx6doMJf2BfKjIQ7KdVmq7+D8pntsMLtVNMEMFmxGBPek4KZ0Uj8PitndpgjSoCMfGM+Y+
FYGNy4JxTEOBT9SkASNgwKztXLcMZL/OYw+hmHhxR94KB3vlMIpZmy0TFhyMIEsNLjTLnqBWRX0I
dcvzdJTO53GoZVr3nsdGs3tns7Rk57vHVHI7fyIdCYyP+TU0kJxFtAmPIWsk0kQ45NR/cI6Y+ka7
HJtk2IFdYt3lgcIInQH8kixDiQwIRB9Mb/JDGMoqwlWdq+6Im+J8gFuwxeMHoXLw5hu4QKYaWu2n
dsdLgS8IOO5A7Fg6RDeD3OcqZRCnLZPRFIZosHykJttCgJv5vSQS2n24Ux6B18yZPEoeHHjLAVn8
kRZeWDNBFgPxAgEcmth1a6nBui3GAwSAOwJqggmkmdPflYyo/J0vs5IqzGuwoj+tkKBCAxIfoNHJ
sLlNcX+qIptCl0oEu4XkbYKGesyN7JeBaJsNSA/0G3qCogRCgGn4SkV4zt04rnekni4aWR0rHHrD
zeVSXAWGOCDiGS6cKTKjTjxZx8Lx67GBUGm6/OC99t5SPTdcsfSyMp7Lbeb1I1dL6b6jCNEr9NxT
VOGHXRm+QvU1Jln7B4MqxkBk3xDcholnXcM+OqegK9+hVCOmQuutrV1xfBdGt/j5447tE7MkqkgO
+JJKBD9Jr0Y5+/cTQtydoRdMLyBwie1yeRuthkIo+4KlFT3Gs5FRKc5zFKLou7flbusWWv5xTL8f
Fp4OVr3iIbsbSi5/TWzSlairob+3WqXgvK3AoD8gefK1w0m5aT53Uz9MkDp5zcwGjuHlqnk2iI43
NlQj28h1+N5Wj1fv3b5HxX4DQEa6fhKmCyyzpbCv1DR8glfCdvxirikS8iT200KmvnztmjA+Vqqj
L8/YKwhAtrIEGlHKOZZxLKTDpPqoyrYaAWJ/dh4pMesp4Sclbq6hPo4eq5saxA7g2jEnb/5RlHgh
EmOV2lUpXjXOgOnJ+/IJk+2cuxeUIE3Qs6MD5ILhdgle2SGRV0jEQiso5KzLxSDUqbaaD5lbv4x4
BnFzy5Q8oe/PkvKAtuKLkYT8loDbgOu77hVs1VKJjvArgioc1oKKAsnHaHGUMUuBfMcoY2Bnxenu
nXSC5VSaq7DdtQI4IEjLuwbP2JqNuOo/8O/bV0VgSZDsAkDpyTK18BbTlXkb8pRuD2CmPbhre3X+
e7ekoXepv8zDyhg3xS63KiG1PGnroCKitP2zk7alcqjHSACCgw13mKEVZA1tiQ7GEYs5wr7UYa9j
PQsVqeZXJTIPuNrZVMlrOdo14lrbvtNrTxhhfRHmWOv9KTfayMoTuKOt1JZrlbOzFsQktFzPVXW5
dif3msYGEWVHsBu0HeEDRw72DsxDOAOe9k55BPj3micRNpD90mRc9o/l8iTmQTvtaaQoTNf99bxm
iORvQ2EZjlVopWxLsj8T5OhJofKG2cIbMkt1alQLQBkwYHNQXhg2+hDCOavdUCd9qAII5qJMIR3M
hK+Ql6wroDqKvNhFZ6DKeGOO3azska7JV9j2UBBrkJxvVMHrgGsX8W6ylIEDebCjyC7Kdt8BZdzQ
Fu/nF3E03852PJXO/9Jyu9flDdJAcvNZtorPTOs3Hhqjh/djFFn4yzdzrmf5wPej667esvo9km/p
am++Fb3jDTCBs1MOgZXwZ+wj3CvlO7BzpERm5nVhxmkWHiXAIlxD87nQb85gBYr3HZoqICfLY5ju
I29uVCmh/fm8R+Voh9NT+0Nwg1Jcg0ZQ4I5TlIRC7WjDTLmwgbYNOWvN4/0p85HuTj/YKO4DGwtL
JszPJ30eD4LilwCXoTFzEw80SxTYafG99NKSqIs8qGNq6WqzhDa6U/YjOp21t/+SobKuTqSzIL0P
1aWtE6QRZeqKz8+u80Kdfp+PgIOtbl4Q+oNJdeU6OT1UpSDfBysLtJvK1Lo7ZgojhusrDYnMvFW8
x+jqnSrbHCDZpOtmlaVECXI/tINrLiP1wUX0pPEP9xHb0dFfRy9upiJO0pOg13dA9BC3TNzCXKZJ
zPdUlYTc0/z6W9YXeZSVve1sWMa0cvvyEmD3u/LglUnHqIzZg/WxYSDyWxELJ5CiEHAXJ1akO7bc
0zmJhpis60xER1eRNNS7CBVDnrGy2kNf5oV4u0PjD++s5lWLfGJirbTIkPSPJz7ixNKUDPsWbSEw
LI4SyGjxFuc5RC594jQAxcvLgcTm7mpIdwk6ZDQ64xCwGh84cawkhZy9yeP6E5da3vRT3Meje9ay
R9XHB+W1427I4Y+RX8Fq9J0/8YCdZyVJ7wmDQ/2TaNhF+3OuK+K69a92Ufn+L0E0hTYCCcRxyW5q
zVjXQ/YBpgZMPy0gls9PNiYQCICfPJe/vQkkewqq6a9jb9mfCV32CDa3mw5iSrQftHjniUIu6xAv
t9IhXP6Su3cFeS1M9volVfkCuMH9akiuocvxVTsYNQ0nJRTmFWgm+q6pcv7N+4sis89u4ZMHdY58
rw4K4OE+kzAKYvJMto1JIXKceXKJBbwTya13hejgd0TqsLtgJeJS/aru5EEbr1eUCirs5+RQrmt0
n7T2f/U85xVBkEMtR2eVDY+vzxsQoMqdT7tC7f6E1mUUTiY1FPJ4t9aqv7nbXeySTJ05+9SToiLC
MzPDMimNZSutyWPCavgeEuOWfzw5LjpldSztCEi/5oElY/mPERpU+Ip+4XethZAUJw1Xv2Tp2TSX
5MzDSmvizdtKayLFOCdHR3sVwm2IoNuWHNU04yKd8j3Wcr8qfAQwyhXMJaoKBCyev5N0WXIj16Rx
W0ItfdApqsJv6CkshjxVuNef3j7jHdXrHers9xjRVqDpYWmmwUFIQpvji7vtHw7NL4KFiRiNVMr2
ChX2i6/BMOB1ku9/CTzY+rN+X4+TQFQhzVAAoUsSVkaOpVMFVhCyBkPUEjxca1iuodaiQBM1JLie
ktMzfDgF24TSWk6stsgmMjXjRSUxrOusOTcoK5zVaWzN+3aYNmLT1qTeWlzhYnSES3sbIhYd3x+d
NDC2D1+fMDw1ZdDNmP/3/KssTlm7NcGbXTlM/0NVuxetOquHCnsgK+dYqTvNVO/A+6ykcXDZlUsG
+QxEwUf7Tku0B7nHyX2PG8AY0y96iKjRuBJD5+3F1MIxf2qn0oQ+ZmbLAIrc8ua1b6V3U0uRjKDt
vk1mj6bAC69hsgsjQC2v9okLvCtaQqKtu9OoC/EmEIaQb9fGsAB9zZF5ETSd6yhSEFIX+pGHZa8n
bV4ruiG2IHFHbE6HT2MrPvTGHL5mKGXHpjECmt+TUDsNjUEVhF+DmGdOeSAkZyo2mF59wjidAgra
xGdLzkbgwLGs9QjbHZnzpFJ8zPl4mxc6IJEiahohA8pj8jXWXzZOYjP9ZeGVoOp1qTLVzalSwzKo
uPByn/a6/OZIyqxiIZLGG4yRRpncVaTvI228QrlH2QqrsmBVysngYXKpnTo9ojcmOOyrMlqDjJbb
H5VQTsdvBkMw6lIBSdAbo7bprOQZIHmVA1EhSnpJhYTNlOXsvYXv3KOHBuD9Tm/TQ3y321N+pzEr
k5Gn5o6WNQtigKCE6ZTFJNBI8wHN/pm6xC3GWZsBRuCUXCbywjFKdM0T9FaOQLQKT2r02JMakyaj
Tw6nJey3T2l5H2Ze2WF0IwNP4uUqD6BJ61XZE7oI3LcERg8X4uuOYecaLjzJDFfxHnAyiIILS5Wx
7zl8JLDu29Q+Yhx4IUpFlLdOSiBcZjZmb6fVkdHQWx9SHN3tG6sAkZTKic0tzd5S9s5TqFSYmZcC
9Ko4eB6NZoG1XQJgCxzD8Oj7pbfDFbu07rj2fcA4K2F5PysTAoWaITXKJhs556uaEgbC17Oy1CX3
uVf8Fe3FVi3eMSVXcKhGWKtUy2L8LZ9bDgRBmk4tIOHI7vxNKr8EE3PRYsWd3e8e6G+ZHNsiNRfd
F6eYSIj9ULdwf+Y3TY9nGojI1d32eupfj1gB15mjy539QPWqERlSZaen8gGBUTiYCxWyZZIySMrA
sJpzEZeoyuqDsXE3e1ZpDUr1VT7KUNBAcOxVEvms+VXKGGqV1I037mCJejbZTzG5QgvFoR/nLgn+
lpyNW03ZKZERFxBEPnW8cBee6D9LON4WPcS5QUPeO6+a93kjizDwt93IH25Oekq3QeG872SEf1uT
AHpTE1LaF/z15ovccM9xkiYpnYsDYnzSf7P7UigBjN/h364TkwKLJahCAA8WmPUCzjn3wGYpTEEt
sAz3J+dIzQg1UGM6n0FafVZrot2nlaEcFdiBo9eKEZ2CRoNb3jN+CAKj1TLKZS9dPAOuz5KbMebY
zBu7HKXxk4Jksk0L9vyxwYULH2z+p0W84ySAF6GKfy1B1i9pA22/FdfTbpvs5GADSf0URHIw1YFL
g6MyjUV/atiFvqS0qi3lwB3OKCmMUZkpH7fnI5Xo9Bklw2C0AXKbQkbTFudsDpFD0QzmUGAmWUts
dmrOyts3zt22AV27QHi0IjRxDdt+DqhdQBPcg0rH5Xw1nxVE4m8I1p2t+GKLjJJaFzZOxoiQ8koL
FhvNA16qCmKnrvb+DJHzCk2uc98pX8hAU9jVXhpSw47CeFIDMCpy4FFZWunkMk8tetM/5NrwhW9F
lr5gel2CG8digyoI8V46yJaA1WvBKyrSvn9jDnOFcZH4cVT5x7T98zrkoo9biHEFxMYIVcoE7siY
dVonklYrjFtqZhymUrYGfEjz0X7M5I0CxO06E2/STOVMrJJMgfyI0yGALRCnZEsPWfjKxGqnDy4Z
5d/KppXwHF1MLR7VlX/EihjmOtyKjGSW4QYsFBhRRXSyEuCC7/l9XyCV6M2Bu253uZ4uvrNu1A3i
ur5Ies6Wl8nsKJRJHMHJJF/3zoy7JtUSkw2qB81NFk3I6nZyCrSeuQ2OQF4NmbsToNQJXxRQiria
yD7lW65TI5CdWv0nLMQ9mkKcFLc3tAqeW768SmCDXh6HdD2k/Ecj1dLmyFE40wBzm2JStqzQK4j6
RmxSQwW8qptmdGwqQVf47jsV0GFMmtLWtZ/3BhhGlEBDngE0acEI7S4GYNpIzoEO1XGVzStajV86
JQ7W914k4l0cTCjL+H1IYG1/nx6wKMGmZQG1aFO63Dzj4mYEd8phMcpFZgIiQ3yhUYxPqLodaAmX
7r0iyXV/UZRkp+3O9LjwM+zu3QOJf3lncauXh1V7GIY+ngPdsQwHoRaS1Z368+3/AEqxcn6BdUNQ
2/15Bs1o1H5vqRWbqN0aNPdAKH2gBE+8XUH5cmGBO5kWirSr7ezenLd5VFkXde9T8YV8mPGf4tgw
rzbqxhNs73wqM5ANBBybbcykkAi7kP6hoI0sbgYhniySatU4fM9XPsR+z+hLZZiQTn10Jf5qaARg
VnCJ0huTdWtV36qInQAS+vE/BSunx97+2K+aEhhZo1M1tXVMqQDQOvzPcmmFgvvJSRxskES85vFh
g0EmVKJi1Z/CmAEqmjD7GtoKSR42D9W4SbQj5pZrvF4e1us1OweJfORjSnFth/5kaRSykequGkK/
FQYkT92kHJ1vYj4eeKnLPwah6JwX7FrGJRvQGDuztfPyNbXeDI9vaAYN1cH29ze6sJa75hrwv+pO
hW/rxjSnv0o/H7GoshbOLQwu6x92ewxX5hJJCyvfekE8fg90F26+GJaQ+XgTraYO/HnCneQfguW3
2CNQ//StCHIfMcytbnUAOQnZ+UbMR2DTUcBmeXKxOyEeOV1JIYE4swADxejE4m6QUQ0c/kAGB4Qo
PlFc9KsHk4Ru47XzHbo5Tm7zH14bLgcd8Ze3+zvw2z96ziJfHjNLhFf9/ZGv1NFsUAuha2J9B/PT
9iz1wHa/UcnGrV99hh4lM1ZMl+4+/bQ3KCFEFcr2noEsLo/szG4aK+T2jZqDZ6l3g+wBgJO5rdAk
/04XXNT4cEpdmGCWnJxBZJ8fZwsAo0ZK+tBtOP7aTusnw94DUhmpBsKML5KiO9jBhzDUJmq26T6+
K6EijWtb0CtJBQOApsMXJinozkPp63UhQCGvQJQ47PmTWijP3H8a0F9NK0QdzSyoeFGXqbDuC4x3
JQEJSwD/udQg1X5JDYuCIQYx6oppRK1cmcGSWFHkt8PFNZHIouLFjLoCFC8HAvPEaDtoSN47+qGU
uP7agSZdY3lrIFCaO1/boLZ1E7e3fE5Bu/t9fVBKWUl3Qn88jFwg0sm4dd3r3OcmqapcaM8ICj+C
Q4BtuP0am7Ougd7EmArgES7jezRLeB5tqoDOjxAYdOrHmOj6vbjAA8UZDfNKoBFz2TQas/Z3EYCq
d1yPmyy4SipR/dXT3R29Fan6pGfLOapkGGOsiMyQPCwvd87LVXBvslvJOyAw4l1JTDbUevBVzHSW
Hc+8vdfXwTEIgCYFWHJa7UYI35L+19AaHzq4iLSRASgsaJ9Lec+jfNkCltDB6d/+jRRMbQgGikPl
FUIu8Yq5WCssigdcna7fjFQbQCbkSbbgR64hZoj5umq+eRGCj/wKkIIHczvcKYlh/NWTWd0BbVQm
xyhfYgVLO1/HQo5++g0EiWGmHpeDjayqZt7WP9lkMi3MBkTDu2mgeD6t3rPw0VoIjBzVPMw3WoYr
ezHux/e0fXLs0w9TrOSymlWGtpTTWh7kF+S5Ulzc8cuqsAaa5PJ7uczvcGSNo6G7y/US7cntNmAa
6d5fKgfqFisLy7wxruVtnhMZZUwSFezTObOousUBCtwR3wtmbz9k84ob1H8lKCdOVk8cGU+iX613
LVtmypcDY//0S0CpWq2S6d5334uIIOB2/PZMwweYEiB8TXB90Y8UkeC1tp22yjF+PBz3X7/uL7vz
Di+1xoa95TIWH4HY0aZ7ia+l1r73XycfGfZ6M+8sHXACH+COtnHa7dOyqXibil0EYW6I/JfRf6dj
r8gF/0SlXOE+dtRmNSLgIzZXwLMwpKU2fkZMyaiA4jIXMrsTZ4Pjvm4zPN+xDfJoPagaBlYWKNXT
2NAr1pmM4CtFjue3EOkRVEzPuNT/WH/sskuIxEmYz1cIiHYQgn2FDpf7sE5o5PUXilqRaL4kiarp
Hzcjsyx7S2jXBBmO8mUil10OCwS2PzO1VsylWujo83LYcwRDb2Ki4fxDQoYPMXULo77P0jNm5XBw
kOhZWA37jrxeFtaU2xNFxFU5KTeODQcxtnlom1XW5wZB6PUgW1pGfsWYdOim4iDEPALX/et55+vO
MKMumIpC2sETRkjCNt+VWZN6wzi7F8oOpiln6I4Lg2gZ4X/h0uGEkTAHiHptaP9+tklF9XrOrkvy
PhxziP6EnabXiHGADu53dQUvmXpRtbiEqSDVvwJsDL8Qku8b3r4NeIdwVZcXXApFn19e9APkVsRd
3eBsv72ZHIWhHYlclbLBxaKzlxfh4+pqtOckKkJRmOHoX5H/qREPtBXbKARxPnIyUOl0Xq2b9VFp
XB15jFcqb+yLsfrnVkVuCfF5cgUJtRReqJewQErFvchKqfILnzjhdi7dwlMyzaaBWR8AkTsmHuAj
f5b3NiGdYHZcb5qvjKNjp9xj3e3GC5xDSewtBJon33GEkaV12V4kZa7BYHSmY+7fzNO+2QPaW5l+
k2GezP8jen7/OpdZhfROVvmQDIVZAW4YWJgY3OCKYi2meNP81Q9D7vLJsZGxEkDQEnJginYzzgOy
tXAjIkLU5dKkzpTYwOb+M7shwyMXs05UdJxmsvBRBXPxZoYP4VfVo5Zpsce1xOXz0R3p4/WLtp+W
FaVTZWROQDanjc2EP32eg0dBgYziJ7rIFiLfAdu/WCjzAEm6DbhnwE5rxgZ11wwNLDqSIUDp/Lb+
dSArHP2at3tz2jXDeB94q5GOVFGOnOXgYL2Js0HzvpEMhvVPWBJzIL4awCxUjimle/q9Q9M7xfMK
WxJ23jTkwWfqFq/6JeCG5DMikrZrHDO9pDb/khkwH3PKIi381+htBicqBhrmRfkmlay1DaPhBzXS
X77LWhZIAb4wUek7pK0AIiYPTlMGAfmTtQG0unul1pf43LcBCeA4dOG8tOkDzzei58lD+HUy3Dsk
JL/mwwftKKf/7W4U55kJnQHOZVNc0Sk5Iwhw4CXYrLJuMPc2ckTM72d0vMOypZznWRNzENJEE9jm
NdsCjaqWVH00gPCL8apgJ2HDMwdfFBEHD1kPct/SfJMIVtq1c2TsV9Sc671RdXHvZUsn35P3SVZO
NiZBaSbU+Jz0U8B/vXeJ1dt+DGID/9X2LNbI2XiWMaPrXhe0aJ9nicQlRUheaptQ5qHzgs82D5vN
+jb+jg5QGs66JfGG6mCBc8wvQC6TtbdfXRyvPnpid1Bgk9KNsT0Jb22CDsldPpaMdOoQY7wY2Hu9
2KnjMwVoMsj4prWFOthzB85z9zw6SrInB9B08oCPJEJvU7D9/ddNPkKQEQ6GXAhAiDVOPnyw+Dh8
WtPMzJl8t10o0NSPrPKmBRwq0HxDKbV3nHnCuyKEsdet+LB9Hf+AZSMzoCAOAAGVunN5non1QRsf
dkDG5cZFnCh4fXu6LxrL4BTOtWh8lRR/BZfJi5sfl8VieAY96c1Y5xxUACQkivOLcyeu5nEc9yed
lqPfOso2ntrSJp3vefAGjvlLX6aBiBWkadIuG40NxYndX6fPW9BuyElLCZUm0Q1sCq3rjMtmhH5K
JcsopmeghdrzcQeEnORxrjdSH+/K2Ak/ysu5JzM7t6V3yhgnEHKQRLU6Mc3GGUJPXxo4mHXp/pUo
ysTpRgqGFED8L3qKrUUh4/OciFsMWnjy67CcNtNXFOro3ipd6HbKXqNR70koMrSb8rMkFisYJHg8
b8ouH3+UlV9g1M/QojDSY7ME3lz0D3/Xs4vW/dNyLtmwxWxjHmeYH3/XFNSRgd/shymMrfh6ad18
iJ9zXoWDW1ZMX5L58chOARRg0KHanPgvPujwHLYkKrMjSIMAoYkSsOAPsW3n0dUcHOa7qlRwTV6+
z3iKmTaQzslasxH1XDqxlNrWICkeKHDKCi4WMb+qwTVRp4K2p0N2C6NxrjKpxJC0Atr1gEg+WagM
67xSrwomu1pliNbRydIuAnW7AJqJ1EgEcyZVCjZ00q1I4BA2JuytikzhXoY+Ot0ebEXGGaDx5lfS
vdqneqvbaVRYTUSe6zSQKkl7MNdLQrGdNpPMlp17ddI5sKxw+zmnytGH7Lx7KiLPVwFY7mNwatMz
OEJjkg9ZZjLy28NkSNCHQ5n+iXd51ZZT9WvAxo908cM88cZerUkDQR9uB7og2VYET5lhNhhfyu1R
ckE0j2rZr9MsB9l57j+Pvd5GLbfJHOm/X7A15Hee0gtxvdPvGaQCPAcmcBlkUApVUN47dXFfVs+i
5rykrR3yS1dZT4+Zp2UVcn+gDHSPGBGIozNe4ymX16yszaZHXcPXZVmvyVuznSxlKWotRwVPOyAw
fS8u3Yi/KOxutvTb/gHGmxdVYg2y63G4ykgczt1jxpMJGqn/sLZlGh/FnbCLsfLCXDs87Lt0jHX/
Xmq5KT72v2CGURU4s8lrsAU0A59GdFwgOZWUpi52HrOA6SUSuA2kd9kuVkcuICWOlDlYSxUDjW1I
sDjm6ODikHmQN/6DLkkq0j8oJhInVLf16NNEc0vj5feSjnG6CGMjQOFHtZr2mFBy9RyAv0fvZ9KQ
CSqaQhPfSLLGBVRZa+y4XVp8daHgFQYtyzho87utZTkB59fXcoGG/qxnxdSKSsdC8Ckbe4joXFA5
UvI5+hVnpxIcO0MCMDknAN7nZlFLCjDpaiPR4LAGKIbdXyX669CdRAKkMvufWgqHQCDbWHalMZmu
eM3YGkzWaYXOvZ8KfXuLtILYs8CFnFixZcqfNVr9QYPixUHmPVH0NPXSVR6TzdP2FCUNNTl5obdk
DZ06g76D12uoxYgndKjHkE8OXfUDYN651Ytx73SFTUFz9pbNPGDa0Hcp6Ty55I+b2GgNjg6SOVy5
ggEYBcZXKWt2r5qJ2tHf/N7xM0DbkcbmVhc3rUjGsJ7oKXTqnLLjitBSIqq4u5EbZfkP17zPMBHa
3aOIaLpQLvD44zqCMKNRSLbAjjKqdt4lsBHHiV5d1cfmEGokrNRYHZ4QX6iAJHJPyVqj1kE/Elfk
MhmPgKdK3ClGgbDuolETKkLNxiKdXUFtRUEZbWrZjn4KC0knXc+L09GbrEFEdTXosDUka4ZPyLqP
Dp/OAHG+v7rrmTUwD5R5H1mKfu6dCutg4G/AUUYHsotLW7DLqkvKLfv736Lp6axWfLAandapdU/P
ERNj5tuLEeo/gny37MxT2YWRcqCwzHDuqvG7lp1XdfJnoBavamzDLSKVB/IPr96/j6lXe3nbtsXA
06Ci2QKipO11iMWf4hlNS/gGWzDwWi1nvP4dNnit0qu4yccmhheMgFO2S0+iuhI6zIIWqI+xfPk/
qK2oA5nIZVpVKdJkKTkBRuRWKHWQ4iu8pD2IEdbfUgLnxpfv95w4P8fVNbP8+ITUw7Qn7Ocx3OBD
CbrRnQYCdxRX/qsd4V8DScZ8a8nkG+QICmFGxR/u29l+L427ZNgfNIRcclcJ7EFUL0LGGEEPiD35
pFiLxmIMaZM8V/trzduDbmTCiZXNkIa+0H6qZ0x5cEqrOCqVGApIokluf/4uQtI9eGrvcNddjVVN
hFPJQWwSt71P54nqDW1qvp5Ie1MBSVf8mmqub4rTklgefW9Sj82tyCkR68pq/W0yyCEE/ghtNWAY
56u8vDybUvjLpL1ltt4G+/cvhN9tHDyitzm76v0tP9YV2r9gVW6fjKWWqyxFrdSqR3rLWmcFOT/D
TpJbfm/6AjeUaZgNFqULKUBrRBQ3/PoywUq6lrjAzsfYzvSusE+F2uHuFtIVG+TKRcx4MZVO6C24
50qd9D1LhJFDKYwPZZx/WKx3LK2Yytrh0XqDbg8rIOAk1/X6uZjpjU6X5orcMgVZW/qNjeTbKm2Q
Dp0u68Cdk+24NCpKT04UGZP+ft9WRp5Wmm1hd7JXDm1yr3HlLaZzJ2YFnn86ixLWbWizBrqouQnP
qgDYEkiXqllAtM2McpyUeetuoyC41uBWyacH6ejX6NdvqVWlEjl1y6cDy/fyIloR2ZfRpZD3u1tR
Zqqk2kreJ0OFf2Zv+LgJRxbN7c5velKiBQGed7btURdf0U34pJukSX45vQcZcJyZMmgaVj2LdZ/l
U7CV/mY8pdJKUBgc9CFNgwiyPWHwfF5O6bQoz4wCrRioB1+DVyiCW8JUXBkb/gRVDFyXOMoj7XOG
XbGLS09iDhnJofeCViejDGRbUxi/+DAoU9oJhywjrC5X9OOwCazekkpPKOluQryfWU+W0sqj3ep6
F17SdxYnocwwduuiarD39b4ayIpxZdkZ+7CIBABViZ71Y9U95Zs5XXmxTzUi9VULAGwFCuehKYJx
cW6WTqBFY6fbUujXMgAk4OUlCkcLDQeaw2ThPQCxNoG7mlaFq1h2y0GAWRKLgFt/p/lU95vr4smq
O6mnTbGImyqYCj1pUsHTd0qbd9bdUNFGBbmZoYpHew83YLA/3tV7ifqxCwT6/mdjxJ0SI/uwUxDK
8LY8BFNx8FtnGZamZWWpWU0DftUklAD3ThW9gvRry0qyMNfhzdxqw8RHRIZPeTgXpS1G/xL8dfsw
ntQTaSfiMouUY7NwKsmks+gMetTonZkJJBYFOP8yToycAK4dw3yaBHIw428t4Gzy6zaVnmir1xTu
Y1ckpByceNB4+QSL/3Dxc3CYXTw5E1DjCQPorUuxU6TjGj7/02OZ9zxpDn3C4TeE/BdIGiEofLT1
pZrCJvmdNu7DhoiLirJSYs47BuZo/dleoE+SwI0hIIWyVQQAaKEamJltX/UA01SgkDW/4YYC9OnC
LU6Nj+pnFeGSMXgEDtvUKj50DT2pQzEDY1WUjmkT70FAMjFoLxsQEh1jct2akrPydCbe7qdX19uk
DG4F2xpN0rwTuvBBqDtGPl9zlIFi4qcGLzDEyB2zJGYBujp2yqYGTDTnHejJF8KXRA8n1o45Ai/S
ZitV1K2VcKaaKjXj5F6nQLW4ZdhoIgjPHSO111WUkB+o0FpZ11yXex/PFmOoRVU6EyipEFw3msKw
EG0Xpjg85phftNNgDiyvDxln8nCnLXud3NTiZrFXuwpDUa6H06c6CZftziGJIvPM/iXikEI4MgYy
DKfWno2sYjQ0o+ouR7u2/5cE1Qy8gBsUPKwPlDOPsniMbYGd62Cwazpda7nH2soEMkENnRxlf5OJ
L4eKmBnMkGE9MqhVqxh+0btLyRYQ0b1U1xobwK3iQRpsyrczK2jubRa6oE+tCJXaeIwIgtwz9CB0
bT2duMeDFt6R8kiWpVfcgww91hL/UtZGa4u97g6uowsM/9no451EXUiM9dD3wtldvzeGX56hQlfS
JA327kusn/T+aVW3ZTahIsP5Ey26cLVxtcqKfuJTBKY5OaYoiYWUTk8fB6lKuU8kdkoD29Lvqa/U
gYklZfuPqCY9tXLCEZoiu7dW2t+xuqSj6dal7pOugq5sOrJmM8IAJ4Cc1Ye4R8KA+mMChnhzcHPU
Y3pg1A649zRK5EqzfvmszoO3FWMUXgXTmrnD0AhnXtMoQVDF7SiS58oPp1Z++avh5h0CeqzJQxQb
rRvVpNNKsffoqnOiz+5KbYaB1RGGn6FfWgR3MQkBp6MG0CMSCAq5mZHg+a7rmK9X27DtF0+k7+c4
u3K7QtL+T7ppMBRB1GV/Cap4sHPHnOTnjqA1LD2s/3tLWPgV1YzmQDqUAEgPM8iQcIOkLJilGdAU
92pyQ5lHA8XtCvD+6/qoYkAn5LbGUF941cDrJ2bo5taMKA4xQ9LuSCSBprokkjHDI2RBgXHnBHCU
FOWzitxZnuFC6AptZhTzu0IMBHdDJKVbLsHdWpCo3gPWsB+O/AAHUUdWbew9uvIjiHUOBoKtD245
TjUn3ahnGPwuSI/X0an9QIgeg+p21P0dPJNpQcHdz+m8LKfndDJn53btUwMr4v/ZaDp2eOI0qalz
1RpG8KL504MBR9A1BlZrxUeA2Z9iWRrJVlHwjb/HEEq78wswYhs1R2/c8R6k/ZT5kOI1Xmxe0ncz
wamurIibfRtacinfjJXALzur7t7Ekphvu2/rOXhBRvGRrWxzxy4j3Wcy5MZLs50RxBHKu8hFPbZk
xBl6ayN/ktZ1yFCIfS4J9THFPvBbKKpX3aODAd7xXHIs8ocyAoe10WqIsOXdhb2PGlcPdMG6fXbN
ahFfKQrFNMS0Iqs2RPJdr8pxd+OZR6u5WJDx1L5kWpgRupTj4f19lrMSqyq09rJ9U6qNQhsdrm1V
m4jvlQL8ve9ZaKmvcske9dbI+HEkddqxNSqZuUvpEfMSTtUKXB8o8siVBL36WHoGHMJ3culScF1s
dsJ4JGyYeWw7cDJQDScq/9EE2VAtSxT/lub2XDO989geqx15D6u/KvbYi3FnFYrUxHM6gTxbPWcQ
wzaaDZP79eJSwBkfRjRKgcjWOVFftegNE2abEoptt5z7gVEhqjaxlpPRl3fxMJ1HSH1nuZlhka6M
EEcIA7XYiV3K/a4W52mdsaYAEghh0ZKRdJehi6d5kWqfcYDWIj0MtTAMqYcqt37Ks/iYu0HfT1r1
NOxzGE3T4xX9tFZLc+PRmjTN9JQCr8alojxYxeoHz0S9tD487rjsN5UxdDVOsr76Ijhu+So1PC2H
EZ4NYbsNGfTokTdxUbRkR1ClBt8t8kXA1oU5l+ctuZc/MovuIwZYKRho/Tu++bW9uDPUNldNRukR
aKKZIWpFhiD9wvaMPhlyd/tHl7ThbpHkYiDswsGm+wQM8+TdLReaacnP+i+oFPLcTEPC/3U0pzWf
AhBVlp/6RdCWO3Kx5pwKo3EkaZ0pek4vOnHAeBSjdDzQ4IBJziJ+Y+reyAnn3hY+4Q1EXoTOdWKG
XuhwJu3hQ28AfaMtCrbPUPydP8ImRbaq/D79V9BYgTF6Ai7v3SB1EsgsqmofMy7YDaP8clsXmqGL
6vuKaGI9cmKpjo2ZIZYqIuTxaSgsqpE12MfAr+jowy8N3LlOoYvJhyEndPtfOY5mvBrOpEhxnn6+
dy3ln3mfyNAxP/w0NXn8JQaJlExrp6pof7T09ABWnKWYwtfBfietArY+UHTpBS7a+g/LbGl8t+KG
utRDFjTMBvBZjfzK2Gw1idwpJFm4P+p/fJ2aitKw3Pe9w3t/HOC9PSK2s72e/jKk0XJxRMwXe5AY
0FjDg8MuD/Ix2kxoT2+tf42Rq9XY/2f9YPpIxyo9xUhuq64zW46KPEX4u7hhp/eBDrqg9EvT7Ea3
1I2X9YFzTICP7w1MRqhUNuh5VyVGKUvDfdcMZeY7ekCqyJeBRdUMia1c4w7TT7W0m7EXH3aJPrLQ
Do8J1UT6xHSp6Eb/WGyqbTnc+cfO3s7IXT+8MR9GARLQrN3B2pJF89VPFAs1q/s+leVzUbuDuANo
rwWM77vS27dCyj7PHInBq+XzddEpDQh4R3yALLEJocSdsCh5Whp6AhSOxpNR0tfMaGv9iBIWnE2v
8PV/T5gYAfm5RgzMNCyFqYdFX2MZjoHxdB2Fwm8Hw7UIYF+o/8Q8fWpJoXVa/v1+8pxvGPPYODKw
N9i4+qRinIRTPHSKkX+cd4Twh32JVOsfe95zwTA39bX9k20ZYl6HoUD+FkoncNZsnLPAYqHi8mTF
HhDgn69AKdrq6Fi0K478IMzMoiT6gxzqwkD50Iv68+n/dtpw/3RJ+28+ruJ9C9U8RItSSCNsP2tX
J0CFmh2Asd/8JTa9MZfjBYf2QVU1nsFVCT5jdT+bkNmNwCvPDk//QfROStgHqJWwSR3QOKziMwYR
pJUPZ2mira0fUw+UEk1LR8TINptesUGi0ObMWNZZs2KWyDt1Bu8LWzG7l5UFOh/E+JTkRDKqOmEF
idVBov4vrQnz/hLd7GGJClmP1X91wsFVOaS+Fp3IbHP7qRjjU1/cHfOunzUFowxKMA5LDCZbNdih
AJAZ3B2NCxrojpADpTfKaR4qsxCbzvFmZ6YsOk3blMO/gpaRkG1lqyoP+2wXRBSeaXHrCz4etnH5
ao3Hxhr5kvHirv94rix7TECBCjHbkhYROxm/kSntZdc1GfCIcYWIVZqh9bLyLEznpsLkCsKB0mZF
lOy6w4OkYFF4f4UFwjTtC1mwXI02ooFHr1wKXKWXJZdsYGB5RP2lu8CVi/y6nVhPnkCtB53u3nFO
p6HxQHhsC02xovE2jjgdDHNy23DwBIf7uX5nm+60+QsF2w7j2qK6HwJIh8OAPxvEWUMtRfsnfZDQ
nezg9NjM/w2Ww0vxGs6RYTSZ5NOdmb+evmPfhXnmsBWOquEz7sHh6r0eQpusHdgrTeP7xH/ZjDIm
2JC1DnujG8r2OYdqPkbwtSgZ0X/hhVP4BL1uXY1Z01TcxneRV2I/CjMU/M8lXyEgZPM7sBieQciH
1sKfIOQiUT9PF2+t9/qWYgz8LCaVuOkfbm+s2c2AH8OCUs1xvPt4adTcnDYp/qMY3OljS3QoJln6
5J2+KMDMCtzqoBYYDCxyjd6Bcv2KqjJ+DUfTR1JiVZ/1dSLCfnKjKyYfYLPNtG9+B6BUF0pANd89
hxnqheQFFQqoJrLeJY/D8hSq8kXIBWUsbpErCe75BeWT8x67CP77UlM6jEjRLjkZlyJykCS6qZpY
hxiMombXL1gRMXXnRy9CCwvCYG7XaKDF0JGS8+AXFfeDnBdiHEF8byBL3q1te0H93FK4kJD+GccD
xOQ1enyceZ42Dh3XWSq03X/9ju862kGnkYtVKAMQVkKMjrMpQ9alVY+JSzX6r/d27Fd9VrZB9yRU
3sZAVjXKFwGgy/rXg+TbL4GZrDRAwebbtAFa0kiOaaVwZeN3pw+QGi9tKLn1TqadCyJx3nkoY3Bz
a7rsVrqH8PLZ2nT0L5RDKTA/AP+kL1lCebQMta0a/JJB6hWJpxLx9sQyWnSs8F17JwqBy4B+cxFT
njgiHkiZKwTBpUfI/zppAByN84UZ0uhOWJ9UGP7QPLh56CbDwYYJLab/34fWwmnQn+mwqKvqLDK5
ZLTT2RHiDSMKXFxWh0jfmAegaKJk4+pxLeMcthDhuxu9IOd81hC4FG7PTy9pvYgfT6yAzl8EvdMu
Kxgc0y3gsFrSTSs9eaYY9gHKgTVQCV4p6bq0yWCbOFxhBIKB6L3qmNLcVmjcE1FE30C73yqBt7pu
YDBYbI6vXAGnBPgtxzZ/kb55gb2P6jbSNe+Xvbhz6unbzdWcOI3gaza9pfCOhuQAifx3YssVRmmP
bG9UUWt6bypzIyKOsEqIo+h8xyGuJ5KKHtu2u7jISJ3xRRHV/Br4NBA3y73VEmUAQTEXam6d/TfR
sTBNG49v0HYwQGBKLvEWXOSiXjBtDndPQmMbqgkVahRA57lKgom7EIbj9lATkUh6J7PeUe83B3AT
XbyFpxQkOFKLSFtfX04+qMdnt5BkyGRt+cG23TZLYy6xJjMR7LgQjmHpzGchbx22S5tCGnJHDT6s
ss2wB8TcxI5G6sylYp7kLa+/luHhia72iJjrzwEcT80AaY4u8czSvfrB3dXasef/ZJ/+JFTYR3aw
xcfgm2XBeUZM1nO1cyt7AnTHrQMGu6pMi2cb+lPwryK9X0f5xLpqTL2DfeXYqjNOGe9Wzf4CNp8E
aIXB7bOQCHdJ0HpGeWkBF4OV/xzcelimGPruKncL8l7XN8M+AiUZQ1Ut0XJlPsTgk8vFDqwFjTgt
hu6ggMm/G0PaDSiEiETcdGTKdkY/BcwcfmRvnuK92SXZG6sQfLVugGaipreFbt0S5nAbAPCPvF6M
EdqyDMj+JOW1ZqC1HzOwkGLhDkJPGD6Iy6WpU47PYwMD5Wk0nG4GrKgwt2obiGpHa8VtePd2aTbQ
QdWF0UUxhFfwJTnKI3TsmjMrrAdT7vd4hs1Hy26wX5LkewDRBEdHUrQQaVyuNanuW/czrqasL5ch
h5YQNiBrww6ibd9gc+8kOwSEvEk/WBcrA1QW2GkuQEFHZP2ItwI9plGiSYvMXinM7gOtA7/l2yul
kiOApt8y92GOoIVXecp7n8BlMmXugcusE/GSjLUprQH+ftFKIfe+B6ddXCGaXOy7AwbpO79G3QuT
RqPlgfC9sgq7gyCD/BUnKAXD4UtB/rY2UQn4A0GxPDAdV7wCz4haTQkAALOJyuxDRbDRy7PBghcv
G3GmVlkp2sBm3udvlWwBbXYazcIP+GiZOvq2SKhLbjpfCeNGSqm4ukuUbBXQgqAc43O164+2LqHL
YEGK+VAdd8hWBQmtK18kqB5eF4eB5ZPhDlLAlKEewlAp8oDkKn53znhh5AdzWOJLcFy2QqrIT6gZ
/YHDdKfIZ+xnYdU8pCgmb93dznlZRZx8MEDgUO30cP+75Y8hrjE1/P1gn3Pp+9f6ByMhn4v5YFub
TDWXzeu6XsFk0CQ0TJNjRPhAYrdabHBAgl2RGz5dOn+eTMQ3P5FvPOA/aHTMrxYhhHjDqgYfiETp
ZsQpaW9McIG7Ea0RkO89paRbIbjL9+6QcpK7nQgHoHbsbjRkLswkefueATLxYH9cu/hUof6Ip2ld
YdwYE7HeGuUvvekdi6Xb1vH+RwXt1exNlz4nWigUUboQkA3tKMi/Z3npafQNLIgcaz1hM4b8Z2qh
GWKDcE/D6NCkMmp5gb9zJ7BjyNlu/XatUWrUR10qL/bywQL/C2jgGcwNfgRvyApYk1lvTkI+gdLS
RxHcEcbPhUfILautarCpHkLyZqIYutGG8TegvTEi7dOTaB1TQiz3k4z8HN74+1oWTXfHuOFyWqK/
0qz3282ZW7QV4DtHw0TdsTKviqvbJ7XT1gYJAEIt2cGTzLER1wSktZCe5x0kpypHGhg7iBA6/bmQ
QvUrfHnUt9/f3Gc3QB3AmHI9EQKxPhRHKOZlvWe7AFjkDDfkNIEHrr2vskEkLKDrfhHF5iB9+Hzv
UZ8mE1QewllWLI1NbVonTs9ie1eD+7+6KhaDJ+wIDxcDSQognrZbwAYn7EkFuCOSUbpSLaO7zYOy
XDqz8USd+V+w8dWji4Urd6gcdDDQl4yB/UeN5JNKthMZ4s/CXBzdV3UvhdS5EPbQFYAbhXPoU965
cBk0C5YcaXiOXpp7Pk6N8X3yhRphnftmukcaYeY9BcpKxgdCJvi/Rk+ewKcgqMXKrzDW0iMpPgmR
xkrJr11r2u5pV+5fjzJBvwhG3J/4yIlLUO1jK4WGKt4wYYuGYDMx54mMIkudBvMPRvsA/UGLjObt
XoHws6kUHux/K8JGhJxC3hPX8ChU/FMnVUFDjRRgFDwI0fi2bZ0ro/QVrDTU9eCt5ezj4C+SQHfD
akuHZHfYFUK4XTEbF8mSCBuayGekt+Z/oGXs9EbktgBinl1JU4mb1vYE+yx64dkIzqO6+V3qE/Ee
qxr/btskN0k5GPEufcn9X+zCiAdJ0FjxunGJPjV5QJX02aecvf6yOftJK38dkPS8WbHnFauxhS5J
7ZNuZi0KKE2211IKc2YD2rsRfTE/+Y/VY8O2VDR0hhm5vscMbSU0fb20o/xtkL3BRrX73IxN7JiC
Z8txOPH+InnTcf0CkrzX6eJuSLZN79CKp1+zmW1vNmETgLQkPkNNGxNFaKmq0ibFd1XrkiSP9Rl3
sL2ogiZwB8EeGCpXihOkBn1pzWiYZ8kBTtrI4Mfa0KLyq4ZgkWBDstwtAp+oiMHqbNOnwIP7BGHi
BaiP+w1a7qNkpmqh26clFuktfzRJy/bkHBRTqFw3LSRsyGmOUbznVZgTiFgUt5YR3GllXMLDBuNA
uVmDgigbzqTrNuXbex+wShcNm7VulnWb+wlDiCzWfTt1TRGgJupAkhgcbs6zXmrzL5n9f6V2EchB
dXnNet6tK0IZAPKjfdJMUCy/AlvlfLOQNqoWo1TfPiCEp5hloEv4zIj8ZaQ9FGIb1k221B3xyLnD
pPizSOFMzxUMb4d3Q//2QEvTdIF9cbHwRnkm/tTdLk3Cl55XMX8Et+5e12S1TCK24Aaan9GW4zUY
LLDWDukkHyJ3L6y4Xd87UQKUwlee8tLBiYDWrJTDfFDH2bbj3Da2KtNc1RjF8NID/vj8GMkZWGPl
9b9pseYymDuyI7DNsOfgRTLTLaYWokB19f/UnaajfYlyJCAkOFNzw3etXTVyAJ8+aMauez0dDKX7
xn5yiaxu+3nshJ+W4lQ9yN1vwVBh/shw7yNcTIGErua/+CYJzXBiX3jLEZiPoIWWbB2XK0jnvZkB
SGWzhq9umtH8nk2CYTEQeHN79J8iceGSLP8zjvdYaZQnId53bwGXa620dw+fAhG6lX0v48YlB7oZ
6bIUKV++mqnT+6M7+86nsPPjVgycYrN8Vm2cQQOK3JVRAT/SJXLA0kqeWKTWrDqd9ej/l06d39DC
nQPurWguPAiatsE6JLg1bykQ1F9LRBNgStUDYV1bXsXCGj6+x+q6HKKUW67OGuv93b3DigveI8oG
q0jBPcHpCFOFNzGuq4CFn1R8Or1RjhdPMIL4V7Y3OcRA+yjHn19dYXWi+1qAGJQ9ZIecDGtcKDxB
yV0DjbH4tGfLEuf+/UHobTU106sFvc3xnW0bt90j2MG5ZM8d/Jx9cSsdWxTkoyu/5hPFXcuhyaCm
yl6sv+4pGK0rmk5ukRmS3wp5dGB/j9CwmtA1t92xHTTrAzuDFi9EjpkDbXp3pPhPyzJwpYSI/uJL
loNjkJ8Cfd8aUk8ZNWjH8MtC1LCHvTSN8Aavm0GjdnBdMt846IRCTXMO76kVoLFyTy7nTto74fKo
QnhnaBH3AFPXEiVyQBSdY3ojrxSd27pmboCio1RVFnwtN6WFumnPGwwIORqsR5zoxEt/HLl3aH9j
inwVc7JFMdmoH//tM0Ea90n5GB+r7Qti1ld+O2QsZ/EcS1eWHtVSAkoFAbSZKNyripaBz6mhbIAG
OPf3auyziwhzvAWjKkYjpXyyb0uZzHqGeaE7h1SLv+N/jDpPeFwEFTI2vnq4pu9hqiiI5uWn38aY
la7DmIt5Dx5pTdzGvgaOTImYWu973XvgSH7CST+6/yc2niLOo/4s80J2flf8Byn5pNfuwMF0ReBy
+8rvSvlgFFLzNw0iBaHMDAemw4moLx4K5AfaAvo5g3qdBwr9QwHWl0vNzdciZSThZxzJprGh5Gc7
99UIXduvLhLYlcmc7IQP2h0BfqwqOebMqCvfBRbmTVUyfmIPP/l0JQAod/6QfvGb1V+j7U+bLLaM
WGuRIUau4skffy883iNvyepYGizgjKeb1XLDvxiIXotwUMHuxKriZKtTV/jHelK5uhp5AL0BAE50
0oHSdkLJRvO8x1o1uZBuWQ4IpSSaqJTlxhPgsMFRvGn9WyBE7BTeQhIK2V8ApoYD1B9v8JmVOLpW
dK2CdZ6yfWL2Mc7MTBVEe+jvtkUOgesBq/eLvhRwLXh6SfWAYqVpi6umUV9bBsv5+H/xzAvCVWq8
NaeL1YlnYlT+gB+6Ru1Wheg/S0Im6SN+DYP8VaT5qNmeQq/1dCJ0UfhXyc2+BJpDHxb24OHylhYk
nQ7S9lP9bP22Z7kAxfx05kEEimWUDkwyDCgYRxBGv6du6PEsFzW3/ZljQ0kR5My6qfSRzSDq28N+
1E0wscXjgRoEq+Lrj0f1yJ3K4vlGEjJ4fAtyPLINjNr8enx/hU9TChm7P1nyzMeyiH2kWopgnJ3h
f3pgbyofYJpvvqPq8mJJZA2DiwC+aEqIbtZ66CQlBNruk+6e6eYThWZE6n5jM6I2Jg+aRrvUSced
aHD4sEnuFHbE3HBUGcDoe6HfdCeALwt273RXQ54a67mDAtluXjIGS/WTKyf4vrAIh7fuExhaa1iS
aCOWxLSubznHWchlLlTXO0CSMxHKfDPR3xaDnLpvgTlyXsx36CruBoYRy7tMWMJCP7S3fiRyFMtX
yX1nAmRHneXTH01x2zORtr82v6tf0WgvKAQryJuNuQ8N+oAdA7RMlOrxwzhnSAapWqqvXC7kSZnv
FCS2a2JtS8W2iJ4Rt30cGMpzbiAWnUHWD+/UTNbWnASH9zTh83cMawhvV3ojkEuUx4qyv/YbW/hC
mLBxlR4PJ1dekYd0FEWMgOn/xdqSilWq1aQEqNqc+h4IrDaSbiEfYRJUU31SJSx7Mu5OokigNeCc
hgN64bdDpf8zgZ32uT54W8kMvKpXcbPqzmjkGtbMhAxWIdMCM+ZdJTo+0mhS2FZoYC7qsj4N2IzB
+nCf2JN8ONnArqlLEfjkUk9bFdhL0ohxSA9kcD5IrhjmSO0/FMQyYYaOxLETqFT0I7pg5m6J0ysl
ToEeRwMN/24Um26Bz0JDGWroNY4NaElm5GQss9/XKNEbhyqJgkFJc6HJ2rMLGmEYvie39OLGuLV4
0evmg6V6O/iimEM5NizeYP0bo2hWOfXdmMiWRFyTYa00Y7ZURnFAoK47xYPj0qs0WqkPgUqMxJ1X
7Q7fEcOzdp2QwU/ibBobA1eNkQD6NYmjVQTytf3VEpsplxSBYhBBYdFtG8VgTrDQlbVdtNyajMFe
fWZXvNMZKxLMYSLr+OTOCKSqWFVw44SEAADcX9697oTADBin5BADsrQ6gKsNyAFsfwLVU3LOA6vw
H2ubjMYXDohsI/2HcKdlJhQk9h0WGVrZfdIeNseQMYE1f1qVjgIXlXNgl1FVmD+t20nSdnJ0jJf7
EPe73n3PcrghnPbKpouZ1VnMjYt41WqGQRS0gau2r/kHFt5xxXns/J3U+ZzX5G5KN/wh+SvjF8aR
GZx6aGiJScTQStdx6Cx4KebZg/3Lgd9qCmXaoFnnvxOmNwLcNA2/WmyMgocPYCINJlaZiQT+8g+h
alczPr5xG2fhJcLI+4d4z6cZusglKARXflgW71dM7BVwMJSfE1LO15QeuZ5PUI7MblggbcyFbFPQ
+zjbu4P5h9nSz9MNHVQ/0ZJJR8dMefIZh9KGjCBajDDA5ZdWE5OvSBpq9yXj/KFAsD5ucC4VUvyV
RYu0a127IVoHezPCafw4OjLsBOiYVE5XzUFnaI8+OYmdopl1OFmCA7uIIlYLntymGhi7QT/GRRId
EIABHl/+FmHyiBaTo8dgKBlbfqao2QX4t/E+sXyY0l+Ojw3YhrBBE4MzI4s7PYREtp+967kUPiYN
8ZSd8b/GTqQxERxu+p7d5fRy1i6nTJ/vO/XiKxfR9I66qrBLBE3OG5+XspclH+ycGC9jrT8gU3cE
61rK+4H+lJbmsmp2lEQaPEaQsVYU7+noCb7XXlfr3DOQSEq5rfCo9A+FSeS81BeIrKIYonGOtonc
qbn2PYuCPPNtTyiXWRpcYWNcvyAkE9IIcvbjkuaf33l5pfxB9fOA3sFXCDnN/eQ+GXG/7jbahV+X
bbZMwp/MqYG84p7emtj7v6s8NZ2YKspnLmgRwt2fV46td5c/f00+Sj+6AQZF8Glyh8PhAkqWyg8w
FCj9hPqLuCRYlC6aT7iuE201/yXg42yWxxG0Le+L9U1LHCStx8VP+V8rRR8KR5e2vO67a+d7URGe
v7Ehh6mRT1ZfaiBjgzDA1m2NmqMDHKB+gY58n/YYWqlhS/GVy3tbzHUSFC+V4kPNciD1ryxfsO19
VrSFvwyex4gPzgrXKWTG16zzsPoALddGxVR+vfdri7YPsc7l+wCMr+8LKdSGczdNhNe0IFrc3pjo
sIuEZAT0WGlx85vSLWXkJhIauPO7hhi18LQsXKim8JyeGK373Id9eW25J82Dz4/dzNOUYInRaeGV
9JaeYghmtHGPoxZ4rxvjr5SZvQ84aNT3B2SzIGVUY/uSa49P82BV+/AhJ1ukYQiDZ6a4T8wDCwhX
ELkksXrWAB+rJqA6Cx7NDRYUMVNCyCGzu+QtD5HNB17yPsptwUxI/umVk9vwS0akSf8eKFKBxEuc
RlI5BQS9X2O+wrKaCJ8isKVrmexUaYQwORYbnKpiGtf/hqFvDRw3CuKT21P2+DmboHLJGJ5EvDXF
42AYnTfgzdm+MUb7mt6BtSz7OpXzyl69C2qG854gQhf7qqAxWCh0bUmjOuPsqEiXt0ZTH9n9r1OL
h9glJ9lM/1Cq320OqjRSj8Fl2+YasCU8dzFAXezD9f40DR/vwvG0ClCdAfj4m3OLzPKGqg9WosPr
t/WkfIrovDzH7GlIzgD1YLbptwp30b9TCkwh+/D9jNVZIhyrlsGzkkx6cU7dHybc99CVGUpX2BoP
wD+Tc2QWd/27St1Lnl9JI8iFgv1ahjtJ5uISEdWW5AJsHO7sQZx/V1QrgADo322mX1ShosStN6tQ
NpjIv2a8l0ZAdBxTCH6XR8dKx5pE/TXAcQwkMA3NUIwuaAfRztGBnvtssF+UtiX7rCIp9na8kml/
erIT1g4BfafS4O5OSJAysfWWMvMT5LjpxkYn3kEYeF16JuEK8lY5pp6ypGslF6GMx6X5xX7NkSeH
iP7VwchEawE4jbVv8YQ7fZWzLox9VcQXsV+cZPhMUvy8IzQGIuFMozGDSKTayA6A+ayhH9aEyySV
Ea/vL5Te6oNttj9alTFfZdcSw0EQMQD7aT3sAiTStCEGkg0MSoyWrLTMSTjLNfdt4Fr+Un1EJ0qi
MbQS2uuqEBGJZ7xKy5bTBYks9FInomxN8I9NzpXZyZZR57T6TwBPQQEydxra0pYgfMB0A7t40e+f
pqRMzUT1J0tHGDEqxZcBJ8rJWu5mwzdGmxnxsB2mXP7rs8TD+BAej9HrK/ZINTMQnBsgjh60iRiV
Q+wmRHACRifX3APRf0L8c+lVS+dwgr43rBXfLyZl+79VICdm4p1LaGxt3uepXeJW8z3rebs71fVU
MMiOFlQAkdwegGqqorrfbKZo1a5/f4mYjHi8zeoE4xnhUQ351I9rD2Dmsopg4fJymW1O0zQ6inLo
sTesiLSEKjRgg3bOUm/Umk5CjtoR5KQcb/wAo7e9Dl60gTk0YkkAdP4rCSq+sAIxZlCFo+/eINP6
DfykJ5PIVFJylWy8ITsKQ72CeuZ5m0ngFC7PA80sMveG+EzSR03kV4FpKHZYZ76St4JVO/YYMW5T
I1G+VdPMQkdUEDB+PVc/7jN2BQG7LfgJe9EzpBB745VKn46oe8aOCc8fK7ybIGpta9SPIrD/jCS1
2136+JAAI0Qzei2P1sNphinBMeLiygXCSYkFAUAv6K+XvQOA1Uk+zXI17vBxqJBz4s6DPGG2LfXA
usU0VC+wBddSmAwzlKvkbHc4bfyvFuZ8x5ghsv8znvcvvlpoDl+bPY3MRuNpBhOYeO7bBNFh08a3
pPwgc7UMEHTHm1p3odezyp1A9HEwIZGNgYZrEYVueX7nIpvURe56uqYbtpHNDA/G1KFRBOweIUxq
MFI7eOBV/w753MhFtfLf/xYqGB1lknok1WeEP0B7GHcqL9+jxk8oglLoeq5b4+twcK3M3x6ARXzW
mKYGhq/TFwAlJZLgbQcV6WdPjiWirSl3zyppcZbOOQWSXvHRHngoYxbYwI23IB4Z/f7Yd6ON6tc6
9ELP3tUvkpJYvcOqLXK8TZ+qaJ5RdcYXEyxeNsWdvmzb/+tPgq6w3MuV2OSLTPWQvYgUl8MR9UNo
0PcHtd/dACgkwApcbmlNTnbsQjHl8Q4uNDM7Ycb/4s5szHQZzeM+OiztbKEybx5W6kFYk9iffk0k
LzQF5tNfYXgnlrBcDWbESf1jGg6bxwB5pT1oasToehE28crzsOg85tXW9I00feaFxAqrY7qZ0oyd
6RIxQKJzGkuyAu8mfnnLiLJMfFSTI1llN7TmMymm+JuCBaCFiUrnCQICM3GZqJu4qnTGjQwGHucX
QAxFIa7CDLXwhsqnIZg+QpLNXl+3Vd0PqRc5xsY4yeywJ0nnqqVGtkclIb+D8VPHEa2vyMQ28La2
oinwb/8qZLR/5pLLfRTRAVZLHqHsXh3/654nVLKA5uPw4Xb3D66QEg6FK8doNTYJnjntIh01obMA
q9DFNHnZ0Jtr8svi3p/+UH8xvA/yz2XGXKG7UcwBAFBkoPRf7kWSPqLytKmSMwvMWaL/PdKCm+Zz
bh9OwIou+kf8pE0sWOzumoKkIefKfEw1wSEC07A9lm13GR1fDmyCA+jqNuJ/HQ2EZt4RrMhHG+CA
PFRV/SkTGpvR8StfyCrVD7OlCVogwZGOSM3GMF8klPoALUyU+nIw+6S2+kHIGvssm4lHrZ0fZ9LZ
U7QQhJxy8TWzr2pG7xlxGS8WubLGPlCXxW6qymVKYDb/OvFL1UKWttnA5L8pWsv09FJvQz5l7PKN
vuZ5mMUqbB2AZAiZCROlYjrpGV3o3ZOpeuG0AdLy2+xNw38IyrB381iO1EfhG4eKHE7lRKWnZ4NV
/XgQlIdHoOfqvt3AR2MBAxIUEGKMHbULXOt+i4WZ32hjLSjZ6EftntYAcriNMuHtCyb74kpNGlvl
x/mbWoVCUlO3Xz7W6XD6F4+6pY4F+0IDUwgAm6kUapkA8uyzXcltQEg/f9+nFZfWT1umwcn1WBIL
PQDz4p8rHxv+jXY1b05DB37VSOCSbASuCoXpe1UyB/B0g6WeVURw7FMyB2+ZA6prakY3+YElk1SE
6lzJTm7OmdXRs1wkQEYl/e2wTZlSk3hEB+sEUUFgnjt48Ze1BGhoF5Zgd/CZqW6u/wLId4lcafis
1K0lk+cTnUw+kgEuyXpS5tlYOWvTzHR2pm6gXP9avtlhngUNaOxSOl3/pANuAoSY9/xUkllIoGFS
VdwIVaKA5R6dI19zU08RwqFfRKQz8kOZB6d12OH6KBO8O9qHVe1DMkZPI7bIkFIZ///5nloRDYti
ZyYfMRlHv8kyGikiCOYUmQwLTZg2549x/+gxbEZ02htJY42xRAdPTEQwlOJBpB/afZXAE5/BRBLS
DAHZ31BNQMMsZUKO7SilN8po4ndg4bFsNbn2cGI/ax9VOLAwMNceAkOQGLnehxcFfSZfSOfCv7As
63U7yXAGRtLfShUO1Mzq8mFKq8gRdn5uMxLqlR6ff7Qp2R2Hkh7hGJE1gQxuJm9WoCw52JHZVlOT
kPg5vVoe/f4mWcZHI8DN+HS/B4iZBys0UbmGFyqO4qMJJo95eMqeLf2ARRm43CGU9+0cd2JKE39d
wcrFOM3ioj7PrfIVPbOcpcFJ7GxrIWWQsIqQBV5WIvBsZULo1r5xTC7DDl7bZ7eXA9UCD5AvG9G0
8/OkI3xgQaRD+qFh+dUrLg3a8+dIr/RT7euYASA7n/gsHH/46MUKF16wR8Ylo4fVaqmVnZYMkuxQ
oTaHgOh2mPECKyGEGpF9mWtVlXXz2rDmwqh+bF5vDR1pRP54+OKGB9ZU8isYJsr2VHUKrdcf32uP
WYLYHKeEefkbq+NrLIi14ID2+Ul5OP5NCUcKYfXr/Q8pTchSCpG3zSKOgeiexFFVoyBRaxra0pc/
AHDG7OytiuzsEdqegn1HgJXlAcijhYlRLZAeSriYODnIkvmuuUrGlkx0n3bbvHZgZY9rT7+G8Tg+
uXdiY9X9ICn513gBFfnBkA8p/nM7j1bOyg7AQGzyPOKN9axpzbGi8NVfLErhZnagyd06EptB5HPe
SYXIURadVKspQqeXudLU9XAM8tWiQQ1lDfyCPHfNDe6xeu5rEFwqAk9JT8KGz0uG3ZsrV2PLyXdr
sysFsdeqEOqRKw1NjsHS8Mw2/do4x4o0FRop8Z/2S+KhWQc3ABa55CQDLc0zPdObWdSCeHARAPmg
3DDZIJF+M3ayyIi/x250NxRwNgmQNW5FgbJ3eRPwpY/goOKA8mYGAVBGX5bWJc+8LggCykaXo7Fy
K+d730zzYUXFp9mre4PCVGuuoKjD2Xz3qw5VIM/xhShxMSgEe4/y6oQ7Z+eF81CgFIuxzI0uoAi2
jsxCStPPa+omXArB4Cpv+bDTcvgTbHalrHiTMWfGvdGXJTFoHQuvFDIWj0RbBiRo5jl2IiZlSYdI
E7+pVynocEia3YV7NhdgqQNFQ9c3xAzobpOXUAlp4xLhS4Ncsd1IyJL8s9a/Yp3fgsnjDw2zW5ZR
DQ2rcX4UAWP1EDceOlJ4IoRPffYHMqn9UqFrbY6qLkaNW8yxzGn3iZGa4oVum0g+dluLXpVHEgmo
TU717JMHJEqEFmg0btkQpoEHndR08NaiOuYHl5mtu2hgGbKP0/OU5dnBOqkmzbuzdHe8Q7/ZRV02
tynDZL7yncDHU6E4CMYqr224BI9rrIMvZL1NsyjXUPzh6bdvWU3LCANjCqcaYJMg5IvOuDG3mPEq
bW5EYX+681M+vFdbfHJOzDvK/kBI/RcN0Lesg8ZtTGi8Hz5eHG7HcltwWxjxof9yzB6ti5SU14Ma
unWCvXyeD5fgFtGYLSX3eWrWq9DZH654YrXEueGYeLx53eDkpUoeE3cyo5vkDpdzorjiWwHIgvsp
Wtdo1Jm7pUY+Qvw9Cy6XEhV5vX/JnNfNw0lknLGQtsGhW8u6RTWx/loTKPZW6BgkB26b8ckNtSpD
3WE9LIXmKi7jqzow3B8QL8dZKHydBq2QsvUOmadh91XMUz6Xx2i0PdwBxYP3LCyCAOhk0fHOY6Le
ZMVURCngmyyMsMCcIiqc+L9j3hPJcyGoJCV74lIPop7tnoSI9qyHKfoxmJUC86eSFC6P7Sybnf57
nAy/yygWRrK5DcKPhduh+dSm5sC/xlk1BaIMolJ/VP3vvgFO8hB2eD3nvxtFtMl2oFk0LYXHaVG1
Bc/RGRIws+qzL5hb+mmays1S2GMtg1SrVVIuyygzvhxpRTbcq4g9GlCp5jjtA2AHIrC9fGsBNNLP
S8gxbjpMzupyV5li+uvospD6iEMmNVFhcnkqWHlAbJGc8KcIc7GJMjhQHFyhQ7Q3WUT/khpd5swy
Jp1oahK+x/XnC+6yvZwI5TB5wiRBVYltDmPELBx6C5X1sAgvsrJ5ixGNkqy0lHIeInlOsdfKXBgZ
Z3+eLRy2AmXu75H68Rlv5U1Oi5sHoIqTaIf6L6++3PxHMhJUNyQ441X3WaUYx/c8S7Q6RBEIxKIz
f/hYpSH0JLFDZqX+MUAvlUXhHgimnO0woaFsDEZ7SxK93zOiyYuB45qBFuk20dUv9vm29adbxv8d
Y+NzR+FDkMOKxjHxR99RS0Xtzp3r3dqdwXmghvJk9NUw2jPp+YgkT0OGMpRn86DJjWFf1oDiw2Vs
gerY+Ej+rQfLU6QBJNJNVc41Tb8ioEizCqmAYWEg8+NLWLGCBqt3MSnX6KKCJnYwo4XibvT5CvHd
7/+dA5ichEI31VKNKKS9aScn7AC9Ai3qvzGInFre1iGCtV4ckTTs4v82hq0XZZMDjZbQFlF4WiEX
sV8WDHsGnRJ3c3uPuWpffDCCYsGqtnqWUHuTG9ykEjiCGHS4+K3KYpacPZeNwU/iSvblXMflptFh
ATg2xsRn85OJb5ZTydqHqZeqp+mfFy5x2adic4WTN9G4UP+A7vcutr/huPrC6728LVw0EOA9Q2Rg
+0SAAyNcduXV/mwkG+yLiMKimKqXKqjYQW4/4DVgVoX8fWRRUbOykds4rc2ZwD4bBg6JPVkTXio5
qZm74J5NI5r5RBzWJVebtu6hLQ9RYq8mdImDTTfkQEwaw1msqSXrbJ9h48b+R89mGqitQFJaOfwE
wRCbeoH/dxxhbJaob3Zup0TCvcJ0lrXyBkspUBM6kKo+Z+o3QCfnYYTAeM6lvIKim2I458Cz1c13
4dhEmk2GprI6+0LLHr0o4ZXedx1cZGPQv3xxboqUItyMFCVQVzHj0Q8VI8RA/NLYEWM8pi10BRQq
wQtL+Wi7utQDzORTXNSl0Bz6y7BtPeTWJEXGcly7FwJxVUw8Bg3Ymr79ovecipcY5xGlE0IUyfo1
ifkhj3HNDYHtcshRyOOgfNNBpbYkh2wQO0ZiYfbFQCRVl6gWJ31VYNPKogfnH7J8hA3auSacgfpG
xfOltYi7eqD9yf03tBce8EUJnhQpz0h3RaiWwRoQO7oj1Wl+l2awSvcAS2f38tLZP6sXNKsqHjyE
1NlfmY8k+53F772uuiXoNbZduSzWCA/wgUVq5COeZc8N2hCoizpsSCd4ScuZ1JmL61gMCfyQg3pf
TMMwfOBCPkh6kBflQIq4mqCq/MyxR+VMXnkQi/BesXiqy1BBmVLMnYfK0mJAFlxbIsM4CEW8m5pS
eJ8CAEeDtLmJWFkvSaTyLOec9eIu7/wmgF2z2M2JALQmy1L10NQ6ri0Skjyw5VD296DMfSuT3MIu
K48DF+VGr37R9s1BN37HZSrBQhHgLlfzvAYK6YM/M+zdBO26yoz0De//wnU9xCGe9i/tWMph/AIV
cZZ4+rw5JMRqvlCdOG/t1ZKkPmZaGDN28NGh3+ZEiRcffb2Tq3C8bHejMelKwBnYn/r6sQwGYrts
5lgNk0b4DlaOzjC8iCbkV1li5wktwPb6NAiB2Pvh99NvmCs7vcWdMGANGRiFFwIS3FmwjpT/0L5p
ypUYrmYKY2pIuSjnUZUT05h0/X7naG29perlbjOLOezv+tIZpkAznPEzkgsA22pIhjDeoe0gPpP6
3f7T37tz4oIRPN0Gq3PPZVzi+60fbZ0eHqCV6rCeDR2aj2BKGNng7STXAUmDnhnwDGGbpSksnu8R
+vyNDPTJOCJ5J7w4kxIP/tgMA8GGCNFiAyCk9t95ObBEI3tFSP1Xu9LKmlDhKepoBQ3KKEk1ehpX
5ZnvyPFx1N2tup8GSxRcgo2j6NBaBJ8lLEe1u5m++nq6smwoSKPPF3anDpDIu74MKYvx2NqEuFEa
04AbxtaCysbKmY1Zh6RRiH6hEEFBfnQ/DMK3ly18tc5EGZ/iNTjBl4D+LkcLMeFOX04CAGVL7y3v
0PqsKzMXcd41kqp+urNu85C6OM4dGH/FsziVoHCQXOWdAQSAeM9NXYgbgUdn4kel9P7U/Ju/2soy
+Y5wgRagmAY4dCwy8SO+wI5EeURMxiiekM6Hu23jvxhb5DA+14zEo3p3k7y2s2U2PPRjF4xAr9It
rJyGNodDU2m+WQNFotPicF5GGoSQufC/sQI6eEccpr+lNkPb9AHTSXGlIwqH7gtBTRaypOH1z8j0
/9fpqLuzy/dJlpAVHY0ypYc2T52UpFtud1Y4jhN1ui6imILt2PHPfyHGdgp5Zlf+LT4B7RUdSXE/
TaqOTtZLB+FrhwSRjcXQHcQvOdaZpKTw8NhalAlwWm1EsrZT7+qQiEagWUutDmAPEeQEDNjJ7SZn
aAxie07I2AU1ndX9AYQPry2U5h17FbKY1rNjpqTGV0ioOSWmeSeIPBVyXCbHh+kqajZyeK6Ivmqp
9BzsrQZYUa14b/fXwBLUE33TZHeZC6iiU6tld/G8UkgjYdlLKt4Pyr6aOBN3DWpd5flyWpcdYq5M
ayILnHiypW4BUr561Wm4/lCWYsm/qxyOURfX+HVUn8fk/2zvcZusGRlfyOKeZ4zkf+dN4v25zZoi
XP5EjjtG7csyV/TAz1OLGmxb806LUJd6VZpUUqgV/taHR5080x9DBwYBpo86ppxd5qv0zfa/Tb3I
vFs0EmWVmzfXWNsWC0oZ92VeLSKDBxz0Ug0XDP/OlF/Op1zf5KbLZxR1S9YO/3v6PvsGnBRN3a9K
y0QnRit4fWVv8jDlDB3CNjRo3wf9u6f/t1AS6uXFKmHg/DaYf4SXGh9jt2MvrmrV9W2hjD/S3HtK
kz0zJbKbd76SqhzlNrHD+h7jO6ghVJdPAwUXszV/wNCkGZrOjQI0FiUxpbDhtlsleEoEwsqzOf3N
jX8XViot4RB/RnGY7kdT0AFTy12dtHwddKtsNtpn8PwtW6uVY28AaoG0tnBCD9WSHDTnYBVUYp0y
kQ7zsN22KDXY6YrrbtuLQzWj9UfyORej/C3VUEeaoaDvHQ83HQvdZ1WdKkM92WYiLS/VGo7PggUd
F4qhRQB8QS+2aXUyVcSlWar2uL0Hc2qhYGIiyc6ZvIvnFJpDLj/yvzSCB7sjAPLA83tceJCjiGzw
2YSIUfRV5QIimLUimF7ocnxqLUdc1JCjQlPTn6FI94QL039r4qjVNXyKEU5JeljLL0RWnbYuarQf
MnXC6iD/R53117ZpbC1vFmvn2F6ivpMM63WcgS3z+4bWFjy9pffV+rr20/nLNePfONlwfCR3JKMW
vVs+yrl87x2y8Wz5nDjgh6Eu6ptiHHt2Mqq68Y91dHMN2Z9DFa/X68E1zbCparlhg8/qK1qfBDT/
f4Ioe2Fi+jvbyK6DEKTk8gdBX/tn3i5pdJGz9wfxfdiDb4DMYF2/2alIGj/TSHA6ZFluiJqA5Qj7
xIuWWz4GhqZZtk+/+ZojtkHFj7biChZTRQb2zE9BAmy9pIroYX9k+AzSu8gGr6cZ3oqQONHP1smY
rNm4vdnRSzGPhdB692oLv65n6XlZqjQwvcriHlF/MIZyEbymtAG8apeYM/ntkHU6L7/wePTvrRZr
a+z+QmkkqgsILDB0c10V/zZtWvVfxOY/T9YSl5fpiUbiExSqbLxxiZynodN1Bvu3CQmApEFWcYrT
3KOIywcS9H2BnHzoURoBKw/Z9aLAkoW0Q1z5tEiLHUea1SF9fkJuNEFtJdaYmWbkemnwF4eKaDr9
l7AVA0iywwEjXF1uhNs73ceS+v4AVAlu92WEdbjShbzGt31GmRP1Q5V/fv3mgk132didhwHjpVzJ
s6pSfIj1yIzY8m/GyJzEEL74FB33gCR0WjRO+Lp0xERv2xPHhoRGFFnspQO6Vm5A4BjelJotYJ+Z
XuXRQGKWM31FynXNtttmkZSFiMt6FmC0Me8wF8BR5GZZ8kyy7GGICRm6Kge4UYIHTUShngwatGd0
k5l6D6qjj4VpLwbQ86fUoxrD0mbOlkq2fTjSVR7ZtTuUCYXqYIBUGyR5vs+fqpFqUGWK5kOqNyrS
+jUeHm2f++I9ZB3ngojmr3AlW1erjn9nsCTACMCsMFvHXmbR31TOPMXOrFfpCYgMm/9ABJyifoPK
RskSSMrUy2yMxqg5INH5bKPMeSyDsE/nw4g3icq24+DWH4GDPyoCVgn+DC+hDsltgqMWebxyBtqZ
9nUR+OvO+r3t9W1MIBMb0EYs/ahBm00si0KFpi8wv8ZPO//iAqdoIFU3PDdPvygptRoUZOMILpvQ
QP9AePH7FVnBfzNRQJLBdemaFhJ7i9ryXWr45F/6clCNrgeTUT9Cf/tmkpIV4LxKtsYHgOEIWbjq
6MryNspB7yOOFpSjwXXcGHI/OQt58RDfawDeGJ8ederdC1cPXrNqiZVpea8ovPdWwlqDcRkMI1jW
kDLtdGBslz8Z67SkP5ZfsmQD4zQRZpfobE/Ii1aU52Oq0fFg90xS7hKLa7l362PAJk/JGE7+2FIo
B4QeklhyePG6B3JdC9tgopzJemgaI7dppKawuFIQqUOTHvN72CA2zjnKCV6rmO+BJrbneaX5lTpK
+nKxhwXzEMjpZxv2ii/3OdVM/mlBL/JOfaHf2MxXMuKEIkSwyH53eraE/drdss7k73cXspiSbSNx
hHPZRlzcdmRKoGX+hyB0YS8StJ92QKNahSF7tNhhTyuB8T/CI/0zflIAsX9XERIje928AaYcsY1n
WbwjHgOK/5mrQBg+5PkvpMJ6YNNeOM3jeeu8pCOERA1W+9fJ1+/KBrbXWbLu6YywLbvwpqQM0QL1
/s3Y6RTlPEMdWXMfT8Y2EWuqxuPEIozcdyGq5aFFjXW2ZUoK0xiG1cBUCY2/2YTtBlI+PkErt6jy
g6wPh+rN4KLfIwikhRV8ytxvJYJTlpCZZbDsUpIvE98n3VVoQ0pbMKdnzRUyzRqO48NnOiDvJc9e
+N9+cxX521uRUDiPK6AEyIK4Rq2x5ubAAFGaP7DDvOKkcrUjYFhcxq3kdXEJDhvcS+5ABhzylm+3
+NREw7fk3R+0dVoUux/1ziW1JhDmrop9Q0XLcZX7aBH3d2Im5viZWB8QLFdlMX9l5zsB0l6wB7sM
922i72aNDLVAw9ZefMfSf0EXStRaq2ExNGQ+ct1eFrI0iV09C2Q7BZGKWs1p+J+mlRj9bhefE5Ou
J9ZaHwgXkQAxIggXIQIzYwoMKT/TOQlfV9OBG/+6LJ5ZS/TLayFJQsSJ27FAyVRDmS0HzFqk2xo/
CeUCuFMDMDHj/2AxmM5g28cf7pdeJbZn+2JWJC8WLCV1ZXBF8ycWtSjpjrnH1hdNIQKaNvjLgI5n
Q/pm7W4QnEodtAxsuswSh/iwrjbxwy6Yb3kUKa6jDV6qKL+1X22ucOTrj1XpXU3T3U1ATmyH60lA
tQ9MiG7/GiqLTrrIu1bE4QINAeR5C/6XQwCq8eCTdUZw+KV6LxhOLkZiptbgi9pVkVK9SD3UOpdb
xhRPUj3L7LS3tcTQZz1TUDO3Hdr1kTEtLi62WUvDCpf1IOo2qO1mhS/atY3zEDKO984ZD2YRJfy8
NWJ8o7BG4deOVSoweHZZQP3mFyv5GwmR+mL/9riSOUTIKT2o5z5dzTN2kDGlDl06SoBQvesbFtZn
PwglFWMAmc6BeRUncr/FA/k6rrGa0PGVsCwv54DOce7nmj+jxsHH6GDTs/JJzdXCITx5fIEPBrQ1
4cBcxz+3/CsKF/qQWAXMZAajK2DkrjQFfj1YNXQ0Zo11s2cAanCo6TELtuFFwLQ36dcfiJCXjnsu
AOaf50ulAGWH459fdlbtJ6QcAwqnBSYCzc723oJ6V3pUiQU0fIh59dZBks0qrWhpL1fT5FeyOY2i
OGDIRrznOEuklk+pYBZzpI+TAZ+Lh4NRXGl82w0EOYpoDQaTpiMUqZm5BhjsmSX596hif4rZ+hjf
CVSpJbr6UAKvPTT6Sf2r6WA2LE7mDd+DG24MX53/Tju8L1BQgraZHOv6guWREBEEWslE6ze7effj
O2Tq11G24UUzMQcRE9Xh5P8Cz4uO08Iuo2aAGIcJ6+QqQW34mk3waoji4gSiOerPIWkWdXnBx/kX
L6MF8VSVwGuYSDSmn31/f76XTqfXPmKwuv8ZtW5MJKL/EoMDOINPFVpvqJMMKbl1spEFlApuXW/P
HoBwUrnsyQvPBMmKDjYUVFET48lO6TjP3S+8toCnPJmZk7tteIicdG/R0zhwi01yZG1cUG3pkP43
gG/gPqmGV7hN2AXiTogws5gMDXwFpgxWberdtsqPa3HImBV/HpPGV8jXk+8kRbA2BoPaEhvtSFc/
DG2VUFrXzQ0SHmmQty0xtOSZaSnMiizsDuiAtc1iWHbHRMIpnQY8MAJ6STOSt2nxxGG8HsnRF1F0
AUotLKPNWSkINbu5IbQQW8HP52OXfYptylS4Hx6k9V8Q9jdVifzljuRDKXEiwQS5+bv43H/Sfwg1
LLcCvgy2ngemR61RZDJA6q+vCbxA7InpHBCxL//xiHWEtTsBlk4b7I96GNYPUsU/iGxZV6b7BcIN
9Rb6mU25jnjKu28O1BfubUXdxuT4gex81evwhfLN0oYQLCZwpcevpIS2UecgoKfyqnYlRrHOpgKz
QZ6bQK0MylS8b30U3Sb15Y25OTJvDonPJCvxkkNb4UBox/hi1JWgnz9xaUERvaOcfFQACFHD5Uwc
8aKY65eS7zOMk1wE7cZz1f/4f6cgLyhpp3w45tw4nPbD+Dvq2WZvQ48QY1OyBsgTuYRFdnk7YAmQ
1g7EpA6xVvMKUS9yywJ666AKuZoQ3WcwcqW7N9309bTAxeKHdq7q5o4SVb37XG6LYMWMScKCkxrq
pKNRqEFkQjpDpBkfpGmdQKebTeUwRq42wjFjzhNyHr996LRyluGbJrtBCO2F8FH5mogosGJr/L6m
UG8DP8BNxnXu0R6fIY5mXGEaisDiiiYcq5o24b86gwK80XB/H64qRdkfAMWSYsWrGa3zrvcTHiSK
Pus+ESq6Q+iiOGal/mSq6Ggw62kZ0SSdTH0yA4Z83x04mmY4wP88FVxzXMqHds3M25blTUUvth6q
iscdSjlqk17LBnxFKGiGauUTWqaJukiuMkefLtCwv/xKvlPVhHpc5TqrCfnfSZ17qkyjpjKdwebA
I+8Q3QGrtkrT+lmYVW+u9t8a6uXZcXYQooJXelC2GUfnRQ+sEBQ1pjiQS9DDRKWYARjTqElX4ayk
hBZXbcKbnMdcjsFSow5pp0SN7kJltMj04ylpavK/DLdp9RA9dVLXlQHBliRrjDGRrlFDXUcObGbE
c4Y/nFFiZVzBxy/cMZgQPLcItucT8p5922UpZ962sb8BRjH+m+RHJ9ED3/zE8Jvl6+f+ksVU5BS4
SfcKS8GzMOfiO03fxM1RSrwhzakxPEuCVNnRTWwa1P1u1+zd1G845QpWQSTe9eadF90aiFXwaIlG
A7YzXbGVbMTAfXGwGdSaEGj7TltKDKsDsDSMKas/r1QyaE18mZjwa8izdhffx7rnHQnWIPDP2+s6
miozXrH7IibI4I38YZtABvjVqjNip03m3toDhtf7ITRPgNsQT1yXBoi2x/nZMgRjN8QmtJI5W6rc
aD/mkv2IcMsralwbnTZU4iNUdRXDeGyCH7Zc39VTFnaLDFxalmifP7WXG4C+MynyYWwf0HbzgChY
P3flTy6aCoAdNfs8M3W7Frn5NA+yv6FY35ftOdXs+oMOr8oP+bT1L6ndPE3ZnF+CbB1nyEvwkKn2
nL5DlKPrOFaAU6s0pyBRcWKHGsQpDVkEeXkACTYljORspBsVQd5JjMnbEQTfhniM4FskH/ZNzCco
UgtXREQnELT70nCwM/IsZvlkKWvGrj7bChZeQ6Kks6Wv9DiOYNQBY4aMGYgldvpntlL7iueV59vE
eHOvwj52e26Z9okuPUai91qc0yCMN1jaOkecenaR9o/JKBDhY+NUQrsA4MnYzpybjJPbIxleoBgn
zM7Z3c0EFelIfMk1ajXN6DtteqSs6Ncr0M1Ik+pcdqKhExY5cQLpKMM6T7KxD0t91tQubvWIQPT1
aOzvhnseI65If/5m5hb6aCYsBCHjrbXlD2Wchh/jW/Ieuof9uvpPVhvIcMg4WQ77aLT1aAn2LPXv
ava24Bxp98i91ToOYmzOaaxXsdrrLk68Im4efOrYNIEEWOGG1FJVlciBHell1G/xdHsAJt7yYz8z
nn8hfqf9sCuPUHNoYbJUVvJfsC1Xp3d0T8Ej0NjixAomQkZt4PJjyIMI7F2rtKip492GIDzIVuNL
/RWDyqwxRy+tSvLBRHlJ28///vxiPtdFLicQXSBo7bxW6UUIiSGEBx7eFRWq9++r3yU5NGgPRezn
ISevGUsmZ6tdsRu6rdQ4izO1prT1cnUutrt0F+QQBy6PExJGXCz54wg/QYgDNoi7Hzra2jM35kzx
gKo6R5EXCd99t3LGwYpPL3tMpe9OKbvWkNgmtvrEnH6a8lhpHQH5j938SSnQz6paM6Bs7ypgcHXl
h2UYn5Jj4ymvseKJmfqD73YgmzAqMLxMn85K/Z0MLmurveOGEtD45IQnqh8IS3qMeatbMEHtKVSL
K9JFJLORVf5+psQSdz6fT4C4LFaTLxlFqt1bZvk+YsOMl95ZrShHvJoijcuH9FPz+MD9BNi36FLk
65isSmIjufn02gkMPF5Vm2j5Eizg/1ABbh5JYNpe82O0eD/kjJEOHV6OIPLVwo9/4YiHXybccC1/
7yJ6OI0MKI3Vmrh0ioim4224Hhai3/9g4mSzju8neoeBIv9weEBnjaIBqHlBPS6DN/1JKK12y08L
y+Oq4CGcbV+1EZUz7G2u5Hf+5DyGiordVImXyuY3KplCKwPIv3RFEmBzG1lg33kCvQO1z8/8fPxE
qD9w7JtsDdR0Iu8JgCi8Jdtdet72yMcQjrWlLDYs3x0ZLMK8aUUAueL+9XZk0x7LpkFPqeyFiqFF
2P/e6Hx/E+RzJmyN+PLRNsp4dUUJfT2w5DMei8lPZRFqP7psCRD7kzfLBYfLPJVb/UQ/ixllzlOt
DXzrkrvgteToMqi23/Paa/F5HZHdc26qXp6seHmJMFpEp/CFMzImQ8JVLg2MdbwCk6Umn4oQ3Um3
yhhktLDX/Kh8lHvTcZY2lxNMa5QSDwJ4C9HSIbeKy9bdXmKpzd10UsYRD8SibYL9opnI52OVulMb
XAQ2MQceM2nSA/0Ag+3BG9KE1zxyD16cIU1eD2WUuA6zWJMDceN1etTwW78iTLXpmLxwD7N9mBLa
PRLYJHz+YzrB+Bngk47Wn3fB8CNusjPjIoJNWrWVSRvgzrv5ypYK1Hw+hPvCvqV7W2a9A+DGjHZL
AnRwntBhgnzYcelZ8unKiFYo3jC626wC315BxAq524ZG4SldA19/jn3Tz8+NjRea+kb9UM1qMdZO
zPYoOE3x8IWBNYxpSCv2JC5t1urDKdD5YSNe3UyLv9oX1EIhMbAJBZfT2ypjv5asCevSQOV94VQ+
GTSdOv2lN7qE60cBphT6ZGHCihHyZgTgFLCrsTGYD5Fiy+B7DK77zLqkL7HvOARyJX+qvx/3pHkU
ONFraxZfzwSgguBUmvKJefSV7nHCB9Ybe/rsURgQsicHTfgp+mirL1Q8/i6G5ftEprkQFopehWzj
NXOkA20cpAWAgFBbb2dBYXVG/yQM8SK3MsFcYHHckS8PegosXDhv5HDbzBaA4K0UWT/M9KU0kqa2
KUV/sgeykKHshTXdd43DRA/yfx8D/39ec3ky7pc4qerLkNqqEICCcxrLm15J37kmXdEMYYTAmGcT
x+qNwA53fdWb1k4Ijo3ZN8Tqi7Y/Ll7KpfRN5p1GWC0stYZNgWdjonaBuWieXLfAeINZoPEBfWqA
T2ZlkF8eS22o1CXC3aGcYcG0yFWUZ/ne06ys0belYt8D4m7tIngN0QoKJhkjiYI2eILcZ56bhjh1
kSz25R4yBz/xqJMJcmfr+qjjiKKEs1sW7wSW6hBIcWvtjU5u6sgGx++j9XyW+++2M9JGHT55ZHAu
+77BGJFP10zRfvSb+TJFkq8Rd+NAt4CceUeVTMw1ZoGaNvBxQCmpNU5kXT0veJh26vZEf/Z6FFWz
yw2lY5cTw9fq5Ugl0n4Fs5XXy0KooROGRppMbVyxsERm5LvdMdM3jnUfB+H9nBcHFoPy8I/NFI45
trcmbrgtkZH0Gvokm2wl1j5lliMZT877UzAdFuNm83XOHSlMjXFDeL83+Y7Q3TzSjmLWYxVs0GCU
uFRmSP1TTw3W8sW4K9q+x7x2bP1KzOE8F+ScYEWFkdJLNQq5v/Tx3A8zgR+Jo3WOQz1WTo155xYK
rOkUctCXrjZDCzJPW6MVqmS65UX1omSDElHbXPGmqtKnz/zGOiYdkVHnT00eJunVum1RPfHmoz22
UgV6QAZ5uzLGe93FLjNje8G3Rw+zQSnDgLqK9NvF5bVfyzu8g4m4n2rpcFphyLRGT0YRlG9/NfYs
p/j78fxg6mXHZI0daVvVNOCiJN7HdemeDkWrHtarJ+zDyLPtmj+cjJub+mVCUN8qcb4xKw/990Pv
TCMkxla/j5SB+gy2tL/dLQdkIfk8yGl/+LVIyxdG7+fPXqhbcMZuXrSUDDfQy9JWDJ2MATBv3OoK
Q1/VHl73sPFiAyTD+xhi2VtVhbQsqJxxaUfxut2j13HvqL6vpofyZzJM+3RwAjbOl1Dbv4KPhwTq
HZdLGVIU9nmm8lb7zeRoGmCIGwfZLeSH/LA2qwci0v/CyTahVXyttMcGHSyLn1OZAS7robhFyfRo
SZtCHjgDViaumky8eCluXMFDG/mkB3KCRq/8iaVtPpfkm65IU+kOKIbvZtve3Vn/5bFCm8fGIYSo
WXHIAYvAvnd5MLJBck1HlJaB/WMNeQcBhkRbpW+qhqNPkGsmDoSVeWs82LWDSgoeQsuDkKLD10C8
2oLHPBhDH+HGGyrattXwEXq0q1LhTmkkuirSq1lLSva0DPqMo2PWK0CTfvtmYGVejJThEn+Jlyyw
7e8isd9bPgHJtfq+5Vzp2E+boUKdN2HlLrKlKOsHWi/zlUVp5NAqkfq5XjvJiYQzhpArTOf+CHuI
fS35SwzLULIpMPxqqbOs3irVnsXDfqrSJzZo6k/7vSkah87uYJn7RHggACvWiaVkAyPpepHxIZuL
LwE6O+KLvb73upJZcfqqZ5PsngLMeRt4i/BRmhY7nHJSO5clak8NSkmbE4ct0bgt6X/Ph6xBl5Y/
QIHnXOz1+ZYrtqeRmLmPXOmjkZUTiTVncJ0SWiai9y3CLCZAdrVU8STpK7nJcqPVQvvpuvSagiQa
oYfIC66zYmsx0/LbxooY6XdXIiL9vuAKoi3ZXUcmp/3vXZL5VVcztgDrFRpmjnMMTwIf/D8IdLMB
ZhoK+i+fvgVPRwTxAnTbEb+linj9De8V6ZMuFfeUyC61jAL2feyDLs7uJ+jaVMYdvpxZjsbG4i3X
J5HXUiGE6Mt6XwjGK6Qu5FDsC0yMpjGkIq2f0w9YHzmrfD1nCsGn1P3sLUjHCYK6gGdXMTxUvoIA
NUVsyLEDk/vLrn/WmFRWc9WKt5ltJ9fxA53Bp1qGX63DCK4tiRhpNrrHCaFYe9ZCJbS5QUkbSapl
daieXYQIvO92BYGcpRBlA/reu4mnmNXvwXv2W3DorfuWl2lsd+m/QNH0hAQAOCqu9ioHeY6W9hGy
BughALbuxKEWEBY7EYpABEl9AmkjRv29DrNF80Ps6C1qKXHFZEnBLUGyZCCDEsxnOe20/Dl+cTdc
pe4KWMTFEMc2EY1PGgLHL7dgWAXnLmI7XY00aUL8Ba2cityMwu4XFTiwyl7JftkU9S5BW9dX+WcI
s/p01iYmYgoB4+hu1EFinv5b8zs9b1lAbSaC3UGPIMBmxjhNC42XwqHLnQGArI3QWLYmTo0CxiTH
5KgYKrNOr7IsZ+Q0RhYvUUYgAW77hJTxZ7ND9/Q+eNCtoo6/4Oz+1Ujf+Fk6C97ZSDINzuarXGJH
lSV5wyQF3gE649LBpa6XV091210sfhaIp1l4aENjBuAQGvcNcKunuCgkEqNPLFUuKQEQ6c2IT4zo
E2+4j31IGywxoOKU2/OgLnCEVY9WhtVIQhx/mQlWaEMfXSY3ROVPg3uWIfGzCRyCT3mCbFV8oif0
+neWe8Xn3EVV01J+43Ej8I+sBTwAFAMysTnhuQ9BlB6b0j/y0L0MkZA1Bn7mr9oocefFih7QIYSj
4a8BPbUJqbB3Cin77YIQayZVnrvZ0xrcbWtCv6zqyvXidf675lkqfdJ9hoO8wM8LiUV9zmi21BXC
kyag3xPmGX3Dd3vgIuxfvqRt3rDLCNeN9rWGUXQo4oXDVCB/QJm7Jb0BsjfEVlMS/SEX933sudIM
nkGWN2g86pMEGq0ou/HGFQGaAzco4R0HXpEjfT2Xgsfpr4aXMQKsar5ZTxhloFIJshlg+eiXo/j6
YMExMtbBBkOhfE7C7f/3o55bdTt1mAswTRhLfPvg/8BM1sS0bIP+JW46v2YQECWbxpvgPcqyLsQa
eKn/CbCZSLYLVdC2ZUg4cr1HGmBv8qgknujWiaKZPvnodDXSOzGod5c9ZO12ToZvqUa/LCqD88Rl
74d/aYPmvd3ICNX8yw/2eDp0pOXOwT25WvPLnqt93mBdINh/mwVpknd3Dw0W2bPvZCjBur+fqOh9
uVocE0MxdvYPv8u9TtFF3BVGlEdsx+eS5wM471stQIWDTzMTDnqdctOhYmlPttwPJDuVz2OWtddN
kJ45dxMMUX3PADqZ4aKM640B3T+pbFnxDQ67IMahUJyz/BM4S8P8KkCriIz6DLgQgakhBI2aTqx3
Rd8Cn8RcB96rbknI+yeabzba2jTdQaZ1fUCKnIjyo6+NjEHC3bDevACpic+fYcynR1cnRnEXGhle
r2ebeaQvMp8+PvGzAtyazrra0JpfW88J4KGbXBwEh6CHk/7hdaUcv4Cro1VHgm+qDg3GkiG6XhT8
ZZQCw156zN12Y7V/B/oUjxBe4wFmyU61zS4tDbH5y0CVN0smLL8mnPLa2F4CEEEO+X0TCg0JYbj1
tiDaIZTGoyHjb9NNH1AKszEXos9EfAFFykqKZyczIlN7N2FiLcvjivUPiFVkns5symYNTyKoV7Kt
QwiBpK7ESqFkTsbMIIgNvtZqO/CQcYxBbaE8taBrJ0DfYTz2sqDTLdUnujLwcYz4pIONzeZYVwWy
nt74TTt0aSpWI1eNrsnfSgbKveaiVRThi4wNuiv6s4+SvfR+D3OYph2BH1/vnirPZ5D5s8kaNpwu
GdaxKCCC/xucntwLFiXDjnbRYdFGAkxWJtBn8OKpaggImS/z1qVcmgVHra/hZK9mBncx3Df1xmSG
r0NH2VZJ/GiPzJ8LFxvQAGVq7rhMwQFTkjLCJMaDwD3iVjwWRIVzqqGAps7nXJ660FTSuHRevcZA
zxjNHQ6CnLi9rMQY7SsiTYeZPx0yhoLWQKkk9pJCXbBiT0lZoM5P3Uv8qraP5zCmPcRRn1+DW1fO
al7FQ/wh6I0kSNmAwnytQCXIlfkTuBxmwQx8zSKJDqVblshZGpuE0gzZrj7vaW4ca0dNm1/jSQQg
3u2GjjRAoD1A4SKkHh1ZgY0eeT/mcqsEpEvSxHtCWV4tniq4bbX4Qpbb7nZQj7ALsRWVXyTHVVuk
G1LNbX3Nl5pYTlSy8WCsGMjmk67NubXI4dL0WJzGP6DuLsZSrTxmnBjNh0HuXw3MFggzZZEcqXWe
x/KE58ZjVHvacdH/Uy3k1VHNn2yiqfq0SNMUNL/8kGxKLdZLMxgDccdQ0+p6si3UzOB5z4PPq9Co
SoY33HqCYdNssAdAvYBtuRMCy7OgiJ8TYJudfdUpvO1MP2SPnjx/pW6bcnPWkTPDbwSWsoU1s11q
CfNlvwyije6wn8Fa2fONC7aTN59Y7VhvI3ev0BybIfNBnwIL/8caknPb15v7oBJ/a+ux/kJeXPhL
OMUe+4u68MPBb4xkz/gt4woycbUMDPcTjQIoMGwnkKZCS8egSuw/C4psNjtUdBinVBH0FevlUkS4
U/N5Bu6dSlWueye5ahZkUTM9GCIWDdPP751Wn6XrKy8IOUKETKEH0ePt3n9WJeRAfxytKAGicbne
h33Qw6EwjI4CdtKCJ5KkzsnoN2+PcDZ4OxzMXcaC6fXgkr/BM4CSdOGzGYZ+RIqnmbFtn5YRzVNN
sIKnOjnKSQW/+Vs5g19ZkFmHnXJyeK0fOB7XrMoKbiPxRy+Ms1sxT287l1507+yyD90LExCEX70c
EfdjDx3g4qhXP1jujmnH/0g9iNmWC3wPBarN2wP75aLavw69bHH7f7g/PqyHrdoA0AAs71swh2GQ
n/PNP9DoYyfYJhrkD5wkn7Ulx9vnzyAPkTZEG+3AuXIVE9pJFJ8qeOlNCY7ZvQylrELJ1tPKUEte
K+sTdG0wgEvogxwDG+6LecwbFuot4fQnFbmFcl/yRfCOYPNZR3HrdHSY2V00BNIabZ/5iFHXM69U
QD8wPy/dJ54uN/tiODFLMCSDMdHIFQsg6WlL8Sd7HT/2+bhCIjn8JKrkvB6rPv2sOJF17wl04OGV
S23HK47YJybCT5oMeSiox1wTVckv5V7yyo0uxNs+5RODZplN8PepZHV63yPZMTGGI3uCUBO2ifVT
v3dBKP9uufF+Onq+/RHVsIEfInh7qShusKJUoonAfEqd/j9brGIzGS2c9ij60VUrV6lQptF4UP8b
qtFUmHZHSwNY47ejQ+SkjjskZ88usx7DW5xh7L748b0/Ke0UjrJd9uam8vHzvyrBNwiS2QtLIfAO
MJMGYhCk0BYJqXbs5vc7rh4luf62kq6t45AKcdQ9VTtcesOIEMyGncEyfvcwF2qNJpi3A2faKdGR
xs0JL9zNzWaXvOX0F71x8BAObwpo7HeBJfLnCWTqPQRQvwMsPcqlUPZB3HoRxitFo0hb/tgZR/bt
mugjlzzTluPZIxMfnK/6jamo5n86pLz0xtymXQtuBfkYv4XfVU42rvbABmPMU9MSIwxfi2pF7IjZ
e3dJKz+c8V6rr68FQMEKl0tu/gPUfLjB5d60yX+A94u1iazyXovItoHjHirTF+LzTVFOa93pCgFM
V14+FP71NRqqn/fuzboFXJNu+yvTFauuLxz0BtHhSDWQgr0Ut4/dI5EZOR614CcMtzVMX77dR2CF
y5eK2+BkbmmwK8IS/k5aMVOhWQETPeDtfHvc8Ijzr+4IzXfvTOnHslqnfXI+z0VRWOc/S50aeQgU
Gb4a9CeDB0YTd9UqQUk8LiDC5sVmut9D7TtaRWhH3kfSA9QKF7zs1mDS6uME2BJ93kfhs/sHswrE
Q6OBFCHDT/TpuCfP+Si1VeOLCIXnRHwScuVtn1zNmgXaTznUZL6d9qm/M1sRYi+z+wIZyf6O7bhV
n7foFgp105dziqrvk44zTumESGuBmXwyWT7qdNcelDKS3efV+Gzb3Ei/cCKyDEeMj4H8SsFjJ/6c
/tT9qJ1GspQ4iRcqD/c0W8ahaM/YQse1X3ArZqvm1c5ocWHxPFPHdHD1FFcKbazTJ/4m7RDfvtua
BkUjwNYLAb6UB9U+oxGOCl8KkrrBSpwOC8m1RgT+BB/pHi9D1RhHdH7tP6lIdiiI5s4cH9eGi3TV
tcGuZBoBS0wm9m/RGVGqKrdHPL2VfPiHZlqU3iv7egEZKzuhGI0aQhEyVTmJZZgrv6yNdeazS903
w2DY+TIQSTH4AiapGfslwmhVstwSifWI1nv7s1y58QWzWhYp873evrZlBaeB8lFLkHTRzFWdzi4O
WS/Wd8EZ/ktbtt7ig4fXLvtcybwI7V0MoozzVU8MDwZvKZ2AK/C/FeXmA0EuShH25qBV8/QJg8O4
rps56BSoYgj6ywg95gy9CrpWhdzBIesMj0S4iWQc7URVh1C4BRYtH2VyBQY7/F4v2RskYfnFv2rP
70J2y8ldfei8MzCXTlcRyRaSeZjt08JVJkssIhCRlT6umvj5v0BF/Tay5OhUIgHyzJfBLtcr5t9g
M9Nb75mo9IWyddbjh7Pwsw8nVxbbY9G7pv8sQQtS3tND6jDUXCkh2DI6hOtWjzTfOWGvzRu1LE+h
uHqjH+zQloeO9UaWFng0o4JIW89VOywiOayFcsC/z4UBtCUYMfdL0Eg7ufDHP5MkmA/FjXNQFJ74
9KsBfHLJcjUErBAwO0vVMYW/1PflhG4nQAyfMtdrtu97j5Nz4YtymxRC5wxlzHnDy6xwcsb85ftO
yHdTPdSv9MJdTN68I65JZ34QeecJiSY5nHI6Lriv7xxMfhzSp9BHs7pUQ1d/0A4G1JJ0sK4SZThx
LTQFlp35YNi76poNU24kAV1ME7YBoJM9uQVqL1ai5OENVdckIpMDQlhb36E6wKWgIotDQpYe0lBV
h951MKLDg7N+PvFgQNrieNp7/e8Ev7wVlWFOIUwpwt1hqTSpLC8mZOFzd+zaPSu28tFdOoqCIJPZ
4ClHds8UiBrj9izPXLp9hUHptee1Y7cpA1w2scnZvrYBlJW8mrVxWSGAg73PyL69PTY3MnUC5Rhp
Cg+GYrAFjCT1lxqO41+0+f7k0KAZnMkiQHovFnm7ZGwnXAtR6abkBX9E6pWXGKC3rh811Oq0IaC5
w25Ahu3UOzPzOsWUfy5yggc+ltOY+tkPNLE8V0ejq1tbGPUaXzGYPb0GwfWZnXxx6BXSDTIzOrnp
QV+sujvrc4yZPRqElpdOTit3aZHnvLGnryEJjN/VNAhuI1K4l2cyid3x+gJouZdb2Po3YGFiA44+
pgfKIiE91WJAwnnQok6ZbCb5IzG85A0c2bM7ngA5wi50yMSvzeXLBD23t8CVNrr1stVl8K/QFeTj
uadVvkv8ieN4+KIKOaR76G3xO9W8j1gcBTYvjjmqTk6ttoETrD2dcZIZSMjLqTIRaSoyIyS7bhKZ
bn4dsB8BreDYhM7jXU9ex58grv38HlnQIvd4CNY5BM3ZaqCfyEfST+z257k5rCVP5zPJ48eol7yB
BNGp2TewJnOkfM3A2fvvL181IyqPgPvbh1BsUCSu7dsQMCfsL7jKuaEYoLKdwXCCTvOnxj4N4IRd
Cx7Xo+R1gLI4LVlT1XXrcXICWVGZ718eE3S4Ff4YSlU+vg6upZeZZ1VjvNkm+tjndXdQV8CxRjdH
OfApS5wzX+KlNA+xWWrT4sWa0eBdqXNb4VRul+qJgMkeSgouD+Oq/Hty61rNH6ISaZo1way2MaEX
ANW8+X2+1DiFqhRDkAazTJplmU2J3+VHzkQVepdlVs08winM7pydvlh9CsGtmxm+l/DWDLNI7hVG
SAEgknBmfRXmov6DKCNahCvxAPGDYVBJRGzPWtijlPjFblVnzZDiuMmCfpziv0rCIU85xMIxU8jw
BihQYSPIWI4q9CBFxzS9Ss0ih2Wi50KeOulNjW+J0ToUXXXO6URdi8CecECeT8zSzH+dAZpUSeus
l61JdPZcZBlyeYkd2Ik6olDy8DF/+B8tf3HbCxVMx1COTEBnAinkeZpWZ+zsnD0aGgV8dgIQOAck
Vg9zYX9rG25UXgae/cHvLq0NLX8A66AbzJXGtARf17sEqqwTZKDqILfxn2GkOs0Ns3Xk7AySG7dC
IVmkSYMaNeS94F3GwheH07bvfZc104YGlQhddOzkztVSi+vFjstBnMrCJdztezRWTx6iSaWUmtgQ
SA7Fn/euyLNhYskyj9cSqYgkfxoa8BgN3m7RvElh0tSnnIjJujcEyMEGBrhqXe3jlokYmiUC+JIo
q/jlz1WuOn+QkeI3XebF5IkMddDdKoa4hRuZhvPg2gDH2rHsgEHXVza1D3SoaB0zD6XMhezfXrpj
J8OTQGymSME7ixNRxwVJWdPAkBTzGoJXKspYyzABZSGhQvk+tXzoThkRBlPAapx7X4QCvXi6s2y2
7H+1R+Qb90d5IJlNzZ68dd8NbmZlUbR8kpEAIF4kMxJdknH5fI93CMkAC5BIl0dPtNQOAX1krpqV
86i3VVgVrfVjxSKtgbMbQVZh9rTP6H4WlPOScoPZ/Z6K6X0NV9x5djcGGhgLZhbEckSvcVnYhGCz
HtIoRfkzk6C1sJCeCQ6agWQf8K6vdZ/rR9a2E8CKf+fatvSpOnBKs4j0YmXuJmdWxwzZDnW+KVIR
Qt//bnBPq4rpWYNgWL1YTyEGhNkWnIxhq+Gc90xyszIEdR6s/BQzLY2bFaLMOSLQYrEGTp8stD+w
PklquuMislQoXxbIRlr3mYF92JSshlsq51LchY5SA74Bz6hHPnRPB62c48tTTjCEwISGGkY9KNxK
SJTBIR4i+MnUGDXbCbn2Ms0jpOthXt73UD2OedyGvbap28mDnSZVGvk1aPOxIQev1Ut7hpK3Ic7s
O4tqYxjznOfU51/on9Ux6QTF6Zwzu36BuPOfkyA1GhR76k8arDz2lhJGMpSm+Ll2HpssfVz8PEOi
oynVbTGIEeacSLbyc6PIZcs4l7Y6ekIvglC43PVdkchwrRRctz8lz7A9CszYX/gb9YvtQ8mjZ6F5
L+lBLN+zNCZoshFP0V863B1OUH8A4bnNg6h/I72fsseTkTdrtfLWjYP4zW2nXUykzMv2i9e/Zkd4
ZwRBFASV9ecDYorHG7c2D1qshCRAJSddaI/ZjGe93nHzUta4OCH8NClFekPTiV0FodB7TvNuS7yE
2FttWzCdSPY2YGo76lRzOpzqST2CMZSA7IxoWH5C/crpOXxX291iTdp8fLeygBuJ0LdUl4yIY5S5
rTwZ/8sHCUUvlu3fMuATkg97fMI6kQMjdbZXliC12yvAKF1yIZ//ybqmjF7n8gJfQkaDhRTyEHfY
Z4/tkqir6DPa11u31zfupFI2gD4a65biqUkn9s56A/UR9aGi4zTk373p83V+SyT891oxdExrfkEV
4Kz6o4WEEpk/IjKQRwLLCk7r9yFSjhZWb2+J/uUVjDi+9BfMPIKufU+x1xtG7GlAJR5Dui3oFPZa
1tfPAIzhqhbR+ITieNCCtkZfNGy+B/2tNsFKYlLZnKptvtHWcD6sz+BKCV4+UYCnylTkGw+GdbRi
LfwBQOi2WhjlkkjL5Vg38kMviELUnOjDRP+RQ1OCv6nFJ4fqX6b+EHkh3E0qL20q7qyT07LfJfUI
ypgKnGSTJgTlz6BwJveu/q3jmF8fCTI5HYE/+EpvQ5VxVeJ09cUOmeo+qP+z4zLhuuZ0AtTGkvqx
w1dVvbC4DAVp3zijZVMju1dUEQWcoEcp20Wz0Uz3JBsP1nLf88a/Y8jKalBMkx1o3cfDib8HedQO
pSuSyidGakKqlu/nHOB+8sJcwj63Tp92EfmuDg85G7JUO7JYCqBROSHelp137KQOBT3PBrf0M9Pp
DD4xJGTOG+lhfe+rKCUPBbXU/IQY/KByqtBT5jew9keUzy7gQ2o8vELDdA7B9gAGWiX3NJGesQgE
19g4rtZLsyj+CMbza6ujfeWWEwNyciDpq2AzQhMvmtDdW5cLopBQ2gBHYxwqxc1M5j6ZuKx3kUyE
x0gvWHzYgrpXsgyASyt2rAhLEZOVvUuSyXxHh0ubshG28zQoDeEMjswGAa7PrUzkQkusHta+tfts
BJs5s3KEI40QR6p5jYR7FHug/Oo6u80y0cGyrKEEz3qNLQWLRBQbcch2xmuRIlpx2I1G6MfAos7o
YqJFw1cEzHL5wqUgXga3GJwh0qvcmzk2t9+39brkfrFMekdKW1pchWR6H+TU1Kh1mK1Xy63b2YvU
5PwDwLDPSSR0I0iSAkXk/tCjUmMfxDUO0ZJIVgUD0pzBvibgrgrbrX8Wlcu6II837xPTPRd5XXm3
hHBtdIOp3n9WPeuZSewWNsnm/Y3xVM2+EA6aIIv1t46bSFnhQMGxZS5XR+8GIR1z9joS8gkWMgbi
K5PWXHOEf+fqzx/MfyV/RjADF3i2glwVFYwCTMFfqtiDNvenHGiKjfdxqpekDHHcLpD2So6IJmnm
BcT7v1awySkDlNtRWzHdorcMEP1Eqp/ksCgMPPQ9onNhp4lEJ5NI3iumKqadp03MMlJp0q0QkaRK
/4kc7xsJ+Tt/5LZfLM8/7poTDcqG6juRdNziNiejP+HpkdXAGzBlWpoSSHjnVo32Srb6yKbrnZC3
4KQUpZ2htMRuxfMCPVS3Cp/j/CmYzWOoNbNLOAoa+pyRPzNc55V/9AAr2xXN23gT8RNx5m9ufxCe
aQli5K3DntUQ0xdoju4EABQ7nuF5aZMCjvAPePJaG/07Xu7ZMZAXZNoilL6gL8DW7o85UHNzcBgw
TWIefXjbO9LI8FgSH33RwR/5f8VTBKDYCPkKUUesYeTZe15CKeRV48/pimd9Us+D7GTQCc/yn8o1
dxygyxXwRBStsTFR1xEVpaJ+MMTRMJgqlf5qp8JmxZ1UzX7j4cmN0xPbwihwJEI9QKeeYmx0bmWT
6EM/THIPET+b7GzX8gxXSJS2+g3/DABoVeepWoaqhBeW3isVVvHWXYNkSUf8ZT0ANE9GuDxlaPhQ
ihbWJo6G0SJEz33XBGnQ7hkFkVY8dyLVMnDKh0YwJ9iRxX0rivCIeioum4zvTfQbR1+RF4u7dsuW
iw4nkuh0U2sOWd+4vRptR0MVKfxBZKmCxJDmFJ+IIxQ8mHn0rjPN3fN0Eddfod5tL6OEOKD75pkt
wCm/qoeWunSEYhyrKHmHCLII6EMAKld7WTiNLYvB7dyDkpLzmlf5Dkden0DJ/zJJWOjIeqXvFvUb
+IKf1Hb98QPDAqABmMpXJnorBFD5U6ZAYR6RL83LH2629X9hbFqsosUI6XIKKd/g4UMNf65d8c1I
U+mJcSHaRJ7iQxHH+edmc2TswcT+5Rfbvg1zshtgs9pHEz1b4D5C6QY6sCBNwzDKtnzqEml82Jco
gI6oy9Q7lfZIs+dC2Bw2dSh/JXeg/900dz6Rtm4HIo1dJ2mL+5aH/AymEe0wIZcgqOUziJ4yP8K6
LjT7rLqDJtJCe2AchVnUrRdd52qzPI+msvpjEr8LDOiqiM7DrT38I6Afflp4RNE8pOExmJ+MvTOi
EbVEajJMSYP2eI2RW3OcE2T5r3I+FHWa6jo3XJYPEaLUxuPhp9KMl1u78tJxrVht3zaRnLkB9nXL
EETUGfm3V7j7cDyrRFyy6ZIxP8T3+WgWNuV5NY1nBJ2ttdrMbdhI77kPSXORBXaBI7daZLQMEj59
pxstpwa2uN4Yp9YQ+IxCiv78MNEBfM3hrB8QaL4DPjaRUga2HLQEqGFWzs7zkAn/IWzNqaDiiqsX
EpV8X1bRNMK+fjcCgikDqSyMi1zNLsYybWctam7Cna15rR745/m146c3gA9GcB17X+AJJsHzQYzf
+e0uGVoPoSQ/G/jHLFtPABHZTnbJSQduenTvC7zs0UlNm4s0twuFvKnAvCkVp37N2YpWD9MiBuS4
4nCpEYUMxIboWI6noMgIK0T6bwXDUR3QBVjzEEbWTB2OyZJAP3PTTTTowpv53SgA521QNVK5v74s
R8I9FBAFucHor1AdoeN9HPl1AihzZvuOddWznYpjr/dPuvi6kd2S5FZO9lh4eOalb4KzzvAZKG01
xRTPE3pYUN6pDKPS06UYbyyCzZpYQNEB2pplra9EnoF8MATCgZt+zMc8aj2JUwtrEE9LxcXHqYkM
iSasN2EAIFisAWYtbKE8i7ny31pkhDc7eherOP3kNZy57zWn4glYAFB+5V6i4R9tzPTe7VXk6ynY
XTFsG2cbMZRZA5q/y78F4/wBCIYkcV7l5CKD6MkUIBNCQdmE71y/kJAUVn6pJ53Bj6EWCjDCetKX
X8DRImmgQRFl15iq9zJo5VcePgVPJNyp2X5MRlksz1bt9IuueL+8I4iTJg1RnjMHvYA+6cbbbUPb
+Xz1+qXBcPfH/xiU3UMit6nJonGX+/c3eAhTqE30GTeHXt/cHyHJeLzeq16bONdUPOMCqWAxn8xs
6ssZmCpXnW4VD1fK6gaguwJtyPI2E4VYAfpMphEc1IadFR8NwH5KryD//cAL9N1k2zEEpYo9pLX6
VT2gjvDfb49TGVt/TJJw/NMCxu+rSVOjjqMBiTQxzfMxSJrAo35IJ0IfsRVW+/Y9yaRKj2npt4Rl
G7uyxdKn6A9ssLcquCd37BX18XktGRc1AMLGNDmSIZaa30Kd6H3UH3Mk65CJe7t9OuFtfn0244v3
2YT7C+PaJ8FTy57xwg9Ve5CbojCx78jgZA2BRyAXbHM49/xOisBtqAcHacl/9cxFN6I4SO46XtKg
1DC4lonqDlUco3lIoRJrEXPp95fmuaI3hNrYwNZpi924Y6q1V6uGu7Zca0cZxWyRRqtgEqZNg7AE
AFldGAuBcZQaLOOwZ6fX6+CuCnNl/dMNH6AueTWvdPVMLce6A9qaE82HuwI5IYswYcRXLKv1apLa
t7zHLdwAFOcKCkVlBpAJvJnNm1cLA4+O7/TzdmsfWnkvDhsHw3FrUKrrlPB48vhEJaPC6dqbYUPq
D9pBrgf7TZiZyHRipwGkeIzGnW3ExydpcIcXhmafEXW9MjKxx3LJWYiBxvzGdydkgxBf1lot20rk
vnkfUjBmmaj3TdO2rSxePdNzYa0uDRubnUHLMVTUCxFx14Kexz3hFu/+/ZfC7S722gJvOw0dyWum
4/4nq4IkYnK5lUsAe1kktehnTdg3Su38L0062NI2+4eUj/6Fanl0uIBn3c9Gnzx1DUPOrNwq5bZ1
hAxtDR4KhtXN65pv1gr4iPxbf2fDK+X3X5KlTduM9quZC9Vf4RpoJTt+ELKKd7Dd6lmqYzFUKqB+
o1Hh2ro/3VQ9TDvOu3BqpkBl9/0c+7rXaJvXU7nJIqH/RqRqildKMtWu3ravZ/Zo1tXb1NzMadRS
nuIsQBKwlq7iqmPD1FnGuePo2OVXuRH350SUPvz/LtbxmceQZyhpqLwJvrexbBal9q6h1TlJMJtG
eSmOuQUSAvc6Rq39CZsomEP7nfTLx9mad0clFmJcD5FHGU831XEEEYWpOzlYzb6qogIv9ho1VWwo
xgTk+1IHks/QpIxRbFVDz1YTySU6ArGmAG31Ja/Aoz8tfXqVH2jtgC5XxEzFooZadGis/0jj4kro
KLh18I6odR81vLzNRO8HdK0RfumXeKLWgyTVqqmfI2RLTBdILZrFEt0GY0QPfWqnmErhsMkJwI6w
5k88NJe51ZlFN95dhWkdj4Sy/TRVWrWrOBws2bK/XG5Cjt9yGUm1XFxll6BhO+Xp3rh/DYrWhOIY
KMBw/VdX0AMz21U6OTAnRUZ+hqYa8IDDFvly/K/JVCmIUECdyZfI058RJ8ZZtcNWkK7vGEcun7z/
nR8ncyfFz7OxU6ho44uYOEOifeIu69lXxAtE1/GyHhqoLAsGM+gfUpdqMrf5L0rD/xHVNPZVVCPR
db/bgPlDjilXGJvyPdfMKTbTZ3t/YL0cxib19y0CMqo57S21ZCdrpB6Hqq/eHGHVR+N5RAcIl9JU
+g5l6W1Ia1B2rRSeU+55cd2RQtZdNtjAcJ8vTaY6RtQAeAeuUUzLUimSkkxOtdCITs1+lY3s7pTW
+lPeld9tz1rJTL+VwT/K56+uzkMJ25t9OlLnR8R9v7AfxDbZBQEsGXb0irI8/7vH94mm6wU2fuNn
STYN5gwQW6x/oTH0BP07Z0/uJILC/WAGqLao5Y7QJHwOUsRC+yOXWblqeoDD8pjeKrGbRxvni5F/
xDZdBOvvkWIceFpLmNmo3RKC/bWV2AzUUoA/5jR7tPLufS1M0iWHu4bTmZtSH3seLrCP/wZm06Ss
gQzfLHOXg4vxCSlxx9uecp2/lZBTSdF+qzCstApcRAb/7IFrpib8I+pbD2KsWBLegPUrD37vlAYw
yUE0/V2OqEcQWrlWEt4t85tca1GUWOwXz3SREa3QF0lkrORYKoWi+lJ2siG3EgrjrV6EGxUFx7SL
oNrlA8x6oX/7mSH0Avijh/+CC6UXhh2Gm+s547sSWE2hXeBAlLZyPReQazVBZqBhj8GidoC+x315
m+gwDXE4kxsM691v8QZHIpa2yAftJsbDbTWZ8VklIBpLKggZ/keaszPBkJkw3OYxq/BMXGMqWsr3
IVwyWz4neRTBWVrTQam6AMjZ7ElqNfvUgEALaXsHn9oCEWjN+mXWLkKu/LfuARsEganvlvqPwGfo
YtLiyZWrsqT4gfsRbKrPLsfm/upCFJjogoY41jS8CvMaVghJ6xV12z7LOBFxhAGn9PGWlVR2ElZv
8fBnkuf7YcPfQ5Qg7UJzzeNe2eVKRsQKBmPXmpkxz9KDS6TgrQDD6FiGO+kwp/GbN85kkz7GomNz
kpzJflsYjbdB3DoJQFCFJAJd3YnIZanhSoTDYAlDKjdAy6+0CXY1La/2XbfkEulX0C/8qlg2+0oD
Gck7AksR5iYgMdcoWMeF1VLCb2Qc5goSHVyEe81tDQLqkVaXOnsTaCa4WmVbBudjDWZG6QXsPInU
FMatrVbPO6WNEB5jn9aWBKT+4sqeLplvyKH0x3h/SBgS1Z83t+D9ND7GEaQaPGWryI8McIzUdmZB
V/xNC3/ic1Fez5TC2zdkGKhESDILErzOV2LxSS+lqUM5JcXtmBr0U2OUyk2i5k6uKC7MahEC/OuU
BW2tizPx32y1TaCoMkQnleGLmY8bun12pS6E99+00XiGuTuFvTapWEuuUh0xsYUtrc2TUbvr8ziz
Y6uIapKYEtecZ0/a1snPs02CfWJjNwZe7CiaJGUKb1PsydVK+9zK/rhb9Z09CSRLx9zXKHqJZguA
W2gHVYcYzieNfaf+v5RUWq0HZe94UGWBJhxRVXh2xwoA2TlN8PjsoQdukFG/E/xy0Guhm1WIcpQY
IWujI060ta0jz45FI2px1CAv9HQgGMYr6zYkIUDu+WOPAMqaQUJOPIlldgK4XvOYQKuvzJehzcRm
luVt/OCOJquXk+HckzY2G56sWAIEjJRaLEWsH42+fe/6NnIk5BZCdQOSsrwug3nXSdYUhpMvEA6H
/ixkGS5doEBjjeuFuapXJ8uG65MkE+2H49q2RVeVxnJ7SDJ8pSU/X/VxdgxHb7nt8h8OlY6HG0ls
utfeS/MzwRzjwLtIsTQTxyWCiXN6md80aSJS801Ba6+yZaiOADvJir6qc7bARSe2+85M2fn0jHey
NladaxOUC9oVM1++zJzWXFcAdirsVuX4+oSWnnbR6/PVneLVzDgvFMK1R5PF0UFuhEzNO+n8A9po
3YBtN8iMK3bBdLF8c6U5KJSi0a+sIQBqgwv6kD6TXqCW/OK3pzhfZJMOUKj9FwyAt5E/4lwUwAWx
qLlzOvfjSIdzy7E0oQf4gGKrLKD1lJW/cbj9Qm00b4wlAjXfK5IRqOJTwapdLlYPhNyRYO7aKwiO
SMfOjrzj8VzjeTEuBTtZQCNJdME+9uf6GcJa93xi9XHMtc4mYr4Z1fhvJf8xs8tPgAfQBd085BSf
CuEAdq3sryNk4tUwRAB1YJVgK7m0sEtOSj6TFY9D7pt63b21bSQ6zhvsRVUa0DzhM903nWYOX1d2
Cm/DtuApxahdSSIbslD4u64hsou692ZPz4qGC30dmbTG3nIeaX9E8bmCxJzirT/k9FSpGSJFvJP9
w9zMLuY2cMBwzBsquQGvZQEwyudUyTU9I0KW3Ay8+8LCIMqzS0rAjJhPQR8P+jaTuPawAgSE3zlZ
G4kBht/4kgRUWj6HA1iDweP3FGiDDHdLvBpnkUD7aZdh/0B9WZ8l8NZUp3HxMjreEsk1tfFG4AT3
fM2/glIEw47DjOzzp5JckuGSkhbNTMkprRD+TadHKA1LDzM7dG9sDO2PUjeK5DG/i4G/BRYpeO82
+dUFgxxp67oXYcSQVKF3syZwaQoz82pmFSrkdNtO3zbaYI1IK6athnDZB2dNB1G9CSHsELImqaCA
U/nDAErzRzDsZpVfYkiZrJ6kYryGdpI4p578SOdC89GzOUSl70sXGDSuK4LRVTpsnghY4Q1opFx+
JEA+rBFH8wRzI9pwwzuBpJUmePclSWtGEsnPYpOR3xQsHMOgBvnwZiiebnK3PwRc8RZoi2ehidjW
i6K6q1/GuQjn8DF+14oqTXzPL9sPHH1WQqAL027CJPaSUvQZAtKQhul1R/8YSCavAb1qvPXUs1Or
L5I1kGejvc40CaDCnusu5f4qkSIus2WHeAqO4pRj04paH3rKMxJRLQG71RcZ1E2NhlAAG/gqbXD1
iFT1i4xhKt9Q3UGFufuktV+qLUkHIPq3fuCGDhRzYGygOFwy4cdnlauWQyc3NQFZbO6k3i06kkjS
Gd3+CNb4c2FSuUbQamtusOWEmtk9Bf8FGNVJCuxCDNuQMlI1CN/vTUZqQfm1O8bPLUeFyzmkmv4C
wy8UnhMB6/igF+DpBgdi4KEaCMJ2m6SNwX+av3zNxR/CprgURvB1bJPnpiCrUX7kYS1O0SEnL5kh
Cg4gQTU23u65mAY+DIwAfeUgkYl/9uDVEFnyqNOY3v9J+pS+tFoU+fM2h32DMDrUv4Pt2m7L+1e0
UEi9o1oi74zRBGOLw6R10y99AlT825SCmZ2pDEJ88MtlxuBCEWN5UJl7ksgeJlQs46ebJFvnDAZa
h/2QLbyp91pe0TLFPXhcHNDkTgKDb7mSaHzelyeIWga71LvCFqdgs8W6mphRdrmqC7fAlkjCDWvw
W8tumK0/l4LxBtt235WzNFhM07QhAvIRH2bW0D87bR5HDELWFHUh3To7cwa1KCszOylbaABH2PaE
9NiPkETOQzeX6oreL5HZ164Vjen5yUmDNdn0LSHyWGqLYF1qOGQCRdP82mo5KB+zn4eIfpkgezek
ERgNlS2Emqi/TxEnUInXxUeMDhDbqiBxbOjJNqjh0oDgsnfGGnght5LYgteAzvppHitaYoEtTe0I
YRi0uOLkUc/wO8Eb8cU8l5IzB1RuFwNXuqXc51dHDtdgihNnQDrDmv/OOWYSfo4PCpE0LFCYh6yg
CniYYTs2So7typa/JF+B8MpSyqi2PlQqoXmY6B4tSjBUcyp4tz9WMqqHBKwnDJ4CHsgj7vI51t2N
UDqRApuQbwY8Q+QRGMOW1t9nqA40fbMsALwnWyj2yo4ENO5+gX5wBZi3x53Z/eS4EGZgAZtTWIp7
Q435E29iipLKL6/DCN9Je75wcquMccPzAbIsQAq/JHdlWLFosnKMMECDR9nxa8/kQeGo5vcNajsC
VrgddhJafzqGw8wVmiXSNF9kXEIPBV9syPGAMK6RIkAq5/e8t4ExcO46FAJAXbwXBTpl7bjMNHKc
ox/hIwNlig3tqRDe9SwzOiDgKoHuYA2ITPansJrq+DaIv0p/Gu2IHak9RLXLGnQ+rqXW7tI2y1jR
DbUVuUVrUEs14sesy6buw6GNGp5EGf9mO1m1Bx0WmYC2bwgjaBjhfo+qpxzzVJIpwobQbjHXXF9+
NyuLV56vJqA3DOr0Lhqa7t2kBjl6LRq8GjzLIcCZYuHHB0CqI6Gs0cVndn3GrO1xzut+vLVgaSTP
ci4nH4Uw8JwzVysun1uHNaU2lsGOssK+glwPtAzWlEoDh3ReJ7sneGpbY3niE5oIHkkLYAdL8pYe
/nX3CZBJNodddicwC13cZxRXnYPrI8N/30d+gQ4EXs8GeMXZc58HjtU7EgM5z2otgeze7rDFbQng
03u34qju2YQGoelvncxbaQrt8kuLXa9p0ona3m3Fht4lwLkoE3SBpeWXvrfoGW7MDBzVBiL7lHSF
3lu2aIYIdNgoaBTha7KpzQpITjT/Yg3bf7P++B47l/PbYeqVYUWxzSv/3yFWzSAqAJpfsuqNVGPw
PhLGrKqABYpCrFO2IwQFsHrcbAHApgT2autHKRWpHmGZLh9YpzfOyp8dPVv6p1iSrPFC2EoxOTao
oJTGVxdHVIaZ41+0jK4hfCVxwmN/4J7yi5aokG5H7pCuffHiwjmGEIPUeDB8PT89+SwDmITAmnPI
R3TIf5oMlEskh8QyTP81eWu4Kfr+vpcBZYMAyfN09ijaLPOKkXnfTrLZOz+6TmlS4eA9/rxNnHHU
tAqVzSh0lHsmk8rfHPJWpbpDvdOYRo0wjUcgjNXbS9ScN1kajO3R+TqqSWOvIZBNL1dnP+gIh/iL
HPe0LsMm4vhJ35AhkW2o0gagJPDF7zbzKUbISPs63tPNygwSGdefB5SolBHBbLi4xR8tZMGRJH9R
+pW2YrIjDT/ogfin/W2H85/9pRGnZiK70JZ1+89Sti9ISiD2msDoDh7kAx5aT4/PV1Kszn/hn/08
ekRj5opD8qF7PtbWyrhbirsEKCVoSlponj+tvHbZJzbbtysjnp2GpAeabt2zhW2S6aLTincm9UC2
sK2ViuaAt2DOxDMdFcHwlhCSn+QFUAUMbuO35vFpP0qVhLEux7m9tWOBaowIeBOCoQTTKTIkVpAr
fG+4j2y2n8c9tn/3IpJYgA7H4Cm10qR4VjqCWLkI64xeBphYxHuKql2OSADdGoyuXUnSQmspKwkt
VoktH88jrZ+1wVtMjX7S6saYCIZeuygZ+R2TXlODmapbhmkF13XReURNt13Mb06M0lC5M04UBKNZ
/HGK2ILvnseW9iSArzBoacDfXIoMmNQs0IHy1yKSmrNyZ/hZq0gPzgwWNj9o5aEmqY3Rq3thEI9h
MdAbCv+cbFSS+6DFED952ovMHt+6sx4zL0UocR69+Ir0msP0vwQjXv2XdEApd4hv/mP5cE9Y2Zne
SqyOFr4d3LxFNbz4XLJk39tZERBumQ9uvvAtbI4xaT5A07J8tUDBGr9nfpjpsQ5fdWp0fO2dYcCm
Mby2gj0Y/j+9kD0J3KqV7pcazcnXs1Xn5I1g1+fAz8Ke/+yshgJhDqOMLYrCw50tPVa5gUIj1GMM
1MKvAAil+iovifVkbnwI3FutyRgyIFJgwjM0D/GOsK8KDZfnTR4UF49vYx7xKmTnagI7Bg1x4tov
3p3icQVU6T/hHMBwnK/FyGArME3wbFMx3Hox3oUBrz1N3jiOiyS1mtVfxAS/imw9WvfrluVw+LSE
rzhJI2vOsQEkpquzpDL26CY23fTWYRJYqbMjeE41uyxtiZSv4YCe1sGjsCn5Olkg+sOvcw1RNHbs
PcHrjy4C77u24PjMxfLlsTuIB1iq9rB07n5ZgH2DjYuqGRsNZL7a/yXaDacYzNkj7z5A9q3sRkEv
VW+f/zWEeQfv19o59ZbqclETOGGmO/h90b7Gr1Uohkx0MsTpldnCTkNpymzPG0u+hs3TV56Xt4zG
PhUGVzRkFndGr5pwFKugrIRjIhYjzSAwuSB9YNXl8T8XUJk7ECtIkGhW2SdaWo/FB4U41lRBsuLQ
0SohO5T2h2MTq/2FXF9L4U8rpfjDMT34ItQl+bl/1jqeQecWWxwrDMbtEybbDBI8vUAs0HwEbYlt
MLiXhkjpDm/Dd1kpOc/XlnrJz+k4SK6fdom1Bx0+zWu8Vol4/JHEZ7nVNP62/ddK7aJV8ORltei4
3kMoRRr03eP3We7yYSYIvzypNLKC+pFpgA8gAlFcXvr50KAOk+IQIjIOSg9iHofYLhzuscwbFU9M
qrCXVOT/2xrOi+RaQlcxFZpD3jh32AivvFQwJA4WIu3f8vm3glBYwKa7BmOwbu7yAPfYxv8GKSKL
yonyXamgr1Fo9/8SG4ojcBNzFsdGHCx4KbXUvrpOG1Ihma1Pd6XNiVotrF8hVfctw1GQRqeV0J06
nr8Ge1nKUVeKOt7byZ37LH5mKs0B6lLL0Zry/xretK8B44Np95tJIXuwF45FVyW0V3GWV/iFtLbA
5RNoTWQfGN8+DZ8w+lsFkbMGk+VMVxNRH5On4DCV5EM3tv+L/0JMRZCc6B1uHoB1Yam2P/oMGaR4
1t5MPhgQieDy1F0khuAndZvWLjFDN0Cfp57MizRs6KGY+TP16LcsVqzWEWHzK1vPwtVJsWJMPV6g
JzAww47/OMUvjEZvNVTqK0ierZbDC3m1Kbmc5sHkkGdxUl1cfC7m288TS9MX5C0GOV1LyAKg0Utc
IxwoiMTv46NSb01WFGeIolpETyl4Ja5P4zYexx/dJfDCJ3MQ5slc4C9qrWhzSc7703ZOc0jYA9CH
NKPrJzXVpvIfZ8+2AtH7UaNcX5/yi84Jpy2rBOKlEljOeUFJFWkzFPQAgGuKBpksmlBX/DMgMB2R
PQQgSDXOy0UtUSEMJwyIWpOqqq9q3Qx0yLIOeoAxTScvSSU27ctrKOSqfVfXxLSu+eJcWwamHD1U
B4B8Q1BNJYNUV9xpn2gAUWimzHl4RIGuY+Vm1kcV7VYJr0yNnVCxmbZVvtSlTYbK+HO4hTdMvaPO
tPAA7P+t5pnxjkQuf85mhuidN3fncTTu/3YETQ3Bd/J5LArjdzJ235yRHBo9VTGms3MEHaayIBVV
/4Jc6jkt2aY6e0EsaBHFoHcv1/Rf4ic3UYVci/yKMVWNU66FcTT2bNffZFC/0nHrcDh1FIBmwT+w
r8EvP/G//jrYZ0kkUDgeNqGVsjSpPX5UGyci7E+FiSAtHARHHT3oaSdLIxAQ+gTzbGGvcKpY8k+o
2qyM8SnOPCwncOp5fp3xJoBzVvXx6tYVbNL9Fk0cdpNNG0F9iGzKe1s0txjmVbF52ebZVRP2KmcU
1v7IXchyCHqjaIPGDmo8DgdOweKMcs1QJ5P08TL5uUsL4a8Pzbg7lH2lZvFlvh/SAJ+MCFx1D+MX
3Lbuv9MNTdnM0w2USftCXm0DB0gLp+QX6c1CsK8D0kfe889TgS23GYdXqOXnNZ6IfMVKDY1vQk/X
mPjhkeaLlHS+c44TE5BKwIW9pODEVmwO9FY6fXa1yFja07a19Z85RQHuqZqwiEnCQENHH0NYdni1
S5+nnZxrf+GtnGOdEZ/CkomPXMFnY0T5gMoyzsT8//xqkerFEIa//S1sgBNY9+qmfLUnuDQ4Eagv
6P+iBEAbnGwRXjgjQHrRjjEsw+LESWoNbLJeKSTPOn0SUNb8bKUy90OQ6D95EMBpVpnzvJy6lfLW
XKe+Ksvxkkfadvp6JPUG4rnNEMGCwCPFnPPyKOdJ/csVWD7dAQ+kVG5dIShspImpxKO8i/eC2FfR
3vmz26eErSRq8B3uYYw7CNKXO5bS8sirphF2iO70MNFCvsQONNKTfzIfGqurchfZnwQsZWz22bhB
krucsJtfB9Wd6n3YpiTcWmOtsy/79aRgMcjumJmbJhxXXO6BhdM4ezdTCtVp5MFp6NZgXyPOkp2i
vRrTOMg/fegdbW9dZ75CgRUgmYw+IXG6fyhKRYTpsKiLyJ1/FlwlvtLqe0GF/sJWspTCKKEPPNQz
F2ic0yx5PsrpWjEZ3SZ6EocwWpRQkWDD3RVhlYVMr5R62TLWTtgctHszgUVjIpVDLVL63SnxcX5h
ZsfAr9ALOTIAciow6LJQLwL0pnaWeCcFs+Fvro9KMKgC48dzIUC9EUy/Ibtqzp21QWfR6G7Nvf31
7eIh2URolDH/jLNZtEyvwDY1FWXfJHhK+YL4+YsZrICvXnvtYPvNtBxygfFhqxxj4tB0nLyMkD7X
TtNvDsZNHV1kUxZb+exskh95ljKz+uzjP/qpieibl4OUltSgxYhhmzKAQHFQXWL5pE+o3m2Ran8s
4HBs045yGKg5vlM2KCO8VOtYi8SQ3BPO99ZO/yKch6YtArSHPftx/CqkNeh+YxFTIIgTXLPEWnJM
1aZogal4vIfF8ipsTO1AwzQ69JirceCBa71HJxb+/PTpeXlEEkFSFi3cSoNOtZJiVz01sPL67Kb6
k+Ru0v6fZDPjzaxFciAevf1b8p6hvhYRHFz+EAgim4kXk0CUbRb/PrEuG7u5moACJ1qlz7+xrRvK
NjYGo7OQOvY+ICH72CAx+Q/zOma2onH03g==
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
