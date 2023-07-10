/*
采样频率fc，输出频率fo，频率控制字W，相位累加器位宽n
fo = fc * W / 2^n
*/
module DDS #(
    parameter PHASE_WIDTH = 32, //相位累加器位宽n，与混沌状态值位宽一致
    parameter ADDR_WIDTH = 10,  //RAM地址线位宽
    parameter DATA_WIDTH = 16   //RAM数据线位宽
)(
	input clk,
	input rst_n,
    input [1:0] wave_shape, //00：正弦   01：方波   10：三角   11：三次谐波

    input [PHASE_WIDTH-1:0] frq_word,   //频率控制字
    input [PHASE_WIDTH-1:0] phase_init, //初始相位

    output reg [PHASE_WIDTH:0] phase, //相位累加器，原位宽扩大1位用于控制器计算周期数
	output reg [DATA_WIDTH-1:0] dds_out
);

wire [DATA_WIDTH-1:0] dds_out_sin;
wire [DATA_WIDTH-1:0] dds_out_sqr;
wire [DATA_WIDTH-1:0] dds_out_tri;
wire [DATA_WIDTH-1:0] dds_out_harm;

always @(*)begin
    case(wave_shape)
        2'b00: dds_out <= dds_out_sin;
        2'b01: dds_out <= dds_out_sqr;
        2'b10: dds_out <= dds_out_tri;
        2'b11: dds_out <= dds_out_harm;
        default: dds_out <= dds_out_sin;
    endcase
end

//相位累加器
always @(posedge clk or negedge rst_n)begin
	if(rst_n == 1'b0) begin
        phase <= {0,phase_init};
    end
	else begin
        phase <= phase + frq_word;
    end
end

wire [ADDR_WIDTH-1:0] ram_addr; //截取相位累加器的高位作为RAM读取地址
assign ram_addr = phase[PHASE_WIDTH-1 : PHASE_WIDTH-ADDR_WIDTH];

DDS_RAM_W16D1024 sin_ram (
  .a(ram_addr), // input wire [9 : 0] a
  .d(),         // input wire [7 : 0] d
  .clk(clk),    // input wire clk
  .we(1'b0),    // input wire we
  .spo(dds_out_sin) // output wire [7 : 0] spo
);

DDS_RAM_W16D1024_sqr sqr_ram (
  .a(ram_addr), // input wire [9 : 0] a
  .d(),         // input wire [7 : 0] d
  .clk(clk),    // input wire clk
  .we(1'b0),    // input wire we
  .spo(dds_out_sqr) // output wire [7 : 0] spo
);

DDS_RAM_W16D1024_tri tri_ram (
  .a(ram_addr), // input wire [9 : 0] a
  .d(),         // input wire [7 : 0] d
  .clk(clk),    // input wire clk
  .we(1'b0),    // input wire we
  .spo(dds_out_tri) // output wire [7 : 0] spo
);

DDS_RAM_W16D1024_harm harm_ram (
  .a(ram_addr), // input wire [9 : 0] a
  .d(),         // input wire [7 : 0] d
  .clk(clk),    // input wire clk
  .we(1'b0),    // input wire we
  .spo(dds_out_harm) // output wire [7 : 0] spo
);

endmodule
