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
/Z/VOBGCQnfRVN2GdnPLTg==
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
