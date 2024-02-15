transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/aRepos GitHub/cpu_vhdl-main-no-funcionan-las-operaciones-alu/alu/alu.vhd}
vcom -93 -work work {Z:/aRepos GitHub/cpu_vhdl-main-no-funcionan-las-operaciones-alu/registro8b/registro8b.vhd}
vcom -93 -work work {Z:/aRepos GitHub/cpu_vhdl-main-no-funcionan-las-operaciones-alu/memoria8b/memoria8b.vhd}
vcom -93 -work work {Z:/aRepos GitHub/cpu_vhdl-main-no-funcionan-las-operaciones-alu/cpu_vhdl/cpu_nuevo.vhd}

vcom -93 -work work {Z:/aRepos GitHub/cpu_vhdl-main-no-funcionan-las-operaciones-alu/cpu_vhdl/simulation/modelsim/cpu_nuevo.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  cpu_nuevo_vhd_tst

add wave *
view structure
view signals
run 10 us
