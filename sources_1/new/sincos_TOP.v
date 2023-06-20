`timescale 1ns/1ps
/*
149-Latency
π : 32'h40490FDA
2π: 32'h40C90FDA  64'h401921FB54442EEA
*/
module sincos_TOP #(
    parameter DATA_WIDTH = 64, //数据位宽须与 Floating-point IP 数据位宽匹配
    parameter CORDIC_PHASE_WIDTH = 32  //数据位宽须与 CORDIC IP 数据位宽匹配
)(
    input clk,
    input rst_n,

    input Theta_valid,
    input signed [DATA_WIDTH-1:0] Theta,

    output reg sin_valid,
    output reg signed [DATA_WIDTH-1:0] sin,
    output reg cos_valid,
    output reg signed [DATA_WIDTH-1:0] cos
);

wire DIV_result_valid;
wire signed [DATA_WIDTH-1:0] DIV_result;
wire DIV_result_int_valid;
wire signed [DATA_WIDTH-1:0] DIV_result_int;
wire multiple_valid;
wire signed [DATA_WIDTH-1:0] multiple;
wire MUL_result_valid;
wire signed [DATA_WIDTH-1:0] MUL_result;
wire Theta_valid_dly1;
wire signed [DATA_WIDTH-1:0] Theta_dly1;

wire float_Theta_valid;
wire signed [DATA_WIDTH-1:0] float_Theta;
wire int2frac13_Theta_valid;
wire signed [CORDIC_PHASE_WIDTH-1:0] int2frac13_Theta;
wire int1frac14_sincos_valid;
wire signed [CORDIC_PHASE_WIDTH-1:0] int1frac14_sin;
wire signed [CORDIC_PHASE_WIDTH-1:0] int1frac14_cos;
wire float_sin_valid;
wire signed [DATA_WIDTH-1:0] float_sin;
wire float_cos_valid;
wire signed [DATA_WIDTH-1:0] float_cos;

/*******************θ修正(-π,π) start********************/
//57-Latency  θ/2π
Duffing_float_DIV sincos_DIV (
  .aclk(clk),                                  // input wire aclk
  .aresetn(rst_n),                             // input wire aresetn
  .s_axis_a_tvalid     (Theta_valid         ), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (Theta               ), // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid     (Theta_valid         ), // input wire s_axis_b_tvalid
  .s_axis_b_tdata      (64'h401921FB54442EEA), // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(DIV_result_valid    ), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (DIV_result          )  // output wire [31 : 0] m_axis_result_tdata
);

//6-Latency  单精度浮点转32位有符号整数（四舍五入）
Duffing_float_2_int32 sincos_f2i (
  .aclk(clk),                                  // input wire aclk
  .aresetn(rst_n),                             // input wire aresetn
  .s_axis_a_tvalid     (DIV_result_valid    ), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (DIV_result          ), // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(DIV_result_int_valid), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (DIV_result_int      )  // output wire [31 : 0] m_axis_result_tdata
);

//7-Latency  四舍五入后转回浮点
Duffing_int32_2_float sincos_i2f (
  .aclk(clk),                                  // input wire aclk
  .aresetn(rst_n),                             // input wire aresetn
  .s_axis_a_tvalid     (DIV_result_int_valid), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (DIV_result_int      ), // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(multiple_valid      ), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (multiple            )  // output wire [31 : 0] m_axis_result_tdata
);

//15-Latency  multiple*2π
float_mul_double sincos_MUL (
  .aclk(clk),                                  // input wire aclk
  .aresetn(rst_n),                             // input wire aresetn
  .s_axis_a_tvalid     (multiple_valid      ), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (multiple            ), // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid     (multiple_valid      ), // input wire s_axis_b_tvalid
  .s_axis_b_tdata      (64'h401921FB54442EEA), // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(MUL_result_valid    ), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (MUL_result          )  // output wire [31 : 0] m_axis_result_tdata
);

reg MUL_result_valid_dly1;
reg signed [DATA_WIDTH-1:0] MUL_result_dly1;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        MUL_result_valid_dly1 <= 1'b0;
        MUL_result_dly1 <= 'h0;
    end
    else begin
        MUL_result_valid_dly1 <= MUL_result_valid;
        MUL_result_dly1 <= MUL_result;
    end
end

//延迟θ与MUL_result_dly1同步,地址A值为θ修正的除法器、浮转定、定转浮、乘法器Latency总和
Chaotic_VSR Theta_dly (
  .A(8'd85),                          // input wire [7 : 0] A
  .D({Theta_valid,Theta}),          // input wire [64 : 0] D
  .CLK(clk),                        // input wire CLK
  .Q({Theta_valid_dly1,Theta_dly1}) // output wire [64 : 0] Q
);

//14-Latency  θ归一化至(-π,π)
Duffing_float_ADD0SUB1 sincos_SUB (
  .aclk(clk),                                      // input wire aclk
  .aresetn(rst_n),                                 // input wire aresetn
  .s_axis_a_tvalid        (Theta_valid_dly1     ), // input wire s_axis_a_tvalid
  .s_axis_a_tdata         (Theta_dly1           ), // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid        (MUL_result_valid_dly1), // input wire s_axis_b_tvalid
  .s_axis_b_tdata         (MUL_result_dly1      ), // input wire [31 : 0] s_axis_b_tdata
  .s_axis_operation_tvalid(1'b1                 ), // input wire s_axis_operation_tvalid
  .s_axis_operation_tdata ('d1                  ), // input wire [7 : 0] s_axis_operation_tdata
  .m_axis_result_tvalid   (float_Theta_valid    ), // output wire m_axis_result_tvalid
  .m_axis_result_tdata    (float_Theta          )  // output wire [31 : 0] m_axis_result_tdata
);
/*******************θ修正(-π,π) end********************/


/*******************CORDIC start********************/
//6-Latency  θ浮点转定点
Duffing_float_2_int2frac13 PHASE_float_2_int2frac13(
  .aclk(clk),                                    // input wire aclk
  .aresetn(rst_n),                               // input wire aresetn
  .s_axis_a_tvalid     (float_Theta_valid     ), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (float_Theta           ), // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(int2frac13_Theta_valid), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (int2frac13_Theta      )  // output wire [15 : 0] m_axis_result_tdata
);

//36-Latency  CORDIC计算sinθ和cosθ
CORDIC_sincos sincos_calcu (
  .aclk(clk),                                            // input wire aclk
  .aresetn(rst_n),                                       // input wire aresetn
  .s_axis_phase_tvalid(int2frac13_Theta_valid         ), // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata (int2frac13_Theta               ), // input wire [15 : 0] s_axis_phase_tdata
  .m_axis_dout_tvalid (int1frac14_sincos_valid        ), // output wire m_axis_dout_tvalid
  .m_axis_dout_tdata  ({int1frac14_sin,int1frac14_cos})  // output wire [31 : 0] m_axis_dout_tdata
);

//6-Latency  sinθ和cosθ定点转浮点
Duffing_int1frac14_2_float sin_int1frac14_2_float (
  .aclk(clk),                                     // input wire aclk
  .aresetn(rst_n),                                // input wire aresetn
  .s_axis_a_tvalid     (int1frac14_sincos_valid), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (int1frac14_sin         ), // input wire [15 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(float_sin_valid        ), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (float_sin              )  // output wire [31 : 0] m_axis_result_tdata
);

Duffing_int1frac14_2_float cos_int1frac14_2_float (
  .aclk(clk),                                     // input wire aclk
  .aresetn(rst_n),                                // input wire aresetn
  .s_axis_a_tvalid     (int1frac14_sincos_valid), // input wire s_axis_a_tvalid
  .s_axis_a_tdata      (int1frac14_cos         ), // input wire [15 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(float_cos_valid        ), // output wire m_axis_result_tvalid
  .m_axis_result_tdata (float_cos              )  // output wire [31 : 0] m_axis_result_tdata
);
/*******************CORDIC end********************/

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        sin_valid <= 1'b0;
        sin       <= 'h0;
        cos_valid <= 1'b0;
        cos       <= 'h0;
    end
    else begin
        sin_valid <= float_sin_valid;
        sin       <= float_sin;
        cos_valid <= float_cos_valid;
        cos       <= float_cos;
    end
end

endmodule