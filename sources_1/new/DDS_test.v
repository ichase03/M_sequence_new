//DDS数字信号发生器
//波形控制字：
//wave： 00：正弦波 01：方波 10：三角波 11: 锯齿波
//频率控制字：
//fout=fclk*Fword/2^（N） N：相位累加器的位数 ，Fword：频率控制字，当Fword=2^（32（位宽）-N）时 达到基频
//设置基频为50KHz，对于正弦波、三角波、锯齿波、方波的Fword为4194304，Fword变大，频率变大，Fword变小，频率变小
//此时 fout=fclk/2^（N）
//频率分辨率=fclk/2^32（位宽）=0.01164Hz
//想获得任意频率，Fword=f/0.01164，一般大于0，小于fclk/2
//fout=fclk*Fword/2^（32）选用不同的Fword，得到不同的fout
//相位控制字：
//Pword：从0-1024，对应0-2pi
//幅度控制字：
//Aword：从0-1024，设定对于模拟输出0-5V，初始为1023，对应5V

module DDS_test(
    input clk,
    input rst,
    input [1:0]wave_shape,
    input [9:0]Fword,
    input [9:0]Pword,
    // input [7:0]Aword,
    output clkout,
    output [15:0]dataout
);
 
    //波形数据：
    reg [15:0] wavedata;
    //波形信号:
    wire [15:0] sindata;
    wire [15:0] squdata;
    wire [15:0] tridata;
    wire [15:0] sawdata;
    assign clkout = clk;
    //正弦波形产生：
    //相位寄存器：
    reg [15:0]frechange; 
    
    always @(posedge clk or negedge rst) begin
    if(!rst)
        frechange <= 16'd0; 
    else
        frechange <= frechange + Fword;
    end
    //相位累加器：
    reg [9:0]romaddr;
    always @(posedge clk or negedge rst) begin
    if(!rst)
        romaddr <= 10'd0;
    else
        romaddr <= frechange[15:6] + Pword;
    end
    
    //正弦波表：
    DDS_RAM_W16D1024 sin_ram (
        .a(romaddr), // input wire [9 : 0] a
        .d(), // input wire [7 : 0] d
        .clk(clk), // input wire clk
        .we(1'b0),    // input wire we
        .spo(sindata) // output wire [7 : 0] spo
    );
    
    //其他波形产生器：
    reg [31:0] phaseacc;
    always @(posedge clk or negedge rst) begin
        if(!rst) 
        phaseacc <= 32'b0;
        else 
        phaseacc <= phaseacc+Fword;
    end
    wire [31:0] phase=phaseacc+Pword;
    //方波：
    assign squdata = phase[31] ? 16'hffff:16'd0;
    //三角波：
    assign tridata = phase[31]? (~phase[30:15]): phase[30:15];
    //锯齿波：
    assign sawdata = phase[31:16];
    //波形选择：
    always @(*) begin
        case(wave_shape)
            2'b00: wavedata<= sindata;	
            2'b01: wavedata<= squdata;	
            2'b10: wavedata<= tridata;	
            2'b11: wavedata<= sawdata;	
            default: wavedata<= sindata;
        endcase
    end
    //调幅：
    // wire [7:0] data;
    assign dataout = wavedata;
    // reg [19:0] AMdata;
    // always@(posedge clk)
    // if(!rst)
    //     AMdata<=1'd0;
    // else
    //     AMdata<=data*Aword;
    // assign dataout = AMdata[19:4];
 
endmodule