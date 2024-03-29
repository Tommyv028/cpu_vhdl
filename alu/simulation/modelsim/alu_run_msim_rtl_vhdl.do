transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Facultad/4-Cuarto a�o/Dise�o de sistemas digitales/alunew/alu/alu/alu.vhd}

vcom -93 -work work {E:/Facultad/4-Cuarto a�o/Dise�o de sistemas digitales/alunew/alu/alu/simulation/modelsim/alu.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  alu_vhd_tst

add wave *
view structure
view signals
run 1 us
