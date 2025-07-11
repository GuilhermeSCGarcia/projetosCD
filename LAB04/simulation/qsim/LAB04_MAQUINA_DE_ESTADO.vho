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

-- DATE "06/02/2025 22:09:22"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
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

ENTITY 	LAB04_MAQUINA_DE_ESTADO IS
    PORT (
	S10 : OUT std_logic;
	PB0 : IN std_logic;
	Clock : IN std_logic;
	S11 : OUT std_logic;
	S12 : OUT std_logic;
	S13 : OUT std_logic;
	S14 : OUT std_logic;
	S15 : OUT std_logic;
	S16 : OUT std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic
	);
END LAB04_MAQUINA_DE_ESTADO;

-- Design Ports Information
-- S10	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S11	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S12	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S13	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S14	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S15	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S16	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_B8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- PB0	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB04_MAQUINA_DE_ESTADO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S10 : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_S11 : std_logic;
SIGNAL ww_S12 : std_logic;
SIGNAL ww_S13 : std_logic;
SIGNAL ww_S14 : std_logic;
SIGNAL ww_S15 : std_logic;
SIGNAL ww_S16 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S10~output_o\ : std_logic;
SIGNAL \S11~output_o\ : std_logic;
SIGNAL \S12~output_o\ : std_logic;
SIGNAL \S13~output_o\ : std_logic;
SIGNAL \S14~output_o\ : std_logic;
SIGNAL \S15~output_o\ : std_logic;
SIGNAL \S16~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \inst|J0~0_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst|D3~0_combout\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \SDFDSFSDFDS|S0~1_combout\ : std_logic;
SIGNAL \inst|J1~0_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst|J0~1_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst|D2~0_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \SDFDSFSDFDS|S0~0_combout\ : std_logic;
SIGNAL \SDFDSFSDFDS|S1~0_combout\ : std_logic;
SIGNAL \SDFDSFSDFDS|S2~0_combout\ : std_logic;
SIGNAL \SDFDSFSDFDS|S3~0_combout\ : std_logic;
SIGNAL \SDFDSFSDFDS|S4~0_combout\ : std_logic;
SIGNAL \SDFDSFSDFDS|S5~0_combout\ : std_logic;
SIGNAL \SDFDSFSDFDS|S6~combout\ : std_logic;
SIGNAL \ALT_INV_inst2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S10 <= ww_S10;
ww_PB0 <= PB0;
ww_Clock <= Clock;
S11 <= ww_S11;
S12 <= ww_S12;
S13 <= ww_S13;
S14 <= ww_S14;
S15 <= ww_S15;
S16 <= ww_S16;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_inst2~q\ <= NOT \inst2~q\;
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

-- Location: IOOBUF_X58_Y54_N16
\S10~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S0~0_combout\,
	devoe => ww_devoe,
	o => \S10~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\S11~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S1~0_combout\,
	devoe => ww_devoe,
	o => \S11~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\S12~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S2~0_combout\,
	devoe => ww_devoe,
	o => \S12~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\S13~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S3~0_combout\,
	devoe => ww_devoe,
	o => \S13~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\S14~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S4~0_combout\,
	devoe => ww_devoe,
	o => \S14~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\S15~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S5~0_combout\,
	devoe => ww_devoe,
	o => \S15~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\S16~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDFDSFSDFDS|S6~combout\,
	devoe => ww_devoe,
	o => \S16~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\S0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\S1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\S2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\S3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\Clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: LCCOMB_X50_Y53_N10
\inst|J0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|J0~0_combout\ = (!\inst4~q\ & \inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst9~q\,
	combout => \inst|J0~0_combout\);

-- Location: LCCOMB_X50_Y53_N8
\inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\inst3~q\ & ((\inst|J0~0_combout\))) # (!\inst3~q\ & (!\inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datac => \inst4~q\,
	datad => \inst|J0~0_combout\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X50_Y53_N4
\inst|D3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D3~0_combout\ = (\inst3~q\ & (\inst4~q\ $ (\inst9~q\))) # (!\inst3~q\ & ((\inst4~q\) # (!\inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3~q\,
	datac => \inst4~q\,
	datad => \inst9~q\,
	combout => \inst|D3~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\PB0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB0,
	o => \PB0~input_o\);

-- Location: LCCOMB_X50_Y53_N14
\SDFDSFSDFDS|S0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S0~1_combout\ = \inst4~q\ $ (\inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst9~q\,
	combout => \SDFDSFSDFDS|S0~1_combout\);

-- Location: LCCOMB_X50_Y53_N16
\inst|J1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|J1~0_combout\ = (\inst4~q\) # (\inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst9~q\,
	combout => \inst|J1~0_combout\);

