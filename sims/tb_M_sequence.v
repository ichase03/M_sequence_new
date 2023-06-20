//------------------------------------------------------- 
//! @author timzou-code01 zsttim@163.com
//! @date 2023-05-18 21:14:23
//! @LastEditors timzou-code01 zsttim@163.com
//! @version 2023-05-29 21:36:37
//! @file \M_sequence\sim\tb_M_sequence.v
//! @copyright (c) 2023 by ${git_name} email: ${git_email}, All Rights Reserved. 
//! @brief 工程简介
//! @details 工程详细功能介绍
//------------------------------------------------------- 
module tb_M_sequence;

  // Parameters
  localparam  DATA_WIDTH = 8;
  localparam PERIOD = 10 ;

  // Ports
  reg MSEQ_clk = 0;
  reg MSEQ_rst_n = 0;
  reg [DATA_WIDTH-1:0] MSEQ_seed ;
  reg [DATA_WIDTH-1:0] MSEQ_init_value = 8'd54;
  wire MSEQ_output;

  reg [DATA_WIDTH-1:0] seed_reg [31:0];

  initial begin 
    seed_reg[0] = 113 ;
    seed_reg[1] = 169 ;
    seed_reg[2] = 105 ;
    seed_reg[3] = 101 ;
    seed_reg[4] = 245 ;
    seed_reg[5] = 141 ;
    seed_reg[6] = 77  ;
    seed_reg[7] = 45  ;

  end

  genvar i ;
  for (i  = 8;i<32 ;i=i+1 ) begin
    initial begin 
      seed_reg[i] = 45 ;
    end
  end
  

  M_sequence 
  #(
    .DATA_WIDTH (  DATA_WIDTH )
  )
  M_sequence_dut (
    .MSEQ_clk        ( MSEQ_clk        ),
    .MSEQ_rst_n      ( MSEQ_rst_n      ),
    .MSEQ_seed       ( MSEQ_seed       ),
    .MSEQ_init_value ( MSEQ_init_value ),
    .MSEQ_output     ( MSEQ_output     )
  );

  initial begin
    begin
      // #(PERIOD*10) MSEQ_rst_n = 1; 
      #(PERIOD*1000)  $stop; 
    end
  end
     always #(PERIOD*20) MSEQ_rst_n = ~MSEQ_rst_n; 

  reg[5:0] i_var = 0 ;

  always @(negedge MSEQ_rst_n) begin
    MSEQ_init_value <= MSEQ_init_value + 1'b1 ;
    MSEQ_seed <= seed_reg[i_var] ;
    i_var <= i_var + 1 ; 
  end

  initial begin
    $dumpfile("tb_M_sequence.vcd");        //生成的vcd文件名称
    $dumpvars(0, tb_M_sequence);    //tb模块名称
  end

  always
    #(PERIOD/2)  MSEQ_clk = ! MSEQ_clk ;

endmodule
