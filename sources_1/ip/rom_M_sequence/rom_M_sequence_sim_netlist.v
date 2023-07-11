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
YNyZT9lF5va1F+ERH/97/g==
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