-- Location: LCCOMB_X50_Y53_N18
\inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\inst3~q\ & ((\inst|J1~0_combout\))) # (!\inst3~q\ & (!\SDFDSFSDFDS|S0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \SDFDSFSDFDS|S0~1_combout\,
	datad => \inst|J1~0_combout\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X50_Y53_N26
\inst|J0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|J0~1_combout\ = (\inst4~q\ & !\inst9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst9~q\,
	combout => \inst|J0~1_combout\);

-- Location: FF_X50_Y53_N19
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst2~0_combout\,
	asdata => \inst|J0~1_combout\,
	clrn => \PB0~input_o\,
	sload => \ALT_INV_inst2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: FF_X50_Y53_N9
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst4~0_combout\,
	asdata => \inst|D3~0_combout\,
	clrn => \PB0~input_o\,
	sload => \ALT_INV_inst2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X50_Y53_N0
\inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\inst4~q\ & (((!\inst9~q\)))) # (!\inst4~q\ & ((\inst3~q\ & (!\inst2~q\)) # (!\inst3~q\ & ((\inst9~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst9~q\,
	combout => \inst3~0_combout\);

-- Location: FF_X50_Y53_N1
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst3~0_combout\,
	clrn => \PB0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X50_Y53_N6
\inst|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D2~0_combout\ = (\inst3~q\ & (!\inst9~q\ & ((\inst2~q\) # (\inst4~q\)))) # (!\inst3~q\ & (((\inst2~q\ & \inst9~q\)) # (!\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst9~q\,
	datad => \inst4~q\,
	combout => \inst|D2~0_combout\);

-- Location: FF_X50_Y53_N7
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \inst|D2~0_combout\,
	clrn => \PB0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X50_Y53_N28
\SDFDSFSDFDS|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S0~0_combout\ = (\inst9~q\ & (!\inst2~q\ & (\inst3~q\ $ (!\inst4~q\)))) # (!\inst9~q\ & (\inst3~q\ & (\inst2~q\ $ (!\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S0~0_combout\);

-- Location: LCCOMB_X50_Y53_N22
\SDFDSFSDFDS|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S1~0_combout\ = (\inst2~q\ & ((\inst3~q\ & ((\inst4~q\))) # (!\inst3~q\ & (\inst9~q\)))) # (!\inst2~q\ & (\inst9~q\ & (\inst3~q\ $ (\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S1~0_combout\);

-- Location: LCCOMB_X50_Y53_N12
\SDFDSFSDFDS|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S2~0_combout\ = (\inst9~q\ & (\inst4~q\ & ((\inst2~q\) # (!\inst3~q\)))) # (!\inst9~q\ & (\inst2~q\ & (!\inst3~q\ & !\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S2~0_combout\);

-- Location: LCCOMB_X50_Y53_N2
\SDFDSFSDFDS|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S3~0_combout\ = (\inst2~q\ & ((\inst9~q\ & (\inst3~q\)) # (!\inst9~q\ & (!\inst3~q\ & \inst4~q\)))) # (!\inst2~q\ & (!\inst4~q\ & (\inst9~q\ $ (\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S3~0_combout\);

-- Location: LCCOMB_X50_Y53_N24
\SDFDSFSDFDS|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S4~0_combout\ = (\inst2~q\ & (((\inst3~q\ & !\inst4~q\)))) # (!\inst2~q\ & ((\inst9~q\ & ((!\inst4~q\))) # (!\inst9~q\ & (\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S4~0_combout\);

-- Location: LCCOMB_X50_Y53_N30
\SDFDSFSDFDS|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S5~0_combout\ = (\inst9~q\ & (\inst3~q\ & (\inst2~q\ $ (\inst4~q\)))) # (!\inst9~q\ & (!\inst4~q\ & ((\inst2~q\) # (\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S5~0_combout\);

-- Location: LCCOMB_X50_Y53_N20
\SDFDSFSDFDS|S6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDFDSFSDFDS|S6~combout\ = (\inst3~q\ & (!\inst4~q\ & (\inst9~q\ $ (!\inst2~q\)))) # (!\inst3~q\ & (!\inst2~q\ & (\inst9~q\ $ (!\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~q\,
	datab => \inst2~q\,
	datac => \inst3~q\,
	datad => \inst4~q\,
	combout => \SDFDSFSDFDS|S6~combout\);

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

ww_S10 <= \S10~output_o\;

ww_S11 <= \S11~output_o\;

ww_S12 <= \S12~output_o\;

ww_S13 <= \S13~output_o\;

ww_S14 <= \S14~output_o\;

ww_S15 <= \S15~output_o\;

ww_S16 <= \S16~output_o\;

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;
END structure;


