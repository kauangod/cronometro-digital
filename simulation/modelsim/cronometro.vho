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

-- DATE "09/10/2025 11:34:06"

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


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	clk : IN std_logic;
	button1 : IN std_logic;
	botao_sim : BUFFER std_logic;
	debounce : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END cronometro;

-- Design Ports Information
-- botao_sim	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[9]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[10]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[11]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[16]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[17]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[18]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[19]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[20]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[21]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[22]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[23]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[24]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[25]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[26]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[27]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[28]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[29]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[30]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debounce[31]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_botao_sim : std_logic;
SIGNAL ww_debounce : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \botao_sim~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \debounce_s[0]~32_combout\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \debounce_s[0]~33\ : std_logic;
SIGNAL \debounce_s[1]~34_combout\ : std_logic;
SIGNAL \debounce_s[1]~35\ : std_logic;
SIGNAL \debounce_s[2]~36_combout\ : std_logic;
SIGNAL \debounce_s[2]~37\ : std_logic;
SIGNAL \debounce_s[3]~38_combout\ : std_logic;
SIGNAL \debounce_s[3]~39\ : std_logic;
SIGNAL \debounce_s[4]~40_combout\ : std_logic;
SIGNAL \debounce_s[4]~41\ : std_logic;
SIGNAL \debounce_s[5]~42_combout\ : std_logic;
SIGNAL \debounce_s[5]~43\ : std_logic;
SIGNAL \debounce_s[6]~44_combout\ : std_logic;
SIGNAL \debounce_s[6]~45\ : std_logic;
SIGNAL \debounce_s[7]~46_combout\ : std_logic;
SIGNAL \debounce_s[7]~47\ : std_logic;
SIGNAL \debounce_s[8]~48_combout\ : std_logic;
SIGNAL \debounce_s[8]~49\ : std_logic;
SIGNAL \debounce_s[9]~50_combout\ : std_logic;
SIGNAL \debounce_s[9]~51\ : std_logic;
SIGNAL \debounce_s[10]~52_combout\ : std_logic;
SIGNAL \debounce_s[10]~53\ : std_logic;
SIGNAL \debounce_s[11]~54_combout\ : std_logic;
SIGNAL \debounce_s[11]~55\ : std_logic;
SIGNAL \debounce_s[12]~56_combout\ : std_logic;
SIGNAL \debounce_s[12]~57\ : std_logic;
SIGNAL \debounce_s[13]~58_combout\ : std_logic;
SIGNAL \debounce_s[13]~59\ : std_logic;
SIGNAL \debounce_s[14]~60_combout\ : std_logic;
SIGNAL \debounce_s[14]~61\ : std_logic;
SIGNAL \debounce_s[15]~62_combout\ : std_logic;
SIGNAL \debounce_s[15]~63\ : std_logic;
SIGNAL \debounce_s[16]~64_combout\ : std_logic;
SIGNAL \debounce_s[16]~65\ : std_logic;
SIGNAL \debounce_s[17]~66_combout\ : std_logic;
SIGNAL \debounce_s[17]~67\ : std_logic;
SIGNAL \debounce_s[18]~68_combout\ : std_logic;
SIGNAL \debounce_s[18]~69\ : std_logic;
SIGNAL \debounce_s[19]~70_combout\ : std_logic;
SIGNAL \debounce_s[19]~71\ : std_logic;
SIGNAL \debounce_s[20]~72_combout\ : std_logic;
SIGNAL \debounce_s[20]~73\ : std_logic;
SIGNAL \debounce_s[21]~74_combout\ : std_logic;
SIGNAL \debounce_s[21]~75\ : std_logic;
SIGNAL \debounce_s[22]~76_combout\ : std_logic;
SIGNAL \debounce_s[22]~77\ : std_logic;
SIGNAL \debounce_s[23]~78_combout\ : std_logic;
SIGNAL \debounce_s[23]~79\ : std_logic;
SIGNAL \debounce_s[24]~80_combout\ : std_logic;
SIGNAL \debounce_s[24]~81\ : std_logic;
SIGNAL \debounce_s[25]~82_combout\ : std_logic;
SIGNAL \debounce_s[25]~83\ : std_logic;
SIGNAL \debounce_s[26]~84_combout\ : std_logic;
SIGNAL \debounce_s[26]~85\ : std_logic;
SIGNAL \debounce_s[27]~86_combout\ : std_logic;
SIGNAL \debounce_s[27]~87\ : std_logic;
SIGNAL \debounce_s[28]~88_combout\ : std_logic;
SIGNAL \debounce_s[28]~89\ : std_logic;
SIGNAL \debounce_s[29]~90_combout\ : std_logic;
SIGNAL \debounce_s[29]~91\ : std_logic;
SIGNAL \debounce_s[30]~92_combout\ : std_logic;
SIGNAL \debounce_s[30]~93\ : std_logic;
SIGNAL \debounce_s[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL debounce_s : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_button1~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_button1 <= button1;
botao_sim <= ww_botao_sim;
debounce <= ww_debounce;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_button1~input_o\ <= NOT \button1~input_o\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N16
\botao_sim~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~10_combout\,
	devoe => ww_devoe,
	o => \botao_sim~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\debounce[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(0),
	devoe => ww_devoe,
	o => \debounce[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\debounce[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(1),
	devoe => ww_devoe,
	o => \debounce[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\debounce[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(2),
	devoe => ww_devoe,
	o => \debounce[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\debounce[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(3),
	devoe => ww_devoe,
	o => \debounce[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\debounce[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(4),
	devoe => ww_devoe,
	o => \debounce[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\debounce[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(5),
	devoe => ww_devoe,
	o => \debounce[5]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\debounce[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(6),
	devoe => ww_devoe,
	o => \debounce[6]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\debounce[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(7),
	devoe => ww_devoe,
	o => \debounce[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\debounce[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(8),
	devoe => ww_devoe,
	o => \debounce[8]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\debounce[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(9),
	devoe => ww_devoe,
	o => \debounce[9]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\debounce[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(10),
	devoe => ww_devoe,
	o => \debounce[10]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\debounce[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(11),
	devoe => ww_devoe,
	o => \debounce[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\debounce[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(12),
	devoe => ww_devoe,
	o => \debounce[12]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\debounce[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(13),
	devoe => ww_devoe,
	o => \debounce[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\debounce[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(14),
	devoe => ww_devoe,
	o => \debounce[14]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\debounce[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(15),
	devoe => ww_devoe,
	o => \debounce[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\debounce[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(16),
	devoe => ww_devoe,
	o => \debounce[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\debounce[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(17),
	devoe => ww_devoe,
	o => \debounce[17]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\debounce[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(18),
	devoe => ww_devoe,
	o => \debounce[18]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\debounce[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(19),
	devoe => ww_devoe,
	o => \debounce[19]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\debounce[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(20),
	devoe => ww_devoe,
	o => \debounce[20]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\debounce[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(21),
	devoe => ww_devoe,
	o => \debounce[21]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\debounce[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(22),
	devoe => ww_devoe,
	o => \debounce[22]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\debounce[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(23),
	devoe => ww_devoe,
	o => \debounce[23]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\debounce[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(24),
	devoe => ww_devoe,
	o => \debounce[24]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\debounce[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(25),
	devoe => ww_devoe,
	o => \debounce[25]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\debounce[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(26),
	devoe => ww_devoe,
	o => \debounce[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\debounce[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(27),
	devoe => ww_devoe,
	o => \debounce[27]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\debounce[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(28),
	devoe => ww_devoe,
	o => \debounce[28]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\debounce[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(29),
	devoe => ww_devoe,
	o => \debounce[29]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\debounce[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(30),
	devoe => ww_devoe,
	o => \debounce[30]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\debounce[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => debounce_s(31),
	devoe => ww_devoe,
	o => \debounce[31]~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X39_Y3_N0
\debounce_s[0]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[0]~32_combout\ = debounce_s(0) $ (VCC)
-- \debounce_s[0]~33\ = CARRY(debounce_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(0),
	datad => VCC,
	combout => \debounce_s[0]~32_combout\,
	cout => \debounce_s[0]~33\);

-- Location: IOIBUF_X14_Y0_N15
\button1~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: FF_X39_Y3_N1
\debounce_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[0]~32_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(0));

-- Location: LCCOMB_X39_Y3_N2
\debounce_s[1]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[1]~34_combout\ = (debounce_s(1) & (!\debounce_s[0]~33\)) # (!debounce_s(1) & ((\debounce_s[0]~33\) # (GND)))
-- \debounce_s[1]~35\ = CARRY((!\debounce_s[0]~33\) # (!debounce_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(1),
	datad => VCC,
	cin => \debounce_s[0]~33\,
	combout => \debounce_s[1]~34_combout\,
	cout => \debounce_s[1]~35\);

-- Location: FF_X39_Y3_N3
\debounce_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[1]~34_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(1));

-- Location: LCCOMB_X39_Y3_N4
\debounce_s[2]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[2]~36_combout\ = (debounce_s(2) & (\debounce_s[1]~35\ $ (GND))) # (!debounce_s(2) & (!\debounce_s[1]~35\ & VCC))
-- \debounce_s[2]~37\ = CARRY((debounce_s(2) & !\debounce_s[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(2),
	datad => VCC,
	cin => \debounce_s[1]~35\,
	combout => \debounce_s[2]~36_combout\,
	cout => \debounce_s[2]~37\);

-- Location: FF_X39_Y3_N5
\debounce_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[2]~36_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(2));

-- Location: LCCOMB_X39_Y3_N6
\debounce_s[3]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[3]~38_combout\ = (debounce_s(3) & (!\debounce_s[2]~37\)) # (!debounce_s(3) & ((\debounce_s[2]~37\) # (GND)))
-- \debounce_s[3]~39\ = CARRY((!\debounce_s[2]~37\) # (!debounce_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(3),
	datad => VCC,
	cin => \debounce_s[2]~37\,
	combout => \debounce_s[3]~38_combout\,
	cout => \debounce_s[3]~39\);

-- Location: FF_X39_Y3_N7
\debounce_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[3]~38_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(3));

-- Location: LCCOMB_X39_Y3_N8
\debounce_s[4]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[4]~40_combout\ = (debounce_s(4) & (\debounce_s[3]~39\ $ (GND))) # (!debounce_s(4) & (!\debounce_s[3]~39\ & VCC))
-- \debounce_s[4]~41\ = CARRY((debounce_s(4) & !\debounce_s[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(4),
	datad => VCC,
	cin => \debounce_s[3]~39\,
	combout => \debounce_s[4]~40_combout\,
	cout => \debounce_s[4]~41\);

-- Location: FF_X39_Y3_N9
\debounce_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[4]~40_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(4));

-- Location: LCCOMB_X39_Y3_N10
\debounce_s[5]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[5]~42_combout\ = (debounce_s(5) & (!\debounce_s[4]~41\)) # (!debounce_s(5) & ((\debounce_s[4]~41\) # (GND)))
-- \debounce_s[5]~43\ = CARRY((!\debounce_s[4]~41\) # (!debounce_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(5),
	datad => VCC,
	cin => \debounce_s[4]~41\,
	combout => \debounce_s[5]~42_combout\,
	cout => \debounce_s[5]~43\);

-- Location: FF_X39_Y3_N11
\debounce_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[5]~42_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(5));

-- Location: LCCOMB_X39_Y3_N12
\debounce_s[6]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[6]~44_combout\ = (debounce_s(6) & (\debounce_s[5]~43\ $ (GND))) # (!debounce_s(6) & (!\debounce_s[5]~43\ & VCC))
-- \debounce_s[6]~45\ = CARRY((debounce_s(6) & !\debounce_s[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(6),
	datad => VCC,
	cin => \debounce_s[5]~43\,
	combout => \debounce_s[6]~44_combout\,
	cout => \debounce_s[6]~45\);

-- Location: FF_X39_Y3_N13
\debounce_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[6]~44_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(6));

-- Location: LCCOMB_X39_Y3_N14
\debounce_s[7]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[7]~46_combout\ = (debounce_s(7) & (!\debounce_s[6]~45\)) # (!debounce_s(7) & ((\debounce_s[6]~45\) # (GND)))
-- \debounce_s[7]~47\ = CARRY((!\debounce_s[6]~45\) # (!debounce_s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(7),
	datad => VCC,
	cin => \debounce_s[6]~45\,
	combout => \debounce_s[7]~46_combout\,
	cout => \debounce_s[7]~47\);

-- Location: FF_X39_Y3_N15
\debounce_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[7]~46_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(7));

-- Location: LCCOMB_X39_Y3_N16
\debounce_s[8]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[8]~48_combout\ = (debounce_s(8) & (\debounce_s[7]~47\ $ (GND))) # (!debounce_s(8) & (!\debounce_s[7]~47\ & VCC))
-- \debounce_s[8]~49\ = CARRY((debounce_s(8) & !\debounce_s[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(8),
	datad => VCC,
	cin => \debounce_s[7]~47\,
	combout => \debounce_s[8]~48_combout\,
	cout => \debounce_s[8]~49\);

-- Location: FF_X39_Y3_N17
\debounce_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[8]~48_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(8));

-- Location: LCCOMB_X39_Y3_N18
\debounce_s[9]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[9]~50_combout\ = (debounce_s(9) & (!\debounce_s[8]~49\)) # (!debounce_s(9) & ((\debounce_s[8]~49\) # (GND)))
-- \debounce_s[9]~51\ = CARRY((!\debounce_s[8]~49\) # (!debounce_s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(9),
	datad => VCC,
	cin => \debounce_s[8]~49\,
	combout => \debounce_s[9]~50_combout\,
	cout => \debounce_s[9]~51\);

-- Location: FF_X39_Y3_N19
\debounce_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[9]~50_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(9));

-- Location: LCCOMB_X39_Y3_N20
\debounce_s[10]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[10]~52_combout\ = (debounce_s(10) & (\debounce_s[9]~51\ $ (GND))) # (!debounce_s(10) & (!\debounce_s[9]~51\ & VCC))
-- \debounce_s[10]~53\ = CARRY((debounce_s(10) & !\debounce_s[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(10),
	datad => VCC,
	cin => \debounce_s[9]~51\,
	combout => \debounce_s[10]~52_combout\,
	cout => \debounce_s[10]~53\);

-- Location: FF_X39_Y3_N21
\debounce_s[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[10]~52_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(10));

-- Location: LCCOMB_X39_Y3_N22
\debounce_s[11]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[11]~54_combout\ = (debounce_s(11) & (!\debounce_s[10]~53\)) # (!debounce_s(11) & ((\debounce_s[10]~53\) # (GND)))
-- \debounce_s[11]~55\ = CARRY((!\debounce_s[10]~53\) # (!debounce_s(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(11),
	datad => VCC,
	cin => \debounce_s[10]~53\,
	combout => \debounce_s[11]~54_combout\,
	cout => \debounce_s[11]~55\);

-- Location: FF_X39_Y3_N23
\debounce_s[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[11]~54_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(11));

-- Location: LCCOMB_X39_Y3_N24
\debounce_s[12]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[12]~56_combout\ = (debounce_s(12) & (\debounce_s[11]~55\ $ (GND))) # (!debounce_s(12) & (!\debounce_s[11]~55\ & VCC))
-- \debounce_s[12]~57\ = CARRY((debounce_s(12) & !\debounce_s[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(12),
	datad => VCC,
	cin => \debounce_s[11]~55\,
	combout => \debounce_s[12]~56_combout\,
	cout => \debounce_s[12]~57\);

-- Location: FF_X39_Y3_N25
\debounce_s[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[12]~56_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(12));

-- Location: LCCOMB_X39_Y3_N26
\debounce_s[13]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[13]~58_combout\ = (debounce_s(13) & (!\debounce_s[12]~57\)) # (!debounce_s(13) & ((\debounce_s[12]~57\) # (GND)))
-- \debounce_s[13]~59\ = CARRY((!\debounce_s[12]~57\) # (!debounce_s(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(13),
	datad => VCC,
	cin => \debounce_s[12]~57\,
	combout => \debounce_s[13]~58_combout\,
	cout => \debounce_s[13]~59\);

-- Location: FF_X39_Y3_N27
\debounce_s[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[13]~58_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(13));

-- Location: LCCOMB_X39_Y3_N28
\debounce_s[14]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[14]~60_combout\ = (debounce_s(14) & (\debounce_s[13]~59\ $ (GND))) # (!debounce_s(14) & (!\debounce_s[13]~59\ & VCC))
-- \debounce_s[14]~61\ = CARRY((debounce_s(14) & !\debounce_s[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(14),
	datad => VCC,
	cin => \debounce_s[13]~59\,
	combout => \debounce_s[14]~60_combout\,
	cout => \debounce_s[14]~61\);

-- Location: FF_X39_Y3_N29
\debounce_s[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[14]~60_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(14));

-- Location: LCCOMB_X39_Y3_N30
\debounce_s[15]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[15]~62_combout\ = (debounce_s(15) & (!\debounce_s[14]~61\)) # (!debounce_s(15) & ((\debounce_s[14]~61\) # (GND)))
-- \debounce_s[15]~63\ = CARRY((!\debounce_s[14]~61\) # (!debounce_s(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(15),
	datad => VCC,
	cin => \debounce_s[14]~61\,
	combout => \debounce_s[15]~62_combout\,
	cout => \debounce_s[15]~63\);

-- Location: FF_X39_Y3_N31
\debounce_s[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[15]~62_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(15));

-- Location: LCCOMB_X39_Y2_N0
\debounce_s[16]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[16]~64_combout\ = (debounce_s(16) & (\debounce_s[15]~63\ $ (GND))) # (!debounce_s(16) & (!\debounce_s[15]~63\ & VCC))
-- \debounce_s[16]~65\ = CARRY((debounce_s(16) & !\debounce_s[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(16),
	datad => VCC,
	cin => \debounce_s[15]~63\,
	combout => \debounce_s[16]~64_combout\,
	cout => \debounce_s[16]~65\);

-- Location: FF_X39_Y2_N1
\debounce_s[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[16]~64_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(16));

-- Location: LCCOMB_X39_Y2_N2
\debounce_s[17]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[17]~66_combout\ = (debounce_s(17) & (!\debounce_s[16]~65\)) # (!debounce_s(17) & ((\debounce_s[16]~65\) # (GND)))
-- \debounce_s[17]~67\ = CARRY((!\debounce_s[16]~65\) # (!debounce_s(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(17),
	datad => VCC,
	cin => \debounce_s[16]~65\,
	combout => \debounce_s[17]~66_combout\,
	cout => \debounce_s[17]~67\);

-- Location: FF_X39_Y2_N3
\debounce_s[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[17]~66_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(17));

-- Location: LCCOMB_X39_Y2_N4
\debounce_s[18]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[18]~68_combout\ = (debounce_s(18) & (\debounce_s[17]~67\ $ (GND))) # (!debounce_s(18) & (!\debounce_s[17]~67\ & VCC))
-- \debounce_s[18]~69\ = CARRY((debounce_s(18) & !\debounce_s[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(18),
	datad => VCC,
	cin => \debounce_s[17]~67\,
	combout => \debounce_s[18]~68_combout\,
	cout => \debounce_s[18]~69\);

-- Location: FF_X39_Y2_N5
\debounce_s[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[18]~68_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(18));

-- Location: LCCOMB_X39_Y2_N6
\debounce_s[19]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[19]~70_combout\ = (debounce_s(19) & (!\debounce_s[18]~69\)) # (!debounce_s(19) & ((\debounce_s[18]~69\) # (GND)))
-- \debounce_s[19]~71\ = CARRY((!\debounce_s[18]~69\) # (!debounce_s(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(19),
	datad => VCC,
	cin => \debounce_s[18]~69\,
	combout => \debounce_s[19]~70_combout\,
	cout => \debounce_s[19]~71\);

-- Location: FF_X39_Y2_N7
\debounce_s[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[19]~70_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(19));

-- Location: LCCOMB_X39_Y2_N8
\debounce_s[20]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[20]~72_combout\ = (debounce_s(20) & (\debounce_s[19]~71\ $ (GND))) # (!debounce_s(20) & (!\debounce_s[19]~71\ & VCC))
-- \debounce_s[20]~73\ = CARRY((debounce_s(20) & !\debounce_s[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(20),
	datad => VCC,
	cin => \debounce_s[19]~71\,
	combout => \debounce_s[20]~72_combout\,
	cout => \debounce_s[20]~73\);

-- Location: FF_X39_Y2_N9
\debounce_s[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[20]~72_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(20));

-- Location: LCCOMB_X39_Y2_N10
\debounce_s[21]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[21]~74_combout\ = (debounce_s(21) & (!\debounce_s[20]~73\)) # (!debounce_s(21) & ((\debounce_s[20]~73\) # (GND)))
-- \debounce_s[21]~75\ = CARRY((!\debounce_s[20]~73\) # (!debounce_s(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(21),
	datad => VCC,
	cin => \debounce_s[20]~73\,
	combout => \debounce_s[21]~74_combout\,
	cout => \debounce_s[21]~75\);

-- Location: FF_X39_Y2_N11
\debounce_s[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[21]~74_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(21));

-- Location: LCCOMB_X39_Y2_N12
\debounce_s[22]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[22]~76_combout\ = (debounce_s(22) & (\debounce_s[21]~75\ $ (GND))) # (!debounce_s(22) & (!\debounce_s[21]~75\ & VCC))
-- \debounce_s[22]~77\ = CARRY((debounce_s(22) & !\debounce_s[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(22),
	datad => VCC,
	cin => \debounce_s[21]~75\,
	combout => \debounce_s[22]~76_combout\,
	cout => \debounce_s[22]~77\);

-- Location: FF_X39_Y2_N13
\debounce_s[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[22]~76_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(22));

-- Location: LCCOMB_X39_Y2_N14
\debounce_s[23]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[23]~78_combout\ = (debounce_s(23) & (!\debounce_s[22]~77\)) # (!debounce_s(23) & ((\debounce_s[22]~77\) # (GND)))
-- \debounce_s[23]~79\ = CARRY((!\debounce_s[22]~77\) # (!debounce_s(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(23),
	datad => VCC,
	cin => \debounce_s[22]~77\,
	combout => \debounce_s[23]~78_combout\,
	cout => \debounce_s[23]~79\);

-- Location: FF_X39_Y2_N15
\debounce_s[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[23]~78_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(23));

-- Location: LCCOMB_X39_Y2_N16
\debounce_s[24]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[24]~80_combout\ = (debounce_s(24) & (\debounce_s[23]~79\ $ (GND))) # (!debounce_s(24) & (!\debounce_s[23]~79\ & VCC))
-- \debounce_s[24]~81\ = CARRY((debounce_s(24) & !\debounce_s[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(24),
	datad => VCC,
	cin => \debounce_s[23]~79\,
	combout => \debounce_s[24]~80_combout\,
	cout => \debounce_s[24]~81\);

-- Location: FF_X39_Y2_N17
\debounce_s[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[24]~80_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(24));

-- Location: LCCOMB_X39_Y2_N18
\debounce_s[25]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[25]~82_combout\ = (debounce_s(25) & (!\debounce_s[24]~81\)) # (!debounce_s(25) & ((\debounce_s[24]~81\) # (GND)))
-- \debounce_s[25]~83\ = CARRY((!\debounce_s[24]~81\) # (!debounce_s(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(25),
	datad => VCC,
	cin => \debounce_s[24]~81\,
	combout => \debounce_s[25]~82_combout\,
	cout => \debounce_s[25]~83\);

-- Location: FF_X39_Y2_N19
\debounce_s[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[25]~82_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(25));

-- Location: LCCOMB_X39_Y2_N20
\debounce_s[26]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[26]~84_combout\ = (debounce_s(26) & (\debounce_s[25]~83\ $ (GND))) # (!debounce_s(26) & (!\debounce_s[25]~83\ & VCC))
-- \debounce_s[26]~85\ = CARRY((debounce_s(26) & !\debounce_s[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(26),
	datad => VCC,
	cin => \debounce_s[25]~83\,
	combout => \debounce_s[26]~84_combout\,
	cout => \debounce_s[26]~85\);

-- Location: FF_X39_Y2_N21
\debounce_s[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[26]~84_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(26));

-- Location: LCCOMB_X39_Y2_N22
\debounce_s[27]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[27]~86_combout\ = (debounce_s(27) & (!\debounce_s[26]~85\)) # (!debounce_s(27) & ((\debounce_s[26]~85\) # (GND)))
-- \debounce_s[27]~87\ = CARRY((!\debounce_s[26]~85\) # (!debounce_s(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(27),
	datad => VCC,
	cin => \debounce_s[26]~85\,
	combout => \debounce_s[27]~86_combout\,
	cout => \debounce_s[27]~87\);

-- Location: FF_X39_Y2_N23
\debounce_s[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[27]~86_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(27));

-- Location: LCCOMB_X39_Y2_N24
\debounce_s[28]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[28]~88_combout\ = (debounce_s(28) & (\debounce_s[27]~87\ $ (GND))) # (!debounce_s(28) & (!\debounce_s[27]~87\ & VCC))
-- \debounce_s[28]~89\ = CARRY((debounce_s(28) & !\debounce_s[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(28),
	datad => VCC,
	cin => \debounce_s[27]~87\,
	combout => \debounce_s[28]~88_combout\,
	cout => \debounce_s[28]~89\);

-- Location: FF_X39_Y2_N25
\debounce_s[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[28]~88_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(28));

-- Location: LCCOMB_X39_Y2_N26
\debounce_s[29]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[29]~90_combout\ = (debounce_s(29) & (!\debounce_s[28]~89\)) # (!debounce_s(29) & ((\debounce_s[28]~89\) # (GND)))
-- \debounce_s[29]~91\ = CARRY((!\debounce_s[28]~89\) # (!debounce_s(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(29),
	datad => VCC,
	cin => \debounce_s[28]~89\,
	combout => \debounce_s[29]~90_combout\,
	cout => \debounce_s[29]~91\);

-- Location: FF_X39_Y2_N27
\debounce_s[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[29]~90_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(29));

-- Location: LCCOMB_X39_Y2_N28
\debounce_s[30]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[30]~92_combout\ = (debounce_s(30) & (\debounce_s[29]~91\ $ (GND))) # (!debounce_s(30) & (!\debounce_s[29]~91\ & VCC))
-- \debounce_s[30]~93\ = CARRY((debounce_s(30) & !\debounce_s[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_s(30),
	datad => VCC,
	cin => \debounce_s[29]~91\,
	combout => \debounce_s[30]~92_combout\,
	cout => \debounce_s[30]~93\);

-- Location: FF_X39_Y2_N29
\debounce_s[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[30]~92_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(30));

-- Location: LCCOMB_X39_Y2_N30
\debounce_s[31]~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \debounce_s[31]~94_combout\ = debounce_s(31) $ (\debounce_s[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(31),
	cin => \debounce_s[30]~93\,
	combout => \debounce_s[31]~94_combout\);

-- Location: FF_X39_Y2_N31
\debounce_s[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_s[31]~94_combout\,
	sclr => \ALT_INV_button1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_s(31));

-- Location: LCCOMB_X39_Y4_N16
\LessThan0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!debounce_s(24) & (!debounce_s(22) & (!debounce_s(23) & !debounce_s(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(24),
	datab => debounce_s(22),
	datac => debounce_s(23),
	datad => debounce_s(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y4_N26
\LessThan0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!debounce_s(27) & (!debounce_s(28) & (!debounce_s(25) & !debounce_s(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(27),
	datab => debounce_s(28),
	datac => debounce_s(25),
	datad => debounce_s(26),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y4_N12
\LessThan0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!debounce_s(30) & (\LessThan0~0_combout\ & (\LessThan0~1_combout\ & !debounce_s(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(30),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => debounce_s(29),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y4_N8
\LessThan0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!debounce_s(16) & (!debounce_s(19) & ((!debounce_s(14)) # (!debounce_s(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(13),
	datab => debounce_s(16),
	datac => debounce_s(19),
	datad => debounce_s(14),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X39_Y4_N20
\LessThan0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((!debounce_s(7) & ((!debounce_s(6)) # (!debounce_s(5))))) # (!debounce_s(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(5),
	datab => debounce_s(8),
	datac => debounce_s(7),
	datad => debounce_s(6),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y4_N18
\LessThan0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!debounce_s(10) & (!debounce_s(16) & (!debounce_s(19) & !debounce_s(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(10),
	datab => debounce_s(16),
	datac => debounce_s(19),
	datad => debounce_s(11),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y4_N22
\LessThan0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!debounce_s(12) & (\LessThan0~3_combout\ & ((\LessThan0~4_combout\) # (!debounce_s(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(9),
	datab => \LessThan0~4_combout\,
	datac => debounce_s(12),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X39_Y4_N2
\LessThan0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!debounce_s(19) & (((!debounce_s(15) & !debounce_s(16))) # (!debounce_s(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(15),
	datab => debounce_s(17),
	datac => debounce_s(19),
	datad => debounce_s(16),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X39_Y4_N28
\LessThan0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((\LessThan0~7_combout\) # ((!debounce_s(18) & !debounce_s(19)))) # (!debounce_s(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_s(20),
	datab => debounce_s(18),
	datac => debounce_s(19),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X39_Y4_N10
\LessThan0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (\LessThan0~2_combout\ & ((\LessThan0~6_combout\) # ((\LessThan0~5_combout\) # (\LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~6_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X39_Y4_N24
\LessThan0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (debounce_s(31)) # (\LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => debounce_s(31),
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~10_combout\);

ww_botao_sim <= \botao_sim~output_o\;

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


