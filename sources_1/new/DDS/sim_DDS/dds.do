quit -sim

vlib work
vmap work work

vlog -work work E:/FPGA_prjs/Chaotic_System/src/DDS/DDS.v
vlog -work work E:/FPGA_prjs/Chaotic_System/src/DDS/DDS_control.v
vlog -work work E:/FPGA_prjs/Chaotic_System/src/DDS/DC_DDS_TOP.v
vlog -work work E:/FPGA_prjs/Chaotic_System/src/DDS/sim_DDS/tb_DDS.v

vlog -work work E:/FPGA_prjs/Chaotic_System/src/DDS/RAM/DDS_RAM_W8D1024/DDS_RAM_W8D1024_sim_netlist.v

vsim \
-L unisims_ver \
-L unimacro_ver \
-L simprims_ver \
-L secureip \
work.tb_DDS \
-voptargs="+acc" glbl

view wave
delete wave *
view structure
view signals

add wave -radix binary clk
add wave -radix binary rst_n

add wave -radix binary -color red CH0_mod
add wave -radix binary -color red CH0_chaotic_valid
add wave -radix unsigned -color red sim:/tb_DDS/t_DC_DDS_TOP/CH0_period_num
add wave -radix hex -color red sim:/tb_DDS/t_DC_DDS_TOP/CH0_phase_init
add wave -radix hex -color red sim:/tb_DDS/t_DC_DDS_TOP/CH0_phase_end


add wave -radix binary -color magenta CH1_mod
add wave -radix binary -color magenta CH1_chaotic_valid
add wave -radix unsigned -color magenta sim:/tb_DDS/t_DC_DDS_TOP/CH1_period_num
add wave -radix hex -color magenta sim:/tb_DDS/t_DC_DDS_TOP/CH1_phase_init
add wave -radix hex -color magenta sim:/tb_DDS/t_DC_DDS_TOP/CH1_phase_end 

add wave -radix binary -color cyan chaotic_ctrl
add wave -radix decimal -color blue -format analog-Step -height 74 -max 127 -min -127 CH0_wave_out
add wave -radix decimal -color blue -format analog-Step -height 74 -max 127 -min -127 CH1_wave_out
add wave -radix unsigned sim:/tb_DDS/CTRL 

run 300us