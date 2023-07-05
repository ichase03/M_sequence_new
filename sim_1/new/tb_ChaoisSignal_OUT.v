`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/27 19:27:46
// Design Name: 
// Module Name: tb_ChaoisSignal_OUT
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


module tb_ChaoisSignal_OUT(

    );
    localparam DATA_WIDTH = 64;
// 定义区
    reg clk = 'd0;
    reg rst_n = 'd0;
    // 混沌方程输出相关信号
    wire n1_valid;                      // 状态输出的有效信号
    wire signed [DATA_WIDTH-1:0] xn1;   //状态输出（不包含混沌初值）
    wire signed [DATA_WIDTH-1:0] yn1;
    wire signed [DATA_WIDTH-1:0] zn1;
    wire [7:0] xyz_out_num;             // 混沌输出x y z的序号
    
    always #5 clk = ~clk;

    initial begin
        #1000 rst_n = 'd1;
    end

// step1 例化混沌模块，生成混沌序列
    Chaotic_TOP 
    #(
        .DATA_WIDTH(DATA_WIDTH)  //数据位宽须与 Floating-point IP 数据位宽匹配
    )
    Chaotic_TOP_system
    (
        .clk(clk),
        .rst_n(rst_n),
        .n1_valid(n1_valid),
        .xn1(xn1),              //状态输出（不包含混沌初值）
        .yn1(yn1),
        .zn1(zn1),
        .xyz_ram_w_addr(xyz_out_num)
    );

// step2 保存 
// 将system1的x y z导出为txt文件
integer f1_x;
integer f1_y;
integer f1_z;

initial begin
    f1_x = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f1_xn1.txt","w");
    f1_y = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f1_yn1.txt","w");
    f1_z = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f1_zn1.txt","w");
end

always @(posedge clk)begin
    if(n1_valid && (xyz_out_num == 'd0) == 1'b1)begin
        $fdisplay(f1_x,"%b",xn1);
        $fdisplay(f1_y,"%b",yn1);
        $fdisplay(f1_z,"%b",zn1);
    end
end

initial begin
    #29999999
    $fclose(f1_x);
    $fclose(f1_y);
    $fclose(f1_z);
    $finish; 
end

// 将system2的x y z导出为txt文件
integer f2_x;
integer f2_y;
integer f2_z;

initial begin
    f2_x = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f2_xn1.txt","w");
    f2_y = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f2_yn1.txt","w");
    f2_z = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f2_zn1.txt","w");
end

always @(posedge clk)begin
    if(n1_valid && (xyz_out_num == 'd1) == 1'b1)begin
        $fdisplay(f2_x,"%b",xn1);
        $fdisplay(f2_y,"%b",yn1);
        $fdisplay(f2_z,"%b",zn1);
    end
end

initial begin
    #29999999
    $fclose(f2_x);
    $fclose(f2_y);
    $fclose(f2_z);
    $finish; 
end

// 将system3的x y z导出为txt文件
integer f3_x;
integer f3_y;
integer f3_z;

initial begin
    f3_x = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f3_xn1.txt","w");
    f3_y = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f3_yn1.txt","w");
    f3_z = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f3_zn1.txt","w");
end

always @(posedge clk)begin
    if(n1_valid && (xyz_out_num == 'd2) == 1'b1)begin
        $fdisplay(f3_x,"%b",xn1);
        $fdisplay(f3_y,"%b",yn1);
        $fdisplay(f3_z,"%b",zn1);
    end
end

initial begin
    #29999999
    $fclose(f3_x);
    $fclose(f3_y);
    $fclose(f3_z);
    $finish; 
end

// 将system4的x y z导出为txt文件
integer f4_x;
integer f4_y;
integer f4_z;

initial begin
    f4_x = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f4_xn1.txt","w");
    f4_y = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f4_yn1.txt","w");
    f4_z = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f4_zn1.txt","w");
end

always @(posedge clk)begin
    if(n1_valid && (xyz_out_num == 'd3) == 1'b1)begin
        $fdisplay(f4_x,"%b",xn1);
        $fdisplay(f4_y,"%b",yn1);
        $fdisplay(f4_z,"%b",zn1);
    end
end

initial begin
    #29999999
    $fclose(f4_x);
    $fclose(f4_y);
    $fclose(f4_z);
    $finish; 
end

// 将system5的x y z导出为txt文件
integer f5_x;
integer f5_y;
integer f5_z;

initial begin
    f5_x = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f5_xn1.txt","w");
    f5_y = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f5_yn1.txt","w");
    f5_z = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f5_zn1.txt","w");
end

always @(posedge clk)begin
    if(n1_valid && (xyz_out_num == 'd4) == 1'b1)begin
        $fdisplay(f5_x,"%b",xn1);
        $fdisplay(f5_y,"%b",yn1);
        $fdisplay(f5_z,"%b",zn1);
    end
end

initial begin
    #29999999
    $fclose(f5_x);
    $fclose(f5_y);
    $fclose(f5_z);
    $finish; 
end

// 将system6的x y z导出为txt文件
integer f6_x;
integer f6_y;
integer f6_z;

initial begin
    f6_x = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f6_xn1.txt","w");
    f6_y = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f6_yn1.txt","w");
    f6_z = $fopen("D:/Code/vivado/M_sequence/M_sequence.srcs/InitFile/f6_zn1.txt","w");
end

always @(posedge clk)begin
    if(n1_valid && (xyz_out_num == 'd5) == 1'b1)begin
        $fdisplay(f6_x,"%b",xn1);
        $fdisplay(f6_y,"%b",yn1);
        $fdisplay(f6_z,"%b",zn1);
    end
end

initial begin
    #29999999
    $fclose(f6_x);
    $fclose(f6_y);
    $fclose(f6_z);
    $finish; 
end






endmodule
