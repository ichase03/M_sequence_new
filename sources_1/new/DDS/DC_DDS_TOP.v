module DC_DDS_TOP #(
    parameter PHASE_WIDTH = 32,    //相位累加器位宽n，与混沌状态值位宽一致
    parameter ADDR_WIDTH = 10,     //RAM地址线位宽
    parameter DATA_WIDTH = 16,     //RAM数据线位宽
    parameter PERIOD_NUM_WIDTH = 3 //周期数位宽（由整周期数的范围限定，3表示整周期数范围为0-7）           
)(
	input clk,
	input rst_n,
    input [PHASE_WIDTH-1:0] frq_word   , //DDS频率控制字
    input [PHASE_WIDTH-1:0] period_ctrl, //混沌模块控制脉冲信号的产生间隔，单位：系统时钟clk的周期数，数值必须大于混沌模块的控制信号输入到valid信号输出之间的延迟

    input [1:0] CH0_wave_shape,
    input CH0_mod, //通道模式，0为不截断，1为截断
    input CH0_chaotic_valid, //混沌模块输出状态的有效信号
    input [PHASE_WIDTH-1:0] CH0_chaotic_x, //混沌输出状态
    input [PHASE_WIDTH-1:0] CH0_chaotic_y,
    input [PHASE_WIDTH-1:0] CH0_chaotic_z,
    input [1:0] CH1_wave_shape,
    input CH1_mod, //通道模式，0为不截断，1为截断
    input CH1_chaotic_valid, //混沌模块输出状态的有效信号
    input [PHASE_WIDTH-1:0] CH1_chaotic_x, //混沌输出状态
    input [PHASE_WIDTH-1:0] CH1_chaotic_y,
    input [PHASE_WIDTH-1:0] CH1_chaotic_z,

    output reg chaotic_ctrl, //混沌模块迭代控制信号
    output CH0_wave_out_valid,
	output [DATA_WIDTH-1:0] CH0_wave_out,
    output CH1_wave_out_valid,
    output [DATA_WIDTH-1:0] CH1_wave_out
);

reg [PHASE_WIDTH-1:0] cnt_ctrl = 'd0;

always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        chaotic_ctrl <= 1'b0;
        cnt_ctrl <= 'd0;
    end
    else begin
        if(cnt_ctrl == period_ctrl-1'b1)begin
            chaotic_ctrl <= 1'b1;
            cnt_ctrl <= 'd0;
        end
        else begin
            chaotic_ctrl <= 1'b0;
            cnt_ctrl <= cnt_ctrl + 1'b1;
        end
    end
end

wire [PERIOD_NUM_WIDTH-1:0] CH0_period_num; //整周期数
wire [PHASE_WIDTH-1:0] CH0_phase_init;      //初始相位
wire [PHASE_WIDTH-1:0] CH0_phase_end;       //结束相位

assign CH0_period_num = (CH0_mod == 1'b1)? CH0_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] : 'd0 - 1'b1;
assign CH0_phase_init = CH0_chaotic_y;
assign CH0_phase_end  = (CH0_mod == 1'b1)? CH0_chaotic_z : CH0_chaotic_y;

wire [PERIOD_NUM_WIDTH-1:0] CH1_period_num; //整周期数
wire [PHASE_WIDTH-1:0] CH1_phase_init;      //初始相位
wire [PHASE_WIDTH-1:0] CH1_phase_end;       //结束相位

assign CH1_period_num = (CH1_mod == 1'b1)? CH1_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] : 'd0 - 1'b1;
assign CH1_phase_init = CH1_chaotic_y;
assign CH1_phase_end  = (CH1_mod == 1'b1)? CH1_chaotic_z : CH1_chaotic_y;

DDS_control #(
    .PHASE_WIDTH(PHASE_WIDTH),          //相位累加器位宽n，与混沌状态值位宽一致
    .ADDR_WIDTH(ADDR_WIDTH),            //RAM地址线位宽
    .DATA_WIDTH(DATA_WIDTH),            //RAM数据线位宽
    .PERIOD_NUM_WIDTH(PERIOD_NUM_WIDTH) //周期数位宽（由整周期数的范围限定，3表示整周期数范围为0-7）
)CH0_DDS(
	.clk(clk),
	.rst_n(rst_n),
    .wave_shape(CH0_wave_shape),
    .chaotic_valid(CH0_chaotic_valid), //混沌模块输出状态的有效信号
    .frq_word(frq_word),     //DDS频率控制字

    .DDS_mod(CH0_mod),           //DDS输出模式，0为不截断，1为截断
    .period_num(CH0_period_num), //整周期数
    .phase_init(CH0_phase_init), //初始相位
    .phase_end(CH0_phase_end),   //结束相位

    .wave_out_valid(CH0_wave_out_valid),
	.wave_out(CH0_wave_out)
);

DDS_control #(
    .PHASE_WIDTH(PHASE_WIDTH),          //相位累加器位宽n，与混沌状态值位宽一致
    .ADDR_WIDTH(ADDR_WIDTH),            //RAM地址线位宽
    .DATA_WIDTH(DATA_WIDTH),            //RAM数据线位宽
    .PERIOD_NUM_WIDTH(PERIOD_NUM_WIDTH) //周期数位宽（由整周期数的范围限定，3表示整周期数范围为0-7）
)CH1_DDS(
	.clk(clk),
	.rst_n(rst_n),
    .wave_shape(CH1_wave_shape),
    .chaotic_valid(CH1_chaotic_valid), //混沌模块输出状态的有效信号
    .frq_word(frq_word),     //DDS频率控制字

    .DDS_mod(CH1_mod),           //DDS输出模式，0为不截断，1为截断
    .period_num(CH1_period_num), //整周期数
    .phase_init(CH1_phase_init), //初始相位
    .phase_end(CH1_phase_end),   //结束相位

    .wave_out_valid(CH1_wave_out_valid),
	.wave_out(CH1_wave_out)
);

ila_dds ila_dds_inst (
	.clk(clk), // input wire clk

	.probe0 (frq_word), // input wire [31:0]  probe0  
	.probe1 (period_ctrl), // input wire [31:0]  probe1 
	.probe2 (CH0_mod), // input wire [31:0]  probe2 
	.probe3 (CH0_chaotic_valid), // input wire [31:0]  probe3 
	.probe4 (CH0_chaotic_x), // input wire [31:0]  probe4 
	.probe5 (CH0_chaotic_y), // input wire [31:0]  probe5 
	.probe6 (CH0_chaotic_z), // input wire [31:0]  probe6 
	.probe7 (CH1_mod), // input wire [31:0]  probe7 
	.probe8 (CH1_chaotic_valid), // input wire [31:0]  probe8 
	.probe9 (CH1_chaotic_x), // input wire [31:0]  probe9 
	.probe10(CH1_chaotic_y), // input wire [31:0]  probe10 
	.probe11(CH1_chaotic_z), // input wire [31:0]  probe11 
	.probe12(chaotic_ctrl), // input wire [31:0]  probe12 
	.probe13(cnt_ctrl), // input wire [31:0]  probe13 
	.probe14(CH0_wave_out_valid), // input wire [31:0]  probe14 
	.probe15(CH0_wave_out), // input wire [31:0]  probe15 
	.probe16(CH1_wave_out_valid), // input wire [31:0]  probe16 
	.probe17(CH1_wave_out) // input wire [31:0]  probe17
);

endmodule
