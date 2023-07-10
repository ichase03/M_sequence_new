module DDS_control #(
    parameter PHASE_WIDTH = 32,    //相位累加器位宽n，与混沌状态值位宽一致
    parameter ADDR_WIDTH = 10,     //RAM地址线位宽
    parameter DATA_WIDTH = 16,     //RAM数据线位宽
    parameter PERIOD_NUM_WIDTH = 3 //周期数位宽（由整周期数的范围限定，3表示整周期数范围为0-7）
)(
	input clk,
	input rst_n,
    input [1:0] wave_shape,
    input chaotic_valid,                     //混沌模块输出状态的有效信号
    input [PHASE_WIDTH-1:0] frq_word,        //DDS频率控制字

    input DDS_mod,                           //DDS输出模式，0为不截断，1为截断
    input [PERIOD_NUM_WIDTH-1:0] period_num, //整周期数
    input [PHASE_WIDTH-1:0] phase_init,      //初始相位
    input [PHASE_WIDTH-1:0] phase_end,       //结束相位

    output reg wave_out_valid,
	output reg [DATA_WIDTH-1:0] wave_out
);

wire [PHASE_WIDTH:0] dds_phase;         //DDS相位累加器，原位宽扩大1位用于计算周期数
reg  [PHASE_WIDTH:0] dds_phase_dly;     //DDS相位累加器延迟寄存器
reg  [PERIOD_NUM_WIDTH-1:0] cnt_period; //整周期数计数器
reg  wave_ctrl;                         //波形截断控制信号
wire [DATA_WIDTH-1:0] dds_out;          //DDS输出原波形

//此处复位和截断状态输出的默认数据（'h8000）需要根据实际情况修改
always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        wave_out_valid <= 1'b0;
        wave_out <= 'h8000;
    end
    else begin
        wave_out_valid <= wave_ctrl;
        if(wave_ctrl == 1'b1)begin
            wave_out <= dds_out;
        end
        else begin
            wave_out <= 'h8000;
        end
    end
end

DDS #(
    .PHASE_WIDTH(PHASE_WIDTH), //相位累加器位宽n，与混沌状态值位宽一致
    .ADDR_WIDTH(ADDR_WIDTH),   //RAM地址线位宽
    .DATA_WIDTH(DATA_WIDTH)    //RAM数据线位宽
)DDS_inst(
	.clk(clk),
	.rst_n(~chaotic_valid),
    .wave_shape(wave_shape),

    .frq_word(frq_word),     //频率控制字
    .phase_init(phase_init), //初始相位

    .phase(dds_phase), //相位累加器，原位宽扩大1位用于控制器计算周期数
	.dds_out(dds_out)
);

//相位累加器打拍
always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        dds_phase_dly <= {0,phase_init};
    end
    else begin
        dds_phase_dly <= dds_phase;
    end
end

//整周期计数
always @(posedge clk or negedge rst_n)begin
    if(rst_n == 1'b0)begin
        cnt_period <= 'd0;
        wave_ctrl <= 1'b1;
    end
    else begin
        if(chaotic_valid)begin
            cnt_period <= 'd0;
            wave_ctrl <= 1'b1;
        end
        else begin
            if(DDS_mod == 1'b0)begin
                cnt_period <= 'd0;
                wave_ctrl <= 1'b1;
            end
            else begin
                if(cnt_period == period_num)begin
                    if(dds_phase[PHASE_WIDTH] ^ dds_phase_dly[PHASE_WIDTH] == 1)begin//扩展的最高位发生变化说明相位累加器溢出，判断条件:（1）当前相位大于等于初值（2）前一个相位小于初值，满足其中之一
                        if(dds_phase[PHASE_WIDTH-1:0] >= phase_end || dds_phase_dly[PHASE_WIDTH-1:0] < phase_end)begin
                            cnt_period <= 'd0;
                            wave_ctrl <= 1'b0;
                        end
                        else begin
                            cnt_period <= cnt_period;
                            wave_ctrl <= wave_ctrl;
                        end
                    end
                    else begin//相位累加器没有溢出，判断条件:（1）当前相位大于等于初值（2）前一个相位小于初值，必须都满足
                        if(dds_phase[PHASE_WIDTH-1:0] >= phase_end && dds_phase_dly[PHASE_WIDTH-1:0] < phase_end)begin
                            cnt_period <= 'd0;
                            wave_ctrl <= 1'b0;
                        end
                        else begin
                            cnt_period <= cnt_period;
                            wave_ctrl <= wave_ctrl;
                        end
                    end
                end
                else begin
                    if(dds_phase[PHASE_WIDTH] ^ dds_phase_dly[PHASE_WIDTH] == 1)begin//扩展的最高位发生变化说明相位累加器溢出，判断条件:（1）当前相位大于等于初值（2）前一个相位小于初值，满足其中之一
                        if(dds_phase[PHASE_WIDTH-1:0] >= phase_init || dds_phase_dly[PHASE_WIDTH-1:0] < phase_init)begin
                            cnt_period <= cnt_period + 1'b1;
                        end
                        else begin
                            cnt_period <= cnt_period;
                        end
                    end
                    else begin//相位累加器没有溢出，判断条件:（1）当前相位大于等于初值（2）前一个相位小于初值，必须都满足
                        if(dds_phase[PHASE_WIDTH-1:0] >= phase_init && dds_phase_dly[PHASE_WIDTH-1:0] < phase_init)begin
                            cnt_period <= cnt_period + 1'b1;
                        end
                        else begin
                            cnt_period <= cnt_period;
                        end
                    end
                    wave_ctrl <= wave_ctrl;
                end
            end
        end
    end
end

endmodule
