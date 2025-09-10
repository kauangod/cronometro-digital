-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/10/2025 11:18:34"

-- 
-- Device: Altera 10CL025YU256I7G Package UFBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	clk : IN std_logic;
	button1 : IN std_logic;
	debounce : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END cronometro;

-- Design Ports Information
-- clk	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[7]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[10]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[14]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[15]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[16]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[17]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[18]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[20]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[21]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[22]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[25]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[27]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[29]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[30]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[31]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_debounce : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \debounce[0]~output_o\ : std_logic;
SIGNAL \debounce[1]~output_o\ : std_logic;
SIGNAL \debounce[2]~output_o\ : std_logic;
SIGNAL \debounce[3]~output_o\ : std_logic;
SIGNAL \debounce[4]~output_o\ : std_logic;
SIGNAL \debounce[5]~output_o\ : std_logic;
SIGNAL \debounce[6]~output_o\ : std_logic;
SIGNAL \debounce[7]~output_o\ : std_logic;
SIGNAL \debounce[8]~output_o\ : std_logic;
SIGNAL \debounce[9]~output_o\ : std_logic;
SIGNAL \debounce[10]~output_o\ : std_logic;
SIGNAL \debounce[11]~output_o\ : std_logic;
SIGNAL \debounce[12]~output_o\ : std_logic;
SIGNAL \debounce[13]~output_o\ : std_logic;
SIGNAL \debounce[14]~output_o\ : std_logic;
SIGNAL \debounce[15]~output_o\ : std_logic;
SIGNAL \debounce[16]~output_o\ : std_logic;
SIGNAL \debounce[17]~output_o\ : std_logic;
SIGNAL \debounce[18]~output_o\ : std_logic;
SIGNAL \debounce[19]~output_o\ : std_logic;
SIGNAL \debounce[20]~output_o\ : std_logic;
SIGNAL \debounce[21]~output_o\ : std_logic;
SIGNAL \debounce[22]~output_o\ : std_logic;
SIGNAL \debounce[23]~output_o\ : std_logic;
SIGNAL \debounce[24]~output_o\ : std_logic;
SIGNAL \debounce[25]~output_o\ : std_logic;
SIGNAL \debounce[26]~output_o\ : std_logic;
SIGNAL \debounce[27]~output_o\ : std_logic;
SIGNAL \debounce[28]~output_o\ : std_logic;
SIGNAL \debounce[29]~output_o\ : std_logic;
SIGNAL \debounce[30]~output_o\ : std_logic;
SIGNAL \debounce[31]~output_o\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \button1_debounce~60_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \button1_debounce~40_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \button1_debounce~41_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \button1_debounce~42_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \button1_debounce~43_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \button1_debounce~44_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \button1_debounce~45_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \button1_debounce~46_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \button1_debounce~47_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \button1_debounce~48_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \button1_debounce~49_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \button1_debounce~50_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \button1_debounce~51_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \button1_debounce~52_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \button1_debounce~53_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \button1_debounce~54_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \button1_debounce~55_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \button1_debounce~56_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \button1_debounce~57_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \button1_debounce~58_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \button1_debounce~59_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_button1 <= button1;
debounce <= ww_debounce;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y8_N23
\debounce[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~60_combout\,
	devoe => ww_devoe,
	o => \debounce[0]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\debounce[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~40_combout\,
	devoe => ww_devoe,
	o => \debounce[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\debounce[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~41_combout\,
	devoe => ww_devoe,
	o => \debounce[2]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\debounce[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~42_combout\,
	devoe => ww_devoe,
	o => \debounce[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\debounce[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~43_combout\,
	devoe => ww_devoe,
	o => \debounce[4]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\debounce[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~44_combout\,
	devoe => ww_devoe,
	o => \debounce[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\debounce[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~45_combout\,
	devoe => ww_devoe,
	o => \debounce[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\debounce[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~46_combout\,
	devoe => ww_devoe,
	o => \debounce[7]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\debounce[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~47_combout\,
	devoe => ww_devoe,
	o => \debounce[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\debounce[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~48_combout\,
	devoe => ww_devoe,
	o => \debounce[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\debounce[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~49_combout\,
	devoe => ww_devoe,
	o => \debounce[10]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\debounce[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~50_combout\,
	devoe => ww_devoe,
	o => \debounce[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\debounce[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~51_combout\,
	devoe => ww_devoe,
	o => \debounce[12]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\debounce[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~52_combout\,
	devoe => ww_devoe,
	o => \debounce[13]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\debounce[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~53_combout\,
	devoe => ww_devoe,
	o => \debounce[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\debounce[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~54_combout\,
	devoe => ww_devoe,
	o => \debounce[15]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\debounce[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~55_combout\,
	devoe => ww_devoe,
	o => \debounce[16]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\debounce[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~56_combout\,
	devoe => ww_devoe,
	o => \debounce[17]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\debounce[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~57_combout\,
	devoe => ww_devoe,
	o => \debounce[18]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\debounce[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~58_combout\,
	devoe => ww_devoe,
	o => \debounce[19]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\debounce[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \button1_debounce~59_combout\,
	devoe => ww_devoe,
	o => \debounce[20]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\debounce[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[21]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\debounce[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[22]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\debounce[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[23]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\debounce[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[24]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\debounce[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[25]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\debounce[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[26]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\debounce[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[27]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\debounce[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[28]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\debounce[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[29]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\debounce[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[30]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\debounce[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debounce[31]~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\button1~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: LCCOMB_X4_Y26_N12
\Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \button1_debounce~60_combout\ $ (VCC)
-- \Add0~1\ = CARRY(\button1_debounce~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1_debounce~60_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X4_Y26_N2
\button1_debounce~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~60_combout\ = (\button1~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~0_combout\,
	combout => \button1_debounce~60_combout\);

-- Location: LCCOMB_X4_Y26_N14
\Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~1\ & (((!\Add0~2_combout\)) # (!\button1~input_o\))) # (!\Add0~1\ & (((\button1~input_o\ & \Add0~2_combout\)) # (GND)))
-- \Add0~3\ = CARRY(((!\Add0~1\) # (!\Add0~2_combout\)) # (!\button1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X4_Y26_N8
\button1_debounce~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~40_combout\ = (\Add0~2_combout\ & \button1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \button1~input_o\,
	combout => \button1_debounce~40_combout\);

-- Location: LCCOMB_X4_Y26_N16
\Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3\ & (\button1~input_o\ & (\Add0~4_combout\ & VCC))) # (!\Add0~3\ & ((((\button1~input_o\ & \Add0~4_combout\)))))
-- \Add0~5\ = CARRY((\button1~input_o\ & (\Add0~4_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X4_Y26_N10
\button1_debounce~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~41_combout\ = (\button1~input_o\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~4_combout\,
	combout => \button1_debounce~41_combout\);

-- Location: LCCOMB_X4_Y26_N18
\Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~5\ & (((!\Add0~6_combout\)) # (!\button1~input_o\))) # (!\Add0~5\ & (((\button1~input_o\ & \Add0~6_combout\)) # (GND)))
-- \Add0~7\ = CARRY(((!\Add0~5\) # (!\Add0~6_combout\)) # (!\button1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X4_Y26_N4
\button1_debounce~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~42_combout\ = (\button1~input_o\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~6_combout\,
	combout => \button1_debounce~42_combout\);

-- Location: LCCOMB_X4_Y26_N20
\Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~7\ & (\Add0~8_combout\ & (\button1~input_o\ & VCC))) # (!\Add0~7\ & ((((\Add0~8_combout\ & \button1~input_o\)))))
-- \Add0~9\ = CARRY((\Add0~8_combout\ & (\button1~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X3_Y23_N16
\button1_debounce~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~43_combout\ = (\button1~input_o\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	datad => \Add0~8_combout\,
	combout => \button1_debounce~43_combout\);

-- Location: LCCOMB_X4_Y26_N22
\Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Add0~9\ & (((!\button1~input_o\)) # (!\Add0~10_combout\))) # (!\Add0~9\ & (((\Add0~10_combout\ & \button1~input_o\)) # (GND)))
-- \Add0~11\ = CARRY(((!\Add0~9\) # (!\button1~input_o\)) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X4_Y26_N6
\button1_debounce~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~44_combout\ = (\Add0~10_combout\ & \button1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \button1~input_o\,
	combout => \button1_debounce~44_combout\);

-- Location: LCCOMB_X4_Y26_N24
\Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~11\ & (\Add0~12_combout\ & (\button1~input_o\ & VCC))) # (!\Add0~11\ & ((((\Add0~12_combout\ & \button1~input_o\)))))
-- \Add0~13\ = CARRY((\Add0~12_combout\ & (\button1~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y23_N26
\button1_debounce~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~45_combout\ = (\button1~input_o\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	datad => \Add0~12_combout\,
	combout => \button1_debounce~45_combout\);

-- Location: LCCOMB_X4_Y26_N26
\Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13\ & (((!\button1~input_o\)) # (!\Add0~14_combout\))) # (!\Add0~13\ & (((\Add0~14_combout\ & \button1~input_o\)) # (GND)))
-- \Add0~15\ = CARRY(((!\Add0~13\) # (!\button1~input_o\)) # (!\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X3_Y23_N28
\button1_debounce~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~46_combout\ = (\button1~input_o\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	datad => \Add0~14_combout\,
	combout => \button1_debounce~46_combout\);

-- Location: LCCOMB_X4_Y26_N28
\Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~15\ & (\button1~input_o\ & (\Add0~16_combout\ & VCC))) # (!\Add0~15\ & ((((\button1~input_o\ & \Add0~16_combout\)))))
-- \Add0~17\ = CARRY((\button1~input_o\ & (\Add0~16_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X4_Y26_N0
\button1_debounce~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~47_combout\ = (\button1~input_o\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~16_combout\,
	combout => \button1_debounce~47_combout\);

-- Location: LCCOMB_X4_Y26_N30
\Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~17\ & (((!\button1~input_o\)) # (!\Add0~18_combout\))) # (!\Add0~17\ & (((\Add0~18_combout\ & \button1~input_o\)) # (GND)))
-- \Add0~19\ = CARRY(((!\Add0~17\) # (!\button1~input_o\)) # (!\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X3_Y23_N22
\button1_debounce~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~48_combout\ = (\Add0~18_combout\ & \button1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datac => \button1~input_o\,
	combout => \button1_debounce~48_combout\);

-- Location: LCCOMB_X4_Y25_N0
\Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\Add0~19\ & (\button1~input_o\ & (\Add0~20_combout\ & VCC))) # (!\Add0~19\ & ((((\button1~input_o\ & \Add0~20_combout\)))))
-- \Add0~21\ = CARRY((\button1~input_o\ & (\Add0~20_combout\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X3_Y23_N0
\button1_debounce~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~49_combout\ = (\button1~input_o\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datac => \Add0~20_combout\,
	combout => \button1_debounce~49_combout\);

-- Location: LCCOMB_X4_Y25_N2
\Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Add0~21\ & (((!\Add0~22_combout\)) # (!\button1~input_o\))) # (!\Add0~21\ & (((\button1~input_o\ & \Add0~22_combout\)) # (GND)))
-- \Add0~23\ = CARRY(((!\Add0~21\) # (!\Add0~22_combout\)) # (!\button1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X4_Y25_N22
\button1_debounce~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~50_combout\ = (\button1~input_o\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~22_combout\,
	combout => \button1_debounce~50_combout\);

-- Location: LCCOMB_X4_Y25_N4
\Add0~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\Add0~23\ & (\button1~input_o\ & (\Add0~24_combout\ & VCC))) # (!\Add0~23\ & ((((\button1~input_o\ & \Add0~24_combout\)))))
-- \Add0~25\ = CARRY((\button1~input_o\ & (\Add0~24_combout\ & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X3_Y23_N10
\button1_debounce~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~51_combout\ = (\button1~input_o\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	datad => \Add0~24_combout\,
	combout => \button1_debounce~51_combout\);

-- Location: LCCOMB_X4_Y25_N6
\Add0~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~25\ & (((!\button1~input_o\)) # (!\Add0~26_combout\))) # (!\Add0~25\ & (((\Add0~26_combout\ & \button1~input_o\)) # (GND)))
-- \Add0~27\ = CARRY(((!\Add0~25\) # (!\button1~input_o\)) # (!\Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X4_Y25_N24
\button1_debounce~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~52_combout\ = (\button1~input_o\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~26_combout\,
	combout => \button1_debounce~52_combout\);

-- Location: LCCOMB_X4_Y25_N8
\Add0~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\Add0~27\ & (\button1~input_o\ & (\Add0~28_combout\ & VCC))) # (!\Add0~27\ & ((((\button1~input_o\ & \Add0~28_combout\)))))
-- \Add0~29\ = CARRY((\button1~input_o\ & (\Add0~28_combout\ & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X4_Y25_N26
\button1_debounce~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~53_combout\ = (\Add0~28_combout\ & \button1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \button1~input_o\,
	combout => \button1_debounce~53_combout\);

-- Location: LCCOMB_X4_Y25_N10
\Add0~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~29\ & (((!\button1~input_o\)) # (!\Add0~30_combout\))) # (!\Add0~29\ & (((\Add0~30_combout\ & \button1~input_o\)) # (GND)))
-- \Add0~31\ = CARRY(((!\Add0~29\) # (!\button1~input_o\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X3_Y23_N12
\button1_debounce~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~54_combout\ = (\button1~input_o\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	datad => \Add0~30_combout\,
	combout => \button1_debounce~54_combout\);

-- Location: LCCOMB_X4_Y25_N12
\Add0~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Add0~31\ & (\Add0~32_combout\ & (\button1~input_o\ & VCC))) # (!\Add0~31\ & ((((\Add0~32_combout\ & \button1~input_o\)))))
-- \Add0~33\ = CARRY((\Add0~32_combout\ & (\button1~input_o\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \button1~input_o\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X4_Y25_N28
\button1_debounce~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~55_combout\ = (\button1~input_o\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~32_combout\,
	combout => \button1_debounce~55_combout\);

-- Location: LCCOMB_X4_Y25_N14
\Add0~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\Add0~33\ & (((!\Add0~34_combout\)) # (!\button1~input_o\))) # (!\Add0~33\ & (((\button1~input_o\ & \Add0~34_combout\)) # (GND)))
-- \Add0~35\ = CARRY(((!\Add0~33\) # (!\Add0~34_combout\)) # (!\button1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~34_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X3_Y23_N30
\button1_debounce~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~56_combout\ = (\button1~input_o\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	datad => \Add0~34_combout\,
	combout => \button1_debounce~56_combout\);

-- Location: LCCOMB_X4_Y25_N16
\Add0~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\Add0~35\ & (\button1~input_o\ & (\Add0~36_combout\ & VCC))) # (!\Add0~35\ & ((((\button1~input_o\ & \Add0~36_combout\)))))
-- \Add0~37\ = CARRY((\button1~input_o\ & (\Add0~36_combout\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~36_combout\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X3_Y23_N8
\button1_debounce~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~57_combout\ = (\button1~input_o\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datac => \Add0~36_combout\,
	combout => \button1_debounce~57_combout\);

-- Location: LCCOMB_X4_Y25_N18
\Add0~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~37\ & (((!\Add0~38_combout\)) # (!\button1~input_o\))) # (!\Add0~37\ & (((\button1~input_o\ & \Add0~38_combout\)) # (GND)))
-- \Add0~39\ = CARRY(((!\Add0~37\) # (!\Add0~38_combout\)) # (!\button1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X6_Y27_N0
\button1_debounce~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~58_combout\ = (\button1~input_o\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datac => \Add0~38_combout\,
	combout => \button1_debounce~58_combout\);

-- Location: LCCOMB_X4_Y25_N20
\Add0~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = \Add0~39\ $ (((!\Add0~40_combout\) # (!\button1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~40_combout\,
	cin => \Add0~39\,
	combout => \Add0~40_combout\);

-- Location: LCCOMB_X4_Y25_N30
\button1_debounce~59\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \button1_debounce~59_combout\ = (\button1~input_o\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datad => \Add0~40_combout\,
	combout => \button1_debounce~59_combout\);

-- Location: IOIBUF_X53_Y21_N22
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_debounce(0) <= \debounce[0]~output_o\;

ww_debounce(1) <= \debounce[1]~output_o\;

ww_debounce(2) <= \debounce[2]~output_o\;

ww_debounce(3) <= \debounce[3]~output_o\;

ww_debounce(4) <= \debounce[4]~output_o\;

ww_debounce(5) <= \debounce[5]~output_o\;

ww_debounce(6) <= \debounce[6]~output_o\;

ww_debounce(7) <= \debounce[7]~output_o\;

ww_debounce(8) <= \debounce[8]~output_o\;

ww_debounce(9) <= \debounce[9]~output_o\;

ww_debounce(10) <= \debounce[10]~output_o\;

ww_debounce(11) <= \debounce[11]~output_o\;

ww_debounce(12) <= \debounce[12]~output_o\;

ww_debounce(13) <= \debounce[13]~output_o\;

ww_debounce(14) <= \debounce[14]~output_o\;

ww_debounce(15) <= \debounce[15]~output_o\;

ww_debounce(16) <= \debounce[16]~output_o\;

ww_debounce(17) <= \debounce[17]~output_o\;

ww_debounce(18) <= \debounce[18]~output_o\;

ww_debounce(19) <= \debounce[19]~output_o\;

ww_debounce(20) <= \debounce[20]~output_o\;

ww_debounce(21) <= \debounce[21]~output_o\;

ww_debounce(22) <= \debounce[22]~output_o\;

ww_debounce(23) <= \debounce[23]~output_o\;

ww_debounce(24) <= \debounce[24]~output_o\;

ww_debounce(25) <= \debounce[25]~output_o\;

ww_debounce(26) <= \debounce[26]~output_o\;

ww_debounce(27) <= \debounce[27]~output_o\;

ww_debounce(28) <= \debounce[28]~output_o\;

ww_debounce(29) <= \debounce[29]~output_o\;

ww_debounce(30) <= \debounce[30]~output_o\;

ww_debounce(31) <= \debounce[31]~output_o\;
END structure;


