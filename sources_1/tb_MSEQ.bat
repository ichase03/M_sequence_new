@REM 关闭命令提示
@echo off
@REM 命名标题
@REM 获取当前文件的名称
set my_name=%~n0
title %wave_name%的iverilog批处理

@REM 设置生成的wave文件名称及路径名称
set wave_name=tb_M_sequence

@REM 设置需要读取的testbench文件路径

set tb_path=.\sim\tb_M_sequence.v
@REM 设置被仿真的文件路径
set v_path=.\

:StartTheTestBench
echo 1:根据testbench使用iverilog生成新的vcd文件
echo 2:根据生成的vcd文件打开新的gtkwave,

@REM 输入参数

set /p tb_cmd=请输入指令:  

if "%tb_cmd%"=="1" (

  @REM 创建文件夹,生成年月日
  md .\sim\%wave_name%_iverilog
  echo >.\sim\%wave_name%_iverilog\%wave_name%.log
  
  @REM 执行Iverilog生成文件
  iverilog -o %wave_name% -y %v_path% %tb_path%
  vvp -n  %wave_name% -lxt2
  move %wave_name% .\sim\%wave_name%_iverilog\.
  
  @REM 强制移动
  copy /y %wave_name%.vcd .\sim\%wave_name%_iverilog\.
) else if "%tb_cmd%"=="2" (
  echo 该窗口由GTKwave使用,重新打开新窗口
  start %my_name%.bat
  gtkwave .\%wave_name%.vcd
)

echo -----------------------完成任务%tb_cmd%------------------------

goto:StartTheTestBench
pause