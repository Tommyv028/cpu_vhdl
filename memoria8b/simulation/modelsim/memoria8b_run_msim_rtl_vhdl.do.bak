transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Facultad/4-Cuarto año/Diseño de sistemas digitales/memoria8b/memoria8b.vhd}

vcom -93 -work work {E:/Facultad/4-Cuarto año/Diseño de sistemas digitales/memoria8b/simulation/modelsim/memoria8b.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  memoria8b_vhd_tst

add wave *
view structure
view signals
run 2 us
