`timescale 1ns/1ps

module tb_DDS ();

parameter period = 10;
parameter PHASE_WIDTH = 32;      //相位累加器位宽n，与混沌状态值位宽一致
parameter ADDR_WIDTH = 10;       //RAM地址线位宽
parameter PERIOD_NUM_WIDTH = 3;  //周期数位宽m（由整周期数的范围限定，3表示整周期数范围为0-7）
parameter FRQ_WORD = 42_949_673; //DDS频率控制字W
parameter CTRL = 1000;

reg clk;
reg rst_n;

reg CH0_mod; //通道模式，0为不截断，1为截断
reg CH0_chaotic_valid; //混沌模块输出状态的有效信号
reg [PHASE_WIDTH-1:0] CH0_chaotic_x; //混沌输出状态
reg [PHASE_WIDTH-1:0] CH0_chaotic_y;
reg [PHASE_WIDTH-1:0] CH0_chaotic_z;
reg CH1_mod; //通道模式，0为不截断，1为截断
reg CH1_chaotic_valid; //混沌模块输出状态的有效信号
reg [PHASE_WIDTH-1:0] CH1_chaotic_x; //混沌输出状态
reg [PHASE_WIDTH-1:0] CH1_chaotic_y;
reg [PHASE_WIDTH-1:0] CH1_chaotic_z;

wire chaotic_ctrl; //混沌模块迭代控制信号
wire [7:0] CH0_wave_out;
wire [7:0] CH1_wave_out;

DC_DDS_TOP #(
    .PHASE_WIDTH(PHASE_WIDTH),     //相位累加器位宽n，与混沌状态值位宽一致
    .ADDR_WIDTH(ADDR_WIDTH),      //RAM地址线位宽
    .PERIOD_NUM_WIDTH(PERIOD_NUM_WIDTH), //周期数位宽（由整周期数的范围限定，3表示整周期数范围为0-7）
    .FRQ_WORD(FRQ_WORD), //DDS频率控制字
    .CTRL(CTRL)
)t_DC_DDS_TOP(
	.clk(clk),
	.rst_n(rst_n),

    .CH0_mod(CH0_mod), //通道模式，0为不截断，1为截断
    .CH0_chaotic_valid(chaotic_ctrl), //混沌模块输出状态的有效信号
    .CH0_chaotic_x(CH0_chaotic_x), //混沌输出状态
    .CH0_chaotic_y(CH0_chaotic_y),
    .CH0_chaotic_z(CH0_chaotic_z),
    .CH1_mod(CH1_mod), //通道模式，0为不截断，1为截断
    .CH1_chaotic_valid(chaotic_ctrl), //混沌模块输出状态的有效信号
    .CH1_chaotic_x(CH1_chaotic_x), //混沌输出状态
    .CH1_chaotic_y(CH1_chaotic_y),
    .CH1_chaotic_z(CH1_chaotic_z),

    .chaotic_ctrl(chaotic_ctrl), //混沌模块迭代控制信号
	.CH0_wave_out(CH0_wave_out),
    .CH1_wave_out(CH1_wave_out)
);

initial begin
    clk <= 1'b1;
    forever #(period / 2) clk <= ~clk;
end

initial begin
                 rst_n <= 1'b0;
    #(period/2)  rst_n <= 1'b1;
end

initial begin
    CH0_mod <= 1'b0; CH1_mod <= 1'b0;
    #(period*10*CTRL) CH0_mod <= 1'b0; CH1_mod <= 1'b1;
    #(period*10*CTRL) CH0_mod <= 1'b1; CH1_mod <= 1'b1;
end

//initial begin
//                            CH0_chaotic_valid <= 1'b0; CH1_chaotic_valid <= 1'b0;
//    #(period*CTRL)           CH0_chaotic_valid <= 1'b1; CH1_chaotic_valid <= 1'b1;
//    repeat(29)begin
//        #(period*1)         CH0_chaotic_valid <= 1'b0; CH1_chaotic_valid <= 1'b0;
//        #(period*(CTRL-1))       CH0_chaotic_valid <= 1'b1; CH1_chaotic_valid <= 1'b1;
//    end
//    #(period*1)             CH0_chaotic_valid <= 1'b0; CH1_chaotic_valid <= 1'b0;
//end

initial begin
    CH0_chaotic_x <= 32'd0;
    CH0_chaotic_y <= 32'd0;
    CH0_chaotic_z <= 32'd0;

    #(period*CTRL)          CH0_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH0_chaotic_y <= 32'h793069f2;
                            CH0_chaotic_z <= 32'h793069f2;
    #(period*CTRL*9)        CH0_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH0_chaotic_y <= 32'h57563eae;
                            CH0_chaotic_z <= 32'h57563eae;
    #(period*CTRL*10)       CH0_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH0_chaotic_y <= {$random}%2147483648;
                            CH0_chaotic_z <= {$random}%2147483648;
    repeat(10)begin
        #(period*CTRL)      CH0_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH0_chaotic_y <= {$random}%2147483648;
                            CH0_chaotic_z <= {$random}%2147483648;
    end
end

initial begin
    CH1_chaotic_x <= 32'd0;
    CH1_chaotic_y <= 32'd0;
    CH1_chaotic_z <= 32'd0;

    #(period*CTRL)          CH1_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH1_chaotic_y <= 32'h793069f2;
                            CH1_chaotic_z <= 32'h793069f2;
    #(period*CTRL*9)        CH1_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH1_chaotic_y <= {$random}%2147483648;
                            CH1_chaotic_z <= {$random}%2147483648;
    repeat(20)begin
        #(period*CTRL)      CH1_chaotic_x[PHASE_WIDTH-1:PHASE_WIDTH-PERIOD_NUM_WIDTH] <= {$random}%8;
                            CH1_chaotic_y <= {$random}%2147483648;
                            CH1_chaotic_z <= {$random}%2147483648;
    end
end

endmodule
