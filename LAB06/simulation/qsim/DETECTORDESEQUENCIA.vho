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

-- DATE "06/04/2025 17:14:59"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DETECTORDESEQUENCIA_TOP IS
    PORT (
	clk : IN std_logic;
	M0 : IN std_logic;
	M1 : IN std_logic;
	led_chave0 : OUT std_logic;
	led_seqdetectada : OUT std_logic;
	Q0_out : OUT std_logic;
	Q1_out : OUT std_logic;
	Q2_out : OUT std_logic;
	Hex_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END DETECTORDESEQUENCIA_TOP;

-- Design Ports Information
-- M1	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_chave0	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_seqdetectada	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0_out	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1_out	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2_out	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex_out[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M0	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DETECTORDESEQUENCIA_TOP IS
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
SIGNAL ww_M0 : std_logic;
SIGNAL ww_M1 : std_logic;
SIGNAL ww_led_chave0 : std_logic;
SIGNAL ww_led_seqdetectada : std_logic;
SIGNAL ww_Q0_out : std_logic;
SIGNAL ww_Q1_out : std_logic;
SIGNAL ww_Q2_out : std_logic;
SIGNAL ww_Hex_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \M1~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_chave0~output_o\ : std_logic;
SIGNAL \led_seqdetectada~output_o\ : std_logic;
SIGNAL \Q0_out~output_o\ : std_logic;
SIGNAL \Q1_out~output_o\ : std_logic;
SIGNAL \Q2_out~output_o\ : std_logic;
SIGNAL \Hex_out[0]~output_o\ : std_logic;
SIGNAL \Hex_out[1]~output_o\ : std_logic;
SIGNAL \Hex_out[2]~output_o\ : std_logic;
SIGNAL \Hex_out[3]~output_o\ : std_logic;
SIGNAL \Hex_out[4]~output_o\ : std_logic;
SIGNAL \Hex_out[5]~output_o\ : std_logic;
SIGNAL \Hex_out[6]~output_o\ : std_logic;
SIGNAL \M0~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \ffjk0|Q_reg~0_combout\ : std_logic;
SIGNAL \ffjk0|Q_reg~q\ : std_logic;
SIGNAL \ffjk2|Q_reg~0_combout\ : std_logic;
SIGNAL \ffjk2|Q_reg~q\ : std_logic;
SIGNAL \ffjk1|Q_reg~0_combout\ : std_logic;
SIGNAL \ffjk1|Q_reg~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \led7seg|S0~0_combout\ : std_logic;
SIGNAL \led7seg|S1~0_combout\ : std_logic;
SIGNAL \led7seg|S2~0_combout\ : std_logic;
SIGNAL \led7seg|S3~0_combout\ : std_logic;
SIGNAL \led7seg|S4~combout\ : std_logic;
SIGNAL \led7seg|S5~0_combout\ : std_logic;
SIGNAL \led7seg|S6~combout\ : std_logic;
SIGNAL \led7seg|ALT_INV_S1~0_combout\ : std_logic;
SIGNAL \led7seg|ALT_INV_S0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_M0 <= M0;
ww_M1 <= M1;
led_chave0 <= ww_led_chave0;
led_seqdetectada <= ww_led_seqdetectada;
Q0_out <= ww_Q0_out;
Q1_out <= ww_Q1_out;
Q2_out <= ww_Q2_out;
Hex_out <= ww_Hex_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\led7seg|ALT_INV_S1~0_combout\ <= NOT \led7seg|S1~0_combout\;
\led7seg|ALT_INV_S0~0_combout\ <= NOT \led7seg|S0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X49_Y54_N23
\led_chave0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M0~input_o\,
	devoe => ww_devoe,
	o => \led_chave0~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\led_seqdetectada~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~0_combout\,
	devoe => ww_devoe,
	o => \led_seqdetectada~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Q0_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffjk0|Q_reg~q\,
	devoe => ww_devoe,
	o => \Q0_out~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Q1_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffjk1|Q_reg~q\,
	devoe => ww_devoe,
	o => \Q1_out~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\Q2_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ffjk2|Q_reg~q\,
	devoe => ww_devoe,
	o => \Q2_out~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\Hex_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|ALT_INV_S0~0_combout\,
	devoe => ww_devoe,
	o => \Hex_out[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\Hex_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|ALT_INV_S1~0_combout\,
	devoe => ww_devoe,
	o => \Hex_out[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Hex_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|S2~0_combout\,
	devoe => ww_devoe,
	o => \Hex_out[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\Hex_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|S3~0_combout\,
	devoe => ww_devoe,
	o => \Hex_out[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\Hex_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|S4~combout\,
	devoe => ww_devoe,
	o => \Hex_out[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\Hex_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|S5~0_combout\,
	devoe => ww_devoe,
	o => \Hex_out[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\Hex_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led7seg|S6~combout\,
	devoe => ww_devoe,
	o => \Hex_out[6]~output_o\);

-- Location: IOIBUF_X49_Y54_N15
\M0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M0,
	o => \M0~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X47_Y53_N10
\ffjk0|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ffjk0|Q_reg~0_combout\ = (\M0~input_o\ & (\ffjk1|Q_reg~q\ $ (((!\ffjk2|Q_reg~q\))))) # (!\M0~input_o\ & (((!\ffjk0|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffjk1|Q_reg~q\,
	datab => \M0~input_o\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \ffjk0|Q_reg~0_combout\);

-- Location: FF_X47_Y53_N11
\ffjk0|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ffjk0|Q_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffjk0|Q_reg~q\);

-- Location: LCCOMB_X47_Y53_N28
\ffjk2|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ffjk2|Q_reg~0_combout\ = (\ffjk0|Q_reg~q\ & (\ffjk2|Q_reg~q\ $ (((!\M0~input_o\ & \ffjk1|Q_reg~q\))))) # (!\ffjk0|Q_reg~q\ & ((\M0~input_o\ & ((\ffjk1|Q_reg~q\))) # (!\M0~input_o\ & (\ffjk2|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffjk0|Q_reg~q\,
	datab => \M0~input_o\,
	datac => \ffjk2|Q_reg~q\,
	datad => \ffjk1|Q_reg~q\,
	combout => \ffjk2|Q_reg~0_combout\);

-- Location: FF_X47_Y53_N29
\ffjk2|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ffjk2|Q_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffjk2|Q_reg~q\);

-- Location: LCCOMB_X47_Y53_N12
\ffjk1|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ffjk1|Q_reg~0_combout\ = (\ffjk0|Q_reg~q\ & ((\M0~input_o\ & (!\ffjk2|Q_reg~q\)) # (!\M0~input_o\ & ((!\ffjk1|Q_reg~q\))))) # (!\ffjk0|Q_reg~q\ & (((\ffjk1|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M0~input_o\,
	datab => \ffjk2|Q_reg~q\,
	datac => \ffjk1|Q_reg~q\,
	datad => \ffjk0|Q_reg~q\,
	combout => \ffjk1|Q_reg~0_combout\);

-- Location: FF_X47_Y53_N13
\ffjk1|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ffjk1|Q_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ffjk1|Q_reg~q\);

-- Location: LCCOMB_X47_Y53_N22
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ffjk1|Q_reg~q\ & (\ffjk0|Q_reg~q\ & \ffjk2|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X47_Y53_N4
\led7seg|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S0~0_combout\ = (\ffjk1|Q_reg~q\) # (\ffjk0|Q_reg~q\ $ (!\ffjk2|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S0~0_combout\);

-- Location: LCCOMB_X47_Y53_N2
\led7seg|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S1~0_combout\ = (\ffjk1|Q_reg~q\ $ (!\ffjk0|Q_reg~q\)) # (!\ffjk2|Q_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S1~0_combout\);

-- Location: LCCOMB_X47_Y53_N24
\led7seg|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S2~0_combout\ = (\ffjk1|Q_reg~q\ & (!\ffjk0|Q_reg~q\ & !\ffjk2|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S2~0_combout\);

-- Location: LCCOMB_X47_Y53_N30
\led7seg|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S3~0_combout\ = (\ffjk1|Q_reg~q\ & (\ffjk0|Q_reg~q\ & \ffjk2|Q_reg~q\)) # (!\ffjk1|Q_reg~q\ & (\ffjk0|Q_reg~q\ $ (\ffjk2|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S3~0_combout\);

-- Location: LCCOMB_X47_Y53_N16
\led7seg|S4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S4~combout\ = (\ffjk0|Q_reg~q\) # ((!\ffjk1|Q_reg~q\ & \ffjk2|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S4~combout\);

-- Location: LCCOMB_X47_Y53_N6
\led7seg|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S5~0_combout\ = (\ffjk1|Q_reg~q\ & ((\ffjk0|Q_reg~q\) # (!\ffjk2|Q_reg~q\))) # (!\ffjk1|Q_reg~q\ & (\ffjk0|Q_reg~q\ & !\ffjk2|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S5~0_combout\);

-- Location: LCCOMB_X47_Y53_N20
\led7seg|S6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led7seg|S6~combout\ = (\ffjk1|Q_reg~q\ & (\ffjk0|Q_reg~q\ & \ffjk2|Q_reg~q\)) # (!\ffjk1|Q_reg~q\ & ((!\ffjk2|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ffjk1|Q_reg~q\,
	datac => \ffjk0|Q_reg~q\,
	datad => \ffjk2|Q_reg~q\,
	combout => \led7seg|S6~combout\);

-- Location: IOIBUF_X20_Y0_N29
\M1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M1,
	o => \M1~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led_chave0 <= \led_chave0~output_o\;

ww_led_seqdetectada <= \led_seqdetectada~output_o\;

ww_Q0_out <= \Q0_out~output_o\;

ww_Q1_out <= \Q1_out~output_o\;

ww_Q2_out <= \Q2_out~output_o\;

ww_Hex_out(0) <= \Hex_out[0]~output_o\;

ww_Hex_out(1) <= \Hex_out[1]~output_o\;

ww_Hex_out(2) <= \Hex_out[2]~output_o\;

ww_Hex_out(3) <= \Hex_out[3]~output_o\;

ww_Hex_out(4) <= \Hex_out[4]~output_o\;

ww_Hex_out(5) <= \Hex_out[5]~output_o\;

ww_Hex_out(6) <= \Hex_out[6]~output_o\;
END structure;


