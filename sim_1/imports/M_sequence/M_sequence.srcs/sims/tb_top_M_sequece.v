module tb_top_M_sequence;

  // Parameters
  localparam  INPUT_DATA_WIDTH = 288;
  localparam  OUTPUT_DATA_NUM = 16;
  localparam  OUTPUT_DATA_WIDTH = 16;
  localparam  ROM_ADDR_WIDHT = 11;

  // Ports
  reg   MSEQ_clk         = 0               ;
  reg   MSEQ_rst_n       = 0               ;
  reg  [INPUT_DATA_WIDTH-  1:0] MSEQ_din = 256'h12345678_9ABCDEF0_12345678_9ABCDEF0_12345678_9ABCDEF0_12345678_9ABCDEF0 ;
  reg   MSEQ_din_vld     = 0               ;
  wire [OUTPUT_DATA_NUM -  1:0] MSEQ_output;

  reg [5:0] MSEQ_cnt = 0 ;

  top_M_sequence 
  #(
    .INPUT_DATA_WIDTH(INPUT_DATA_WIDTH ),
    .OUTPUT_DATA_NUM(OUTPUT_DATA_NUM ),
    .OUTPUT_DATA_WIDTH(OUTPUT_DATA_WIDTH ),
    .ROM_ADDR_WIDHT ( ROM_ADDR_WIDHT )
  )
  top_M_sequence_dut (
    .MSEQ_clk     ( MSEQ_clk     ),
    .MSEQ_rst_n   ( MSEQ_rst_n   ),
    .MSEQ_din     ( MSEQ_din     ),
    .MSEQ_din_vld ( MSEQ_din_vld ),
    .MSEQ_output  ( MSEQ_output  )
  );

  initial begin
    begin
      #1000 MSEQ_rst_n = 1;
      #50000 $finish;
    end
  end

  always @(posedge MSEQ_clk) begin
    MSEQ_cnt <= MSEQ_cnt + 1 ;
  end

  always @(posedge MSEQ_clk) begin
    if (MSEQ_cnt == 16) begin
      MSEQ_din_vld <= 1 ;
    end else begin
      MSEQ_din_vld <= 0 ;
    end
  end

  genvar i_for ;
  generate for (i_for = 0;i_for < OUTPUT_DATA_NUM ;i_for = i_for + 1 ) begin
  always @(posedge MSEQ_clk) begin
    if (MSEQ_din_vld) begin
        
        MSEQ_din[OUTPUT_DATA_WIDTH * i_for +: OUTPUT_DATA_WIDTH] <= MSEQ_din[OUTPUT_DATA_WIDTH * i_for +: OUTPUT_DATA_WIDTH] + 1 ;
      end
    end
  end endgenerate
  

  always
    #5  MSEQ_clk = ! MSEQ_clk ;

endmodule
