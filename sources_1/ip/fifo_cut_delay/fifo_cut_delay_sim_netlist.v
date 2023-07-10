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
HWa0+1mehvZjdLauVWSn36k9PZ333moR/w==
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
