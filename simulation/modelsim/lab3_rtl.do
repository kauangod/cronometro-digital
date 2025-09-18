vcom -reportprogress 300 -work work C:/vhdl/cronometro-digital/cont16_ld.vhd
vcom -reportprogress 300 -work work C:/vhdl/cronometro-digital/cronometro_tb.vhd
vcom -reportprogress 300 -work work C:/vhdl/cronometro-digital/debouncer.vhd
vcom -reportprogress 300 -work work C:/vhdl/cronometro-digital/cronometro.vhd
vsim -gui work.cronometro_tb
add wave -position insertpoint sim:/cronometro_tb/*
configure wave -signalnamewidth 1
WaveRestoreZoom {0 ps} {1000000020 ns}
radix -hex
run 2000000000 ns