transcript on
if {[file exists gate_work]} {
vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work
vcom -93 -work work {cont57.vho}
vcom -93 -work work {C:/cont57/cont57_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=cont57_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  cont57_tb
vsim +transport_int_delays +transport_path_delays -L cycloneii -L gate_work -L work -voptargs=\"+acc\" -sdftyp /uut=cont57_vhd.sdo -t 1ps cont57_tb 
add wave -position insertpoint sim:/cont57_tb/*
configure wave -signalnamewidth 1
WaveRestoreZoom {0 ps} {10020 ns}
radix -unsigned
run 10000 ns