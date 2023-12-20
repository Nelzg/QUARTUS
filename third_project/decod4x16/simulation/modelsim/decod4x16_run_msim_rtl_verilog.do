transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/denis/OneDrive/Desktop/lab_work/QuartusFPGA/decod4x16 {C:/Users/denis/OneDrive/Desktop/lab_work/QuartusFPGA/decod4x16/decod4x16.v}

vlog -vlog01compat -work work +incdir+C:/Users/denis/OneDrive/Desktop/lab_work/QuartusFPGA/decod4x16 {C:/Users/denis/OneDrive/Desktop/lab_work/QuartusFPGA/decod4x16/decod4x16_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  decod4x16_tb

add wave *
view structure
view signals
run -all
