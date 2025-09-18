transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {cronometro.vho}

vcom -93 -work work {C:/vhdl/cronometro-digital/cronometro_tb.vhd}

vsim -t 1ps -L altera -L cyclone10lp -L gate_work -L work -voptargs="+acc"  cronometro_tb

add wave *
view structure
view signals
run -all
