// `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/16 16:59:40
// Design Name: 
// Module Name: Chaotic_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Chaotic_TOP #(
    parameter DATA_WIDTH = 'd64,                //数据位宽须与 Floating-point IP 数据位宽匹配
    parameter Chaotic_System_Cycle = 'd244,     // 混沌系统计算一次的周期
    parameter tao = 'h3FD3333333333333,         // 混沌系统参数 0.3
    parameter k0  = 'h3FB999999999999A,         // 混沌系统参数 0.1
    parameter k1  = 'hC024000000000000,         // 混沌系统参数 -10.0
    parameter k2  = 'h3FE0000000000000          // 混沌系统参数 0.5
)(
    input clk,
    input rst_n,
    output n1_valid,                    // 混沌系统输出有效信号
    output signed [DATA_WIDTH-1:0] xn1, // 混沌系统次态（状态输出值）
    output signed [DATA_WIDTH-1:0] yn1,
    output signed [DATA_WIDTH-1:0] zn1,
    output reg [7:0] xyz_ram_w_addr
);

// ------------------------------------------------------------
// 定义区
wire signed [DATA_WIDTH-1:0] a; // 混沌系统可变参数值a b c d e
wire signed [DATA_WIDTH-1:0] b;
wire signed [DATA_WIDTH-1:0] c;
wire signed [DATA_WIDTH-1:0] d;
wire signed [DATA_WIDTH-1:0] e;
reg n_valid;                    // 混沌系统输入有效信号
wire signed [DATA_WIDTH-1:0] xn; // 混沌系统现态（状态输入值）
wire signed [DATA_WIDTH-1:0] yn;
wire signed [DATA_WIDTH-1:0] zn;
reg [7:0] para_rom_addra;       // rom/ram读地址
// reg [7:0] xyz_ram_w_addr;       // ram写地址
reg rom_flog;                   // 两个标志位，方便调试
reg ram_flog;                   

// --------------------------------------------------------------
//功能区

// 控制混沌系统输入有效信号n_valid
always@(posedge clk or negedge rst_n)
begin
    if(!rst_n) begin
        n_valid = 'd0;
    end
    else begin
        n_valid = 'd1;
    end
end

// 控制ROM/RAM读地址
    // 混沌系统输入有效时，para_rom_addra自动加1，每244时钟循环一次
always@( posedge clk or negedge rst_n)
begin
    if(!rst_n)  begin
        para_rom_addra <= 'd0;
        rom_flog <= 'd0;
    end
    else if(n_valid) begin
        if (para_rom_addra == Chaotic_System_Cycle ) begin
            para_rom_addra <= 'd0;
            rom_flog <= 'd1;
        end
        else begin
            para_rom_addra <= para_rom_addra + 'd1;
            rom_flog <= 'd0;
        end
    end
    else begin
        para_rom_addra <= para_rom_addra;
        rom_flog <= 'd0;
    end
end

// 控制RAM写地址
//      混沌系统输出有效时，将输出写入到ram中， xyz_ram_w_addr自动加1，每244时钟循环一次
always@( posedge clk or negedge rst_n)
begin
    if(!rst_n)  begin
        xyz_ram_w_addr <= 'd0;
        ram_flog <= 'd0;
    end
    else if(n1_valid) begin
        if (xyz_ram_w_addr == Chaotic_System_Cycle ) begin
            xyz_ram_w_addr <= 'd0;
            ram_flog <= 'd1;
        end
        else begin
            xyz_ram_w_addr <= xyz_ram_w_addr + 'd1;
            ram_flog <= 'd0;
        end
    end
    else begin
        xyz_ram_w_addr <= xyz_ram_w_addr;
        ram_flog <= 'd0;
    end
end

// 例化存储混沌方程参数的ROM，并赋值给a b c d e
    // 例化存储混沌方程参数的ROM
IP_ROM para_rom (
    .clka(clk),    // input wire clka
    .addra(para_rom_addra),  // input wire [7 : 0] addra
    .douta({a,b,c,d,e})  // output wire [319 : 0] douta
);

// 例化存储混沌方程状态值x y z的RAM 
IP_RAM xyz_ram (
    .clka(clk),    // input wire clka
    .wea(n1_valid),      // input wire [0 : 0] wea
    .addra(xyz_ram_w_addr),  // input wire [7 : 0] addra
    .dina({xn1,yn1,zn1}),    // input wire [191 : 0] dina

    .clkb(clk),    // input wire clkb
    .addrb(para_rom_addra),  // input wire [7 : 0] addrb  ram和rom共用一个读地址
    .doutb({xn,yn,zn})  // output wire [191 : 0] doutb
);

Chaotic_Equations #(
    .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
)u_Chaotic_equations(
    .clk(clk),
    .rst_n(rst_n),

    .a  (a  ),
    .b  (b  ),
    .c  (c  ),
    .d  (d  ),
    .e  (e  ),
    .tao(tao),
    .k0 (k0 ),
    .k1 (k1 ),
    .k2 (k2 ),

    .n_valid(n_valid),  // 输入有效信号
    .xn(xn), //混沌现态
    .yn(yn),
    .zn(zn),

    .n1_valid(n1_valid),// 输出有效信号
    .xn1(xn1), //混沌次态
    .yn1(yn1),
    .zn1(zn1)
    // .busy(busy) //忙信号，方程组运算未完成，高有效
);

endmodule
