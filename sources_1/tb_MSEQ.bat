@REM �ر�������ʾ
@echo off
@REM ��������
@REM ��ȡ��ǰ�ļ�������
set my_name=%~n0
title %wave_name%��iverilog������

@REM �������ɵ�wave�ļ����Ƽ�·������
set wave_name=tb_M_sequence

@REM ������Ҫ��ȡ��testbench�ļ�·��

set tb_path=.\sim\tb_M_sequence.v
@REM ���ñ�������ļ�·��
set v_path=.\

:StartTheTestBench
echo 1:����testbenchʹ��iverilog�����µ�vcd�ļ�
echo 2:�������ɵ�vcd�ļ����µ�gtkwave,

@REM �������

set /p tb_cmd=������ָ��:  

if "%tb_cmd%"=="1" (

  @REM �����ļ���,����������
  md .\sim\%wave_name%_iverilog
  echo >.\sim\%wave_name%_iverilog\%wave_name%.log
  
  @REM ִ��Iverilog�����ļ�
  iverilog -o %wave_name% -y %v_path% %tb_path%
  vvp -n  %wave_name% -lxt2
  move %wave_name% .\sim\%wave_name%_iverilog\.
  
  @REM ǿ���ƶ�
  copy /y %wave_name%.vcd .\sim\%wave_name%_iverilog\.
) else if "%tb_cmd%"=="2" (
  echo �ô�����GTKwaveʹ��,���´��´���
  start %my_name%.bat
  gtkwave .\%wave_name%.vcd
)

echo -----------------------�������%tb_cmd%------------------------

goto:StartTheTestBench
pause