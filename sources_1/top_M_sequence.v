//------------------------------------------------------- 
//! @author timzou-code01 zsttim@163.com
//! @date 2023-06-06 20:45:02
//! @LastEditors Zousongting zsttim@163.com
//! @version 2023-06-09 16:13:43
//! @file \M_sequence\M_sequence.srcs\sources_1\top_M_sequence.v
//! @copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved. 
//! @brief 将输入的信号进行位宽截取，输出为固定位宽的数据
//! @details 输入数据位宽为 [INPUT_DATA_WIDTH-1:0] 的数据，按照小端数据排列
//! 输出的数据重新打包为 OUTPUT_DATA_NUM 个位宽为 [OUTPUT_DATA_WIDTH -1 :0] 的数据

//------------------------------------------------------- 
module top_M_sequence
#(
  parameter INPUT_DATA_WIDTH  = 288 , //! 输入的数据位宽
  parameter OUTPUT_DATA_NUM   = 16  ,//! 输出的数据数目
  parameter OUTPUT_DATA_WIDTH = 16  ,//! 输出的数据位宽
  parameter ROM_ADDR_WIDHT    = 11  //! ROM的地址位宽
)(
  input MSEQ_clk ,
  input MSEQ_rst_n ,
  input [INPUT_DATA_WIDTH-1:0] MSEQ_din ,
  input MSEQ_din_vld , //! 信号有效值标志
  output [OUTPUT_DATA_NUM-1:0] MSEQ_output 
);

//! 定义区

wire [OUTPUT_DATA_WIDTH - 1 : 0] MSEQ_m_origin      [OUTPUT_DATA_NUM -1 :0] ; //! 通过混沌序列截取的原始m序列输入
reg  [ROM_ADDR_WIDHT    - 1 : 0] MSEQ_m_cut_and_add [OUTPUT_DATA_NUM -1 :0] ; //! 通过对混沌序列进行截取和加操作
wire [OUTPUT_DATA_WIDTH - 1 : 0] MSEQ_rom_dout_ID      [OUTPUT_DATA_NUM -1 :0] ; //! 通过对混沌序列进行截取和加操作

wire  MSEQ_fifo_rd_en ; //! FIFO读取有效位
localparam FIFO_RD_EN_DELAY = 3;
reg [FIFO_RD_EN_DELAY -1:0] MSEQ_fifo_rd_en_r ; //! FIFO读取有效位
wire [OUTPUT_DATA_WIDTH - 1 : 0]  MSEQ_FD  [OUTPUT_DATA_NUM-1:0];
wire [OUTPUT_DATA_NUM-1:0] MSEQ_FD_vld ;

reg [9:0] rst_cnt = 0;

//! 功能区

//! step1-1：
//! 将混沌序列输入的数据进行位宽截取
//! 输入数据位宽为 [INPUT_DATA_WIDTH-1:0] 的数据，按照小端数据排列
//! 输出的数据重新打包为 OUTPUT_DATA_NUM 个位宽为 [OUTPUT_DATA_WIDTH -1 :0] 的数据
genvar i_mseq ; 
generate for (i_mseq = 0 ;i_mseq < OUTPUT_DATA_NUM ;i_mseq = i_mseq + 1 ) begin:CUT_DATA
  
  // 注：M序列的FD信号产生即更新原理如下：
  // 注：将原始INPUT_DATA_WIDTH位的混沌序列，打包为OUTPUT_DATA_NUM个、每个OUTPUT_DATA_WIDTH位的小混沌信号MSEQ_m_origin
  // 注：将MSEQ_m_origin存进fifo中，作为M序列的MSEQ_FD输入，控制M序列实时产生伪随机信号
  // 注：新的混沌序列到来后，会产生新的MSEQ_m_origin，新的MSEQ_m_origin在FIFO_RD_EN_DELAY个延迟后，作为新的MSEQ_FD，产生新的M序列

  // 注：混沌信号MSEQ_m_origin除开用作MSEQ_FD以外，还在截取后，转化为ROM的地址信号MSEQ_m_cut_and_add

  //! 获取原始m序列
    assign MSEQ_m_origin[i_mseq] = MSEQ_din [i_mseq * OUTPUT_DATA_WIDTH +: OUTPUT_DATA_WIDTH] ;

  //! 截取混沌序列，用于ROM的ADDR使用，其中第 i_mseq 个地址使用MSEQ_m_origin 的高位 + i_mseq
    always @(posedge MSEQ_clk) begin: MSEQ_CUT_AND_ADD
      MSEQ_m_cut_and_add[i_mseq] <= MSEQ_m_origin[i_mseq][OUTPUT_DATA_WIDTH-1 -: ROM_ADDR_WIDHT] + i_mseq; 
    end

  //! 延迟ID信号,FIFO本身延迟为1 cycle 

    fifo_cut_delay fifo_cut_data_delay
    (
      .clk   (MSEQ_clk                             ),
      .srst  (!MSEQ_rst_n                          ),
      .empty (                                     ),
      .din   (MSEQ_m_origin[i_mseq]                ),
      .wr_en (MSEQ_din_vld                         ),
      .rd_en (MSEQ_fifo_rd_en_r[FIFO_RD_EN_DELAY-1]),
      .dout  (MSEQ_FD[i_mseq]                       ),
      .valid (MSEQ_FD_vld[i_mseq]                   ) 
    );
  
end endgenerate

//! step1-2: 读信号的延迟

  assign MSEQ_fifo_rd_en = MSEQ_din_vld ;

  always @(posedge MSEQ_clk) begin:FIFO_RDEN_DELAY
    MSEQ_fifo_rd_en_r <= {MSEQ_fifo_rd_en_r[FIFO_RD_EN_DELAY-1:0],MSEQ_fifo_rd_en};
  end

//! step1-3:
//! 输入至ROM，ROM的延迟为2 cycle

generate for (i_mseq = 0 ;i_mseq < OUTPUT_DATA_NUM ;i_mseq = i_mseq + 2 ) begin:ROM_SET

  rom_M_sequence rom_M_sequence
  (
    .clka   (MSEQ_clk                    ),
    .addra (MSEQ_m_cut_and_add[i_mseq ]  ),
    .douta (MSEQ_rom_dout_ID   [i_mseq ] ),
    .clkb   (MSEQ_clk                    ),
    .addrb (MSEQ_m_cut_and_add[i_mseq+1] ),
    .doutb (MSEQ_rom_dout_ID   [i_mseq+1])
  ) ;

end endgenerate

//! step2:将数据输入至M序列

//! step2.1:复位信号等待

  always @(posedge MSEQ_clk) begin
    if (!MSEQ_rst_n) begin
      rst_cnt <= 0 ;
    end else if (rst_cnt[9]) begin
      rst_cnt <= rst_cnt ;
    end else begin
      rst_cnt <= rst_cnt + 1'b1 ;
    end
  end



generate for (i_mseq = 0 ;i_mseq < OUTPUT_DATA_NUM ;i_mseq = i_mseq + 1 ) begin:M_SET

  M_sequence 
  #(
    .DATA_WIDTH (  OUTPUT_DATA_WIDTH )
  )
  M_sequence_dut (
    .MSEQ_clk        ( MSEQ_clk                   ),
    .MSEQ_rst_n      ( MSEQ_rst_n & rst_cnt[9]    ),
    .MSEQ_seed       ( MSEQ_FD          [i_mseq]  ),
    .MSEQ_init_value ( MSEQ_rom_dout_ID [i_mseq ] ),
    .MSEQ_output     ( MSEQ_output      [i_mseq]  )
  );
  
end endgenerate



endmodule