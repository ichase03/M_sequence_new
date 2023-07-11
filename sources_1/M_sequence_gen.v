//------------------------------------------------------- 
//! @author timzou-code01 zsttim@163.com
//! @date 2023-06-01 09:20:21
//! @LastEditors Zousongting zsttim@163.com
//! @version 2023-06-09 15:32:18
//! @file \M_sequence\M_sequence.srcs\sources_1\M_sequence_gen.v
//! @copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved. 
//! @brief 工程简介
//! @details 工程详细功能介绍
//------------------------------------------------------- 

module M_sequence_gen
#(
  parameter MSEQ_DATA_WIDTH = 16 , 
  parameter MSEQ_NUM = 8 //! M序列的数量
)(
  input MSEQ_clk ,
  input MSEQ_rst_n ,
  input [MSEQ_DATA_WIDTH-1:0] MSEQ_seed ,
  input [MSEQ_DATA_WIDTH-1:0] MSEQ_init_value ,
  output reg MSEQ_output 
);

reg [MSEQ_DATA_WIDTH-1:0] MSEQ_seed [MSEQ_NUM-1:0]; //! M序列的种子
reg [MSEQ_DATA_WIDTH-1:0] MSEQ_init_value [MSEQ_NUM-1:0];//! M序列的原始值


genvar i_mseq ;

//! M序列模块的生成
generate for (i_mseq = 0 ;i_mseq < MSEQ_NUM ;i_mseq = i_mseq + 1 ) begin:MSEQ_GEN
  
  M_sequence 
  #(
    .DATA_WIDTH (  MSEQ_DATA_WIDTH )
  )
  M_sequence_dut (
    .MSEQ_clk        ( MSEQ_clk        ),
    .MSEQ_rst_n      ( MSEQ_rst_n      ),
    .MSEQ_seed       ( MSEQ_seed       [i_mseq]),
    .MSEQ_init_value ( MSEQ_init_value [i_mseq]),
    .MSEQ_output     ( MSEQ_output     [i_mseq])
  );

end endgenerate





endmodule