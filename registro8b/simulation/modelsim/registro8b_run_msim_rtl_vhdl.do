transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Facultad/4-Cuarto año/Diseño de sistemas digitales/registro8b/registro8b.vhd}

vcom -93 -work work {E:/Facultad/4-Cuarto año/Diseño de sistemas digitales/registro8b/simulation/modelsim/registro8b.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  registro8b_vhd_tst

add wave *
view structure
view signals
run 2 us
