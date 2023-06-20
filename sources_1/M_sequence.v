//------------------------------------------------------- 
//! @author timzou-code01 zsttim@163.com
//! @date 2023-05-18 20:52:57
//! @LastEditors timzou-code01 zsttim@163.com
//! @version 2023-05-29 21:00:29
//! @file \M_sequence\M_sequence.v
//! @copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved. 
//! @brief 工程简介
//! @details 工程详细功能介绍
//------------------------------------------------------- 
module M_sequence
#(
  parameter DATA_WIDTH = 16
)(
  input MSEQ_clk ,
  input MSEQ_rst_n ,
  input [DATA_WIDTH-1:0] MSEQ_seed ,
  input [DATA_WIDTH-1:0] MSEQ_init_value ,
  output reg MSEQ_output 
);


wire xor_value  ;
reg [DATA_WIDTH-1:0] mseq_value = 0 , mseed_value = 0;

always @(posedge MSEQ_clk) begin: M_value
  if(!MSEQ_rst_n) begin
    mseed_value <= MSEQ_seed ;
    mseq_value[DATA_WIDTH-2:0] <= MSEQ_init_value[DATA_WIDTH-1:1] ;
    mseq_value[DATA_WIDTH-1] <= ^(MSEQ_init_value & MSEQ_seed) ;
  end else begin 
    mseq_value[DATA_WIDTH-2:0] <= mseq_value[DATA_WIDTH-1:1] ;
    mseq_value[DATA_WIDTH-1] <= xor_value;
  end
  
end
// 求异或值
// always @(posedge MSEQ_clk) begin : MSEQ_xor
  // if(!MSEQ_rst_n) begin
  //   xor_value <= ^(MSEQ_init_value & MSEQ_seed) ;
  // end else begin
    assign xor_value = ^(mseq_value & mseed_value) ;
  // end
// end
 
//输出
always @(posedge MSEQ_clk) begin: MOUT_value
  if(!MSEQ_rst_n) begin
    MSEQ_output <= MSEQ_init_value[0];
  end else begin 
    MSEQ_output <=  mseq_value[0];
  end
  
end


endmodule