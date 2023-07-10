// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jun  9 17:03:16 2023
// Host        : TataEverglow running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top rom_M_sequence -prefix
//               rom_M_sequence_ rom_M_sequence_sim_netlist.v
// Design      : rom_M_sequence
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_M_sequence,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module rom_M_sequence
   (clka,
    addra,
    douta,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [17:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [17:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [17:0]douta;
  wire [17:0]doutb;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.9543 mW" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "rom_M_sequence.mem" *) 
  (* C_INIT_FILE_NAME = "rom_M_sequence.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  rom_M_sequence_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
bof7FLflQjK12Za7g3J2VyBGJCU1GJa5sjbmFtD3eAkFERV3720A4ENob/9XDWD7jH631sC+AaBz
7O2D4JMPNg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tB+IcANepIWg4QU2DQaYqN8ppIKLWdiOm09W/Y9H/xFZc4sGlzYKtaXr0hMH6n+RrvUvL0WIwrpi
FxtMYPgA+k9jOUft20Q91MA3Lysqdc8++uxEvY3nL7HJ7Y6lBeFNzNcgFD2QPOKHc5j6iW3Yn0+n
B5SZID0/GKhwDbnU8wo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vMleKAAld+oOZSLasMokBkjqt8GDGEnc83zqH3Rz5QQIgMyCu6xxuBjTCXtAOxI9kwxCztgIFacF
h1Jr6XxdB9egXvjxhmvWaKkYeWFmb4eyGLoK21FNAtEVgcTq5z5NE10TXaWUiBsvNfRDztbwHiLU
qtBHpxW2DR8AabWqfksp0I+J00WdIEItEgXjyB7aosSDyQ0OU/W4zSVMjzDtnSaOcfDFe8+K0+ul
EcDSXU4RVNCCBUGTF1cppyFo/XaNiaOuAYaNU/UsMgdm94z71VjDVW+a5MjacM6pvNliujAsb6TI
bEoI0GS02bVgJ1t4OhzlxgdQ4weor/VSFTA+uA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MJ1ljn8PX5F/tR8eQ+T/nevS0AhWSXmkdpQWSO6iPWrh++NlxiHd21YQoItbbCWtt7ZRlVH1+nDr
caF6hQQXcFjnMuawf1WxlnETWJfa7JJhCdm+A8AMtaf3mtDTfp3nyTzJIU2GSpNwGkItw6f3UMan
4L/jklbGB8BgdCX8B3dNRUFZExREcFD4o/9dSdJ/NMvs9D1l13G3Ap7XL3iQ1/M2TE63f79tlZsu
nuPYmy/3lJMm3EFafzq6z9kKgbmzQwndWRixc/2QeqtYdhjV1gYmhgSQwVZ7t2klWyXpEAPKvK+B
MalhS/DRGn4rnGQcxzUTLc4vDWuViseaWhIlYA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fy9a5eXCSvliKRK+D0/Xn2i44gn7tEFTW+vbKlf62yxU4Q+VMsSkMaAi/D9Ryw29Kxi6DQDr4YIE
6OO1iyecLKnnLTd3O92MO1Q0iAG689sQKuRtziiA76DsJS0wCfk8ZQ3Y9M605X479OMyRn+Mrti6
93p6oTICNalhgJagS+yWXwb2+ah1KSodS+7oYxNTF+cEjyeq7qftei6BBSPtU87IzQRyU3IrVYPA
EMfxxhqyQMapJ90e8Z9p/ZqVrxaJso4w+ph91lB8Gn59HGvNJVUyXnJXa29jqo/bJM1YFZKVFFJo
9r5Lva2pojHvqZ2rWG2XFLRYMUAsYJ2QbmqzWQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RTLuYX6oDQ1+UVPZkjZp3TZ3nKswyvXrpfGFANzdfWwJnw6BhFNVvdwKHUwLgM2KEvNwN/HrUWNn
IgBOBC65VtJPzC9Mb7845ox+oWf/RyW0z6dsKXcklF0HQv21aik33njOUhksmG4Yeh2f7OeahJgO
4bSKLEJVbr37nyBXA1w=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
leni9omnQ/+Zc25iqusfU/FmRAi+MrC2FhW417rb+Zo+u9V7WsEuFGnqdKept/RHiQXyDlED15Ge
K6k1B7nd0T7WsQT2l6BwVpAlrb19QG9qoe6EavUQlkzCGDy7S4t4ISPbV+iYlgPEJ/xivxITw/Sv
VpQQUQCFVL6+m6Y7PM9f0h/9rBhMqnrPtVCRj3RTxQv1dlg9AXf5PcrayRmmu4KxxL5epbRsOA1N
DsoKUvR7devxHZMMD0UI1DOFx/us0igqepr1BRaQuhl5cBC19WZ2icncZ80P9IOX/hCIOWGUVXhp
JUaDl5nhLpNw75g2YuLW1BXicNvK5VhKBOdcMw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T20TJDgDWt/oKGMsCpbWQWON759JoffxwFFbDHkVaotcUdW1+WkNxT7pGaIYcUn8pLgwpeK2K9py
4mQy5gfI1mJqdcSrIRHF4TM2ynW7pNkDCHD852ZRzQoaceNrsq2nW6z+YL21ogZ6magy7iL12e+2
Y4sgKA2uDCSQZyaWiAb2XNBVh6fLmPEiZc7xnEQZMYJuw3hs5EwOs/J/mVXehc+n+y+ZDnH8gaec
JXTF/gd71oQwlAueDXvNPYI+6WTJby5zSexP/Qo99iWdDX//Q69IRIRRsowGmyXj1UtznoayDHit
PAQyZ+ODYUkjEJPDcB+/F5XbAoCKHRtL6jN5Qg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26464)
`pragma protect data_block
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
CvHvTyFpJi1DvFSZTT5fjw==
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
