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

-- DATE "04/28/2025 10:13:42"

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

ENTITY 	SOMADOR4BITS7SEG IS
    PORT (
	HEX20 : OUT std_logic;
	A3 : IN std_logic;
	A2 : IN std_logic;
	A1 : IN std_logic;
	A0 : IN std_logic;
	PB0 : IN std_logic;
	HEX21 : OUT std_logic;
	HEX22 : OUT std_logic;
	HEX23 : OUT std_logic;
	HEX24 : OUT std_logic;
	HEX25 : OUT std_logic;
	HEX26 : OUT std_logic;
	HEX00 : OUT std_logic;
	HEX01 : OUT std_logic;
	HEX02 : OUT std_logic;
	HEX03 : OUT std_logic;
	HEX04 : OUT std_logic;
	HEX05 : OUT std_logic;
	HEX06 : OUT std_logic;
	HEX40 : OUT std_logic;
	PB1 : IN std_logic;
	SW4 : IN std_logic;
	HEX41 : OUT std_logic;
	HEX42 : OUT std_logic;
	HEX44 : OUT std_logic;
	HEX45 : OUT std_logic;
	HEX46 : OUT std_logic;
	HEX50 : OUT std_logic;
	HEX51 : OUT std_logic;
	HEX52 : OUT std_logic;
	HEX53 : OUT std_logic;
	HEX54 : OUT std_logic;
	HEX55 : OUT std_logic;
	HEX56 : OUT std_logic;
	HEX43 : OUT std_logic;
	HEX10 : OUT std_logic;
	HEX11 : OUT std_logic;
	HEX12 : OUT std_logic;
	HEX13 : OUT std_logic;
	HEX14 : OUT std_logic;
	HEX15 : OUT std_logic;
	HEX16 : OUT std_logic;
	HEX30 : OUT std_logic;
	HEX31 : OUT std_logic;
	HEX32 : OUT std_logic;
	HEX33 : OUT std_logic;
	HEX34 : OUT std_logic;
	HEX35 : OUT std_logic;
	HEX36 : OUT std_logic;
	S00 : OUT std_logic;
	S01 : OUT std_logic;
	S02 : OUT std_logic;
	S03 : OUT std_logic;
	Cout : OUT std_logic;
	A0OUT : OUT std_logic;
	A1OUT : OUT std_logic;
	A2OUT : OUT std_logic;
	A3OUT : OUT std_logic;
	B0OUT : OUT std_logic;
	B1OUT : OUT std_logic;
	B2OUT : OUT std_logic;
	B3OUT : OUT std_logic
	);
END SOMADOR4BITS7SEG;

-- Design Ports Information
-- HEX20	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX21	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX22	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX23	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX24	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX25	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX26	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX00	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX01	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX02	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX03	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX04	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX05	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX06	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX40	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX41	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX42	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX44	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX45	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX46	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX50	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX51	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX52	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX53	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX54	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX55	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX56	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX43	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX10	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX11	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX12	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX13	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX14	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX15	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX16	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX30	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX31	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX32	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX33	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX34	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX35	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX36	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S00	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S01	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S02	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S03	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0OUT	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1OUT	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2OUT	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3OUT	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0OUT	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1OUT	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2OUT	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3OUT	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB1	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW4	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB0	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SOMADOR4BITS7SEG IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX20 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_PB0 : std_logic;
SIGNAL ww_HEX21 : std_logic;
SIGNAL ww_HEX22 : std_logic;
SIGNAL ww_HEX23 : std_logic;
SIGNAL ww_HEX24 : std_logic;
SIGNAL ww_HEX25 : std_logic;
SIGNAL ww_HEX26 : std_logic;
SIGNAL ww_HEX00 : std_logic;
SIGNAL ww_HEX01 : std_logic;
SIGNAL ww_HEX02 : std_logic;
SIGNAL ww_HEX03 : std_logic;
SIGNAL ww_HEX04 : std_logic;
SIGNAL ww_HEX05 : std_logic;
SIGNAL ww_HEX06 : std_logic;
SIGNAL ww_HEX40 : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL ww_SW4 : std_logic;
SIGNAL ww_HEX41 : std_logic;
SIGNAL ww_HEX42 : std_logic;
SIGNAL ww_HEX44 : std_logic;
SIGNAL ww_HEX45 : std_logic;
SIGNAL ww_HEX46 : std_logic;
SIGNAL ww_HEX50 : std_logic;
SIGNAL ww_HEX51 : std_logic;
SIGNAL ww_HEX52 : std_logic;
SIGNAL ww_HEX53 : std_logic;
SIGNAL ww_HEX54 : std_logic;
SIGNAL ww_HEX55 : std_logic;
SIGNAL ww_HEX56 : std_logic;
SIGNAL ww_HEX43 : std_logic;
SIGNAL ww_HEX10 : std_logic;
SIGNAL ww_HEX11 : std_logic;
SIGNAL ww_HEX12 : std_logic;
SIGNAL ww_HEX13 : std_logic;
SIGNAL ww_HEX14 : std_logic;
SIGNAL ww_HEX15 : std_logic;
SIGNAL ww_HEX16 : std_logic;
SIGNAL ww_HEX30 : std_logic;
SIGNAL ww_HEX31 : std_logic;
SIGNAL ww_HEX32 : std_logic;
SIGNAL ww_HEX33 : std_logic;
SIGNAL ww_HEX34 : std_logic;
SIGNAL ww_HEX35 : std_logic;
SIGNAL ww_HEX36 : std_logic;
SIGNAL ww_S00 : std_logic;
SIGNAL ww_S01 : std_logic;
SIGNAL ww_S02 : std_logic;
SIGNAL ww_S03 : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_A0OUT : std_logic;
SIGNAL ww_A1OUT : std_logic;
SIGNAL ww_A2OUT : std_logic;
SIGNAL ww_A3OUT : std_logic;
SIGNAL ww_B0OUT : std_logic;
SIGNAL ww_B1OUT : std_logic;
SIGNAL ww_B2OUT : std_logic;
SIGNAL ww_B3OUT : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \PB0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX20~output_o\ : std_logic;
SIGNAL \HEX21~output_o\ : std_logic;
SIGNAL \HEX22~output_o\ : std_logic;
SIGNAL \HEX23~output_o\ : std_logic;
SIGNAL \HEX24~output_o\ : std_logic;
SIGNAL \HEX25~output_o\ : std_logic;
SIGNAL \HEX26~output_o\ : std_logic;
SIGNAL \HEX00~output_o\ : std_logic;
SIGNAL \HEX01~output_o\ : std_logic;
SIGNAL \HEX02~output_o\ : std_logic;
SIGNAL \HEX03~output_o\ : std_logic;
SIGNAL \HEX04~output_o\ : std_logic;
SIGNAL \HEX05~output_o\ : std_logic;
SIGNAL \HEX06~output_o\ : std_logic;
SIGNAL \HEX40~output_o\ : std_logic;
SIGNAL \HEX41~output_o\ : std_logic;
SIGNAL \HEX42~output_o\ : std_logic;
SIGNAL \HEX44~output_o\ : std_logic;
SIGNAL \HEX45~output_o\ : std_logic;
SIGNAL \HEX46~output_o\ : std_logic;
SIGNAL \HEX50~output_o\ : std_logic;
SIGNAL \HEX51~output_o\ : std_logic;
SIGNAL \HEX52~output_o\ : std_logic;
SIGNAL \HEX53~output_o\ : std_logic;
SIGNAL \HEX54~output_o\ : std_logic;
SIGNAL \HEX55~output_o\ : std_logic;
SIGNAL \HEX56~output_o\ : std_logic;
SIGNAL \HEX43~output_o\ : std_logic;
SIGNAL \HEX10~output_o\ : std_logic;
SIGNAL \HEX11~output_o\ : std_logic;
SIGNAL \HEX12~output_o\ : std_logic;
SIGNAL \HEX13~output_o\ : std_logic;
SIGNAL \HEX14~output_o\ : std_logic;
SIGNAL \HEX15~output_o\ : std_logic;
SIGNAL \HEX16~output_o\ : std_logic;
SIGNAL \HEX30~output_o\ : std_logic;
SIGNAL \HEX31~output_o\ : std_logic;
SIGNAL \HEX32~output_o\ : std_logic;
SIGNAL \HEX33~output_o\ : std_logic;
SIGNAL \HEX34~output_o\ : std_logic;
SIGNAL \HEX35~output_o\ : std_logic;
SIGNAL \HEX36~output_o\ : std_logic;
SIGNAL \S00~output_o\ : std_logic;
SIGNAL \S01~output_o\ : std_logic;
SIGNAL \S02~output_o\ : std_logic;
SIGNAL \S03~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \A0OUT~output_o\ : std_logic;
SIGNAL \A1OUT~output_o\ : std_logic;
SIGNAL \A2OUT~output_o\ : std_logic;
SIGNAL \A3OUT~output_o\ : std_logic;
SIGNAL \B0OUT~output_o\ : std_logic;
SIGNAL \B1OUT~output_o\ : std_logic;
SIGNAL \B2OUT~output_o\ : std_logic;
SIGNAL \B3OUT~output_o\ : std_logic;
SIGNAL \PB0~input_o\ : std_logic;
SIGNAL \PB0~inputclkctrl_outclk\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;
SIGNAL \inst12|inst4~q\ : std_logic;
SIGNAL \inst90|inst4~q\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst|inst~q\ : std_logic;
SIGNAL \inst12|inst~q\ : std_logic;
SIGNAL \inst90|inst~feeder_combout\ : std_logic;
SIGNAL \inst90|inst~q\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst|inst2~feeder_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst12|inst2~feeder_combout\ : std_logic;
SIGNAL \inst12|inst2~q\ : std_logic;
SIGNAL \inst90|inst2~feeder_combout\ : std_logic;
SIGNAL \inst90|inst2~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst12|inst3~feeder_combout\ : std_logic;
SIGNAL \inst12|inst3~q\ : std_logic;
SIGNAL \inst90|inst3~feeder_combout\ : std_logic;
SIGNAL \inst90|inst3~q\ : std_logic;
SIGNAL \inst4|S0~0_combout\ : std_logic;
SIGNAL \inst4|S1~0_combout\ : std_logic;
SIGNAL \inst4|S2~0_combout\ : std_logic;
SIGNAL \inst4|S3~0_combout\ : std_logic;
SIGNAL \inst4|S4~0_combout\ : std_logic;
SIGNAL \inst4|S5~0_combout\ : std_logic;
SIGNAL \inst4|S6~0_combout\ : std_logic;
SIGNAL \inst3|S0~0_combout\ : std_logic;
SIGNAL \inst3|S1~0_combout\ : std_logic;
SIGNAL \inst3|S2~0_combout\ : std_logic;
SIGNAL \inst3|S3~0_combout\ : std_logic;
SIGNAL \inst3|S4~0_combout\ : std_logic;
SIGNAL \inst3|S5~0_combout\ : std_logic;
SIGNAL \inst3|S6~0_combout\ : std_logic;
SIGNAL \SW4~input_o\ : std_logic;
SIGNAL \inst18|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst18|inst1|inst1~0_combout\ : std_logic;
SIGNAL \inst18|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst18|inst4|inst2~0_combout\ : std_logic;
SIGNAL \inst18|inst2|inst2~1_combout\ : std_logic;
SIGNAL \inst18|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst18|inst|inst1~combout\ : std_logic;
SIGNAL \inst16|inst~q\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \inst9|inst4|inst3~0_combout\ : std_logic;
SIGNAL \inst16|inst2~feeder_combout\ : std_logic;
SIGNAL \inst16|inst2~q\ : std_logic;
SIGNAL \inst1|inst2~feeder_combout\ : std_logic;
SIGNAL \inst1|inst2~q\ : std_logic;
SIGNAL \inst18|inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst18|inst2|inst1~combout\ : std_logic;
SIGNAL \inst9|inst3|inst3~0_combout\ : std_logic;
SIGNAL \inst16|inst4~q\ : std_logic;
SIGNAL \inst1|inst4~q\ : std_logic;
SIGNAL \inst9|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst16|inst3~q\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst18|inst3|inst1~combout\ : std_logic;
SIGNAL \inst9|inst2|inst3~0_combout\ : std_logic;
SIGNAL \inst2|S0~0_combout\ : std_logic;
SIGNAL \inst2|S1~0_combout\ : std_logic;
SIGNAL \inst2|S2~0_combout\ : std_logic;
SIGNAL \inst2|S4~0_combout\ : std_logic;
SIGNAL \inst2|S5~0_combout\ : std_logic;
SIGNAL \inst2|S6~0_combout\ : std_logic;
SIGNAL \inst18|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst6|inst4~q\ : std_logic;
SIGNAL \inst13|inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst6|inst~q\ : std_logic;
SIGNAL \inst6|inst3~feeder_combout\ : std_logic;
SIGNAL \inst6|inst3~q\ : std_logic;
SIGNAL \inst6|inst2~feeder_combout\ : std_logic;
SIGNAL \inst6|inst2~q\ : std_logic;
SIGNAL \inst5|S0~0_combout\ : std_logic;
SIGNAL \inst5|S0~1_combout\ : std_logic;
SIGNAL \inst5|S6~0_combout\ : std_logic;
SIGNAL \inst5|S0~2_combout\ : std_logic;
SIGNAL \inst5|S1~0_combout\ : std_logic;
SIGNAL \inst5|S0~3_combout\ : std_logic;
SIGNAL \inst5|S1~1_combout\ : std_logic;
SIGNAL \inst5|S1~2_combout\ : std_logic;
SIGNAL \inst13|inst2|inst~0_combout\ : std_logic;
SIGNAL \inst5|S0~4_combout\ : std_logic;
SIGNAL \inst5|S2~0_combout\ : std_logic;
SIGNAL \inst5|S0~5_combout\ : std_logic;
SIGNAL \inst5|S3~0_combout\ : std_logic;
SIGNAL \inst5|S3~1_combout\ : std_logic;
SIGNAL \inst5|S4~0_combout\ : std_logic;
SIGNAL \inst5|S4~1_combout\ : std_logic;
SIGNAL \inst5|S5~0_combout\ : std_logic;
SIGNAL \inst5|S5~1_combout\ : std_logic;
SIGNAL \inst5|S6~2_combout\ : std_logic;
SIGNAL \inst5|S6~1_combout\ : std_logic;
SIGNAL \inst5|S6~3_combout\ : std_logic;
SIGNAL \inst2|S3~0_combout\ : std_logic;
SIGNAL \inst11|S0~0_combout\ : std_logic;
SIGNAL \inst11|S1~0_combout\ : std_logic;
SIGNAL \inst11|S2~0_combout\ : std_logic;
SIGNAL \inst11|S3~0_combout\ : std_logic;
SIGNAL \inst11|S4~0_combout\ : std_logic;
SIGNAL \inst11|S5~0_combout\ : std_logic;
SIGNAL \inst11|S6~0_combout\ : std_logic;
SIGNAL \inst15|S0~0_combout\ : std_logic;
SIGNAL \inst15|S1~0_combout\ : std_logic;
SIGNAL \inst15|S2~0_combout\ : std_logic;
SIGNAL \inst15|S3~0_combout\ : std_logic;
SIGNAL \inst15|S4~0_combout\ : std_logic;
SIGNAL \inst15|S5~0_combout\ : std_logic;
SIGNAL \inst15|S6~0_combout\ : std_logic;
SIGNAL \inst18|inst4|inst1~combout\ : std_logic;
SIGNAL \inst5|ALT_INV_S1~2_combout\ : std_logic;
SIGNAL \inst18|inst|ALT_INV_inst1~combout\ : std_logic;
SIGNAL \inst18|inst2|ALT_INV_inst1~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX20 <= ww_HEX20;
ww_A3 <= A3;
ww_A2 <= A2;
ww_A1 <= A1;
ww_A0 <= A0;
ww_PB0 <= PB0;
HEX21 <= ww_HEX21;
HEX22 <= ww_HEX22;
HEX23 <= ww_HEX23;
HEX24 <= ww_HEX24;
HEX25 <= ww_HEX25;
HEX26 <= ww_HEX26;
HEX00 <= ww_HEX00;
HEX01 <= ww_HEX01;
HEX02 <= ww_HEX02;
HEX03 <= ww_HEX03;
HEX04 <= ww_HEX04;
HEX05 <= ww_HEX05;
HEX06 <= ww_HEX06;
HEX40 <= ww_HEX40;
ww_PB1 <= PB1;
ww_SW4 <= SW4;
HEX41 <= ww_HEX41;
HEX42 <= ww_HEX42;
HEX44 <= ww_HEX44;
HEX45 <= ww_HEX45;
HEX46 <= ww_HEX46;
HEX50 <= ww_HEX50;
HEX51 <= ww_HEX51;
HEX52 <= ww_HEX52;
HEX53 <= ww_HEX53;
HEX54 <= ww_HEX54;
HEX55 <= ww_HEX55;
HEX56 <= ww_HEX56;
HEX43 <= ww_HEX43;
HEX10 <= ww_HEX10;
HEX11 <= ww_HEX11;
HEX12 <= ww_HEX12;
HEX13 <= ww_HEX13;
HEX14 <= ww_HEX14;
HEX15 <= ww_HEX15;
HEX16 <= ww_HEX16;
HEX30 <= ww_HEX30;
HEX31 <= ww_HEX31;
HEX32 <= ww_HEX32;
HEX33 <= ww_HEX33;
HEX34 <= ww_HEX34;
HEX35 <= ww_HEX35;
HEX36 <= ww_HEX36;
S00 <= ww_S00;
S01 <= ww_S01;
S02 <= ww_S02;
S03 <= ww_S03;
Cout <= ww_Cout;
A0OUT <= ww_A0OUT;
A1OUT <= ww_A1OUT;
A2OUT <= ww_A2OUT;
A3OUT <= ww_A3OUT;
B0OUT <= ww_B0OUT;
B1OUT <= ww_B1OUT;
B2OUT <= ww_B2OUT;
B3OUT <= ww_B3OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\PB0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PB0~input_o\);
\inst5|ALT_INV_S1~2_combout\ <= NOT \inst5|S1~2_combout\;
\inst18|inst|ALT_INV_inst1~combout\ <= NOT \inst18|inst|inst1~combout\;
\inst18|inst2|ALT_INV_inst1~combout\ <= NOT \inst18|inst2|inst1~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X78_Y44_N9
\HEX20~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S0~0_combout\,
	devoe => ww_devoe,
	o => \HEX20~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX21~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S1~0_combout\,
	devoe => ww_devoe,
	o => \HEX21~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX22~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S2~0_combout\,
	devoe => ww_devoe,
	o => \HEX22~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX23~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S3~0_combout\,
	devoe => ww_devoe,
	o => \HEX23~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX24~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S4~0_combout\,
	devoe => ww_devoe,
	o => \HEX24~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX25~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S5~0_combout\,
	devoe => ww_devoe,
	o => \HEX25~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX26~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|S6~0_combout\,
	devoe => ww_devoe,
	o => \HEX26~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX00~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S0~0_combout\,
	devoe => ww_devoe,
	o => \HEX00~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX01~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S1~0_combout\,
	devoe => ww_devoe,
	o => \HEX01~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX02~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S2~0_combout\,
	devoe => ww_devoe,
	o => \HEX02~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX03~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S3~0_combout\,
	devoe => ww_devoe,
	o => \HEX03~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX04~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S4~0_combout\,
	devoe => ww_devoe,
	o => \HEX04~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX05~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S5~0_combout\,
	devoe => ww_devoe,
	o => \HEX05~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX06~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|S6~0_combout\,
	devoe => ww_devoe,
	o => \HEX06~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX40~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S0~0_combout\,
	devoe => ww_devoe,
	o => \HEX40~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX41~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S1~0_combout\,
	devoe => ww_devoe,
	o => \HEX41~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX42~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S2~0_combout\,
	devoe => ww_devoe,
	o => \HEX42~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX44~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S4~0_combout\,
	devoe => ww_devoe,
	o => \HEX44~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX45~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S5~0_combout\,
	devoe => ww_devoe,
	o => \HEX45~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX46~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S6~0_combout\,
	devoe => ww_devoe,
	o => \HEX46~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX50~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S0~2_combout\,
	devoe => ww_devoe,
	o => \HEX50~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX51~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_S1~2_combout\,
	devoe => ww_devoe,
	o => \HEX51~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX52~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S2~0_combout\,
	devoe => ww_devoe,
	o => \HEX52~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX53~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S3~1_combout\,
	devoe => ww_devoe,
	o => \HEX53~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX54~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S4~1_combout\,
	devoe => ww_devoe,
	o => \HEX54~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX55~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S5~1_combout\,
	devoe => ww_devoe,
	o => \HEX55~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX56~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|S6~3_combout\,
	devoe => ww_devoe,
	o => \HEX56~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX43~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|S3~0_combout\,
	devoe => ww_devoe,
	o => \HEX43~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\HEX10~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S0~0_combout\,
	devoe => ww_devoe,
	o => \HEX10~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX11~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S1~0_combout\,
	devoe => ww_devoe,
	o => \HEX11~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\HEX12~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S2~0_combout\,
	devoe => ww_devoe,
	o => \HEX12~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\HEX13~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S3~0_combout\,
	devoe => ww_devoe,
	o => \HEX13~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX14~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S4~0_combout\,
	devoe => ww_devoe,
	o => \HEX14~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\HEX15~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S5~0_combout\,
	devoe => ww_devoe,
	o => \HEX15~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX16~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|S6~0_combout\,
	devoe => ww_devoe,
	o => \HEX16~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\HEX30~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S0~0_combout\,
	devoe => ww_devoe,
	o => \HEX30~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\HEX31~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S1~0_combout\,
	devoe => ww_devoe,
	o => \HEX31~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\HEX32~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S2~0_combout\,
	devoe => ww_devoe,
	o => \HEX32~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\HEX33~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S3~0_combout\,
	devoe => ww_devoe,
	o => \HEX33~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX34~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S4~0_combout\,
	devoe => ww_devoe,
	o => \HEX34~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\HEX35~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S5~0_combout\,
	devoe => ww_devoe,
	o => \HEX35~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\HEX36~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|S6~0_combout\,
	devoe => ww_devoe,
	o => \HEX36~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\S00~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|inst4|inst1~combout\,
	devoe => ww_devoe,
	o => \S00~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\S01~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \S01~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\S02~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|inst2|ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \S02~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\S03~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|inst|ALT_INV_inst1~combout\,
	devoe => ww_devoe,
	o => \S03~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18|inst|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\A0OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~q\,
	devoe => ww_devoe,
	o => \A0OUT~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\A1OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~q\,
	devoe => ww_devoe,
	o => \A1OUT~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\A2OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~q\,
	devoe => ww_devoe,
	o => \A2OUT~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\A3OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst~q\,
	devoe => ww_devoe,
	o => \A3OUT~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\B0OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst4~q\,
	devoe => ww_devoe,
	o => \B0OUT~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\B1OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst3~q\,
	devoe => ww_devoe,
	o => \B1OUT~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\B2OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst2~q\,
	devoe => ww_devoe,
	o => \B2OUT~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\B3OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst~q\,
	devoe => ww_devoe,
	o => \B3OUT~output_o\);

-- Location: IOIBUF_X78_Y29_N15
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

-- Location: CLKCTRL_G7
\PB0~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PB0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PB0~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\A0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: FF_X71_Y50_N27
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \A0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

-- Location: FF_X71_Y50_N5
\inst12|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst4~q\);

-- Location: FF_X71_Y50_N15
\inst90|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst12|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst4~q\);

-- Location: IOIBUF_X54_Y54_N29
\A3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: FF_X71_Y50_N9
\inst|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \A3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst~q\);

-- Location: FF_X71_Y50_N19
\inst12|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst~q\);

-- Location: LCCOMB_X71_Y50_N22
\inst90|inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst90|inst~feeder_combout\ = \inst12|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst~q\,
	combout => \inst90|inst~feeder_combout\);

-- Location: FF_X71_Y50_N23
\inst90|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst90|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst~q\);

-- Location: IOIBUF_X51_Y54_N1
\A2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X69_Y50_N2
\inst|inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst2~feeder_combout\ = \A2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A2~input_o\,
	combout => \inst|inst2~feeder_combout\);

-- Location: FF_X69_Y50_N3
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X69_Y50_N10
\inst12|inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|inst2~feeder_combout\ = \inst|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst2~q\,
	combout => \inst12|inst2~feeder_combout\);

-- Location: FF_X69_Y50_N11
\inst12|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst12|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst2~q\);

-- Location: LCCOMB_X69_Y50_N28
\inst90|inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst90|inst2~feeder_combout\ = \inst12|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst2~q\,
	combout => \inst90|inst2~feeder_combout\);

-- Location: FF_X69_Y50_N29
\inst90|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst90|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst2~q\);

-- Location: IOIBUF_X51_Y54_N22
\A1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: FF_X72_Y50_N31
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \A1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X72_Y50_N12
\inst12|inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12|inst3~feeder_combout\ = \inst|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~q\,
	combout => \inst12|inst3~feeder_combout\);

-- Location: FF_X72_Y50_N13
\inst12|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst12|inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|inst3~q\);

-- Location: LCCOMB_X72_Y50_N4
\inst90|inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst90|inst3~feeder_combout\ = \inst12|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|inst3~q\,
	combout => \inst90|inst3~feeder_combout\);

-- Location: FF_X72_Y50_N5
\inst90|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst90|inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst90|inst3~q\);

-- Location: LCCOMB_X72_Y50_N10
\inst4|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S0~0_combout\ = (\inst90|inst~q\ & (\inst90|inst4~q\ & (\inst90|inst2~q\ $ (\inst90|inst3~q\)))) # (!\inst90|inst~q\ & (!\inst90|inst3~q\ & (\inst90|inst4~q\ $ (\inst90|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst4~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst2~q\,
	datad => \inst90|inst3~q\,
	combout => \inst4|S0~0_combout\);

-- Location: LCCOMB_X71_Y50_N28
\inst4|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S1~0_combout\ = (\inst90|inst~q\ & ((\inst90|inst4~q\ & ((\inst90|inst3~q\))) # (!\inst90|inst4~q\ & (\inst90|inst2~q\)))) # (!\inst90|inst~q\ & (\inst90|inst2~q\ & (\inst90|inst4~q\ $ (\inst90|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst2~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst4~q\,
	datad => \inst90|inst3~q\,
	combout => \inst4|S1~0_combout\);

-- Location: LCCOMB_X71_Y50_N6
\inst4|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S2~0_combout\ = (\inst90|inst2~q\ & (\inst90|inst~q\ & ((\inst90|inst3~q\) # (!\inst90|inst4~q\)))) # (!\inst90|inst2~q\ & (!\inst90|inst~q\ & (!\inst90|inst4~q\ & \inst90|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst2~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst4~q\,
	datad => \inst90|inst3~q\,
	combout => \inst4|S2~0_combout\);

-- Location: LCCOMB_X71_Y50_N14
\inst4|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S3~0_combout\ = (\inst90|inst3~q\ & ((\inst90|inst2~q\ & ((\inst90|inst4~q\))) # (!\inst90|inst2~q\ & (\inst90|inst~q\ & !\inst90|inst4~q\)))) # (!\inst90|inst3~q\ & (!\inst90|inst~q\ & (\inst90|inst2~q\ $ (\inst90|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst2~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst4~q\,
	datad => \inst90|inst3~q\,
	combout => \inst4|S3~0_combout\);

-- Location: LCCOMB_X72_Y50_N16
\inst4|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S4~0_combout\ = (\inst90|inst3~q\ & (\inst90|inst4~q\ & (!\inst90|inst~q\))) # (!\inst90|inst3~q\ & ((\inst90|inst2~q\ & ((!\inst90|inst~q\))) # (!\inst90|inst2~q\ & (\inst90|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst4~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst2~q\,
	datad => \inst90|inst3~q\,
	combout => \inst4|S4~0_combout\);

-- Location: LCCOMB_X72_Y50_N14
\inst4|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S5~0_combout\ = (\inst90|inst2~q\ & (\inst90|inst4~q\ & (\inst90|inst~q\ $ (\inst90|inst3~q\)))) # (!\inst90|inst2~q\ & (!\inst90|inst~q\ & ((\inst90|inst3~q\) # (\inst90|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst2~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst3~q\,
	datad => \inst90|inst4~q\,
	combout => \inst4|S5~0_combout\);

-- Location: LCCOMB_X72_Y50_N20
\inst4|S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|S6~0_combout\ = (\inst90|inst4~q\ & (!\inst90|inst~q\ & (\inst90|inst2~q\ $ (!\inst90|inst3~q\)))) # (!\inst90|inst4~q\ & (!\inst90|inst3~q\ & (\inst90|inst~q\ $ (!\inst90|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst90|inst4~q\,
	datab => \inst90|inst~q\,
	datac => \inst90|inst2~q\,
	datad => \inst90|inst3~q\,
	combout => \inst4|S6~0_combout\);

-- Location: LCCOMB_X70_Y53_N4
\inst3|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S0~0_combout\ = (\inst|inst2~q\ & (!\inst|inst3~q\ & (\inst|inst~q\ $ (!\inst|inst4~q\)))) # (!\inst|inst2~q\ & (\inst|inst4~q\ & (\inst|inst~q\ $ (!\inst|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S0~0_combout\);

-- Location: LCCOMB_X70_Y53_N30
\inst3|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S1~0_combout\ = (\inst|inst~q\ & ((\inst|inst4~q\ & ((\inst|inst3~q\))) # (!\inst|inst4~q\ & (\inst|inst2~q\)))) # (!\inst|inst~q\ & (\inst|inst2~q\ & (\inst|inst3~q\ $ (\inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S1~0_combout\);

-- Location: LCCOMB_X70_Y53_N12
\inst3|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S2~0_combout\ = (\inst|inst2~q\ & (\inst|inst~q\ & ((\inst|inst3~q\) # (!\inst|inst4~q\)))) # (!\inst|inst2~q\ & (!\inst|inst~q\ & (\inst|inst3~q\ & !\inst|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S2~0_combout\);

-- Location: LCCOMB_X70_Y53_N6
\inst3|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S3~0_combout\ = (\inst|inst3~q\ & ((\inst|inst2~q\ & ((\inst|inst4~q\))) # (!\inst|inst2~q\ & (\inst|inst~q\ & !\inst|inst4~q\)))) # (!\inst|inst3~q\ & (!\inst|inst~q\ & (\inst|inst2~q\ $ (\inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S3~0_combout\);

-- Location: LCCOMB_X70_Y53_N8
\inst3|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S4~0_combout\ = (\inst|inst3~q\ & (((!\inst|inst~q\ & \inst|inst4~q\)))) # (!\inst|inst3~q\ & ((\inst|inst2~q\ & (!\inst|inst~q\)) # (!\inst|inst2~q\ & ((\inst|inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S4~0_combout\);

-- Location: LCCOMB_X70_Y53_N10
\inst3|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S5~0_combout\ = (\inst|inst2~q\ & (\inst|inst4~q\ & (\inst|inst~q\ $ (\inst|inst3~q\)))) # (!\inst|inst2~q\ & (!\inst|inst~q\ & ((\inst|inst3~q\) # (\inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S5~0_combout\);

-- Location: LCCOMB_X70_Y53_N0
\inst3|S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|S6~0_combout\ = (\inst|inst4~q\ & (!\inst|inst~q\ & (\inst|inst2~q\ $ (!\inst|inst3~q\)))) # (!\inst|inst4~q\ & (!\inst|inst3~q\ & (\inst|inst2~q\ $ (!\inst|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst4~q\,
	combout => \inst3|S6~0_combout\);

-- Location: IOIBUF_X78_Y49_N8
\SW4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW4,
	o => \SW4~input_o\);

-- Location: LCCOMB_X70_Y50_N10
\inst18|inst1|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst1|inst3~0_combout\ = \SW4~input_o\ $ (\inst12|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW4~input_o\,
	datad => \inst12|inst~q\,
	combout => \inst18|inst1|inst3~0_combout\);

-- Location: LCCOMB_X70_Y50_N26
\inst18|inst1|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst1|inst1~0_combout\ = \inst12|inst3~q\ $ (\SW4~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst3~q\,
	datac => \SW4~input_o\,
	combout => \inst18|inst1|inst1~0_combout\);

-- Location: LCCOMB_X70_Y50_N14
\inst18|inst2|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst2|inst2~0_combout\ = (\SW4~input_o\ $ (!\inst12|inst2~q\)) # (!\inst|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datac => \SW4~input_o\,
	datad => \inst12|inst2~q\,
	combout => \inst18|inst2|inst2~0_combout\);

-- Location: LCCOMB_X71_Y50_N26
\inst18|inst4|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst4|inst2~0_combout\ = (\inst12|inst4~q\ & (\inst|inst4~q\)) # (!\inst12|inst4~q\ & ((\SW4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|inst4~q\,
	datac => \inst|inst4~q\,
	datad => \SW4~input_o\,
	combout => \inst18|inst4|inst2~0_combout\);

-- Location: LCCOMB_X70_Y50_N20
\inst18|inst2|inst2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst2|inst2~1_combout\ = (\inst18|inst2|inst2~0_combout\ & ((\inst18|inst1|inst1~0_combout\ & (!\inst|inst3~q\ & !\inst18|inst4|inst2~0_combout\)) # (!\inst18|inst1|inst1~0_combout\ & ((!\inst18|inst4|inst2~0_combout\) # (!\inst|inst3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|inst1~0_combout\,
	datab => \inst18|inst2|inst2~0_combout\,
	datac => \inst|inst3~q\,
	datad => \inst18|inst4|inst2~0_combout\,
	combout => \inst18|inst2|inst2~1_combout\);

-- Location: LCCOMB_X70_Y50_N28
\inst18|inst2|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst2|inst3~0_combout\ = (!\inst|inst2~q\ & (\SW4~input_o\ $ (!\inst12|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datac => \SW4~input_o\,
	datad => \inst12|inst2~q\,
	combout => \inst18|inst2|inst3~0_combout\);

-- Location: LCCOMB_X70_Y50_N2
\inst18|inst|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst|inst1~combout\ = \inst18|inst1|inst3~0_combout\ $ (\inst|inst~q\ $ (((\inst18|inst2|inst2~1_combout\) # (\inst18|inst2|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|inst3~0_combout\,
	datab => \inst18|inst2|inst2~1_combout\,
	datac => \inst|inst~q\,
	datad => \inst18|inst2|inst3~0_combout\,
	combout => \inst18|inst|inst1~combout\);

-- Location: FF_X71_Y50_N3
\inst16|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst90|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst~q\);

-- Location: FF_X71_Y50_N25
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst16|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: IOIBUF_X78_Y45_N1
\PB1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB1,
	o => \PB1~input_o\);

-- Location: LCCOMB_X71_Y50_N24
\inst9|inst4|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst4|inst3~0_combout\ = (\PB1~input_o\ & (\inst18|inst|inst1~combout\)) # (!\PB1~input_o\ & ((!\inst1|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst|inst1~combout\,
	datac => \inst1|inst~q\,
	datad => \PB1~input_o\,
	combout => \inst9|inst4|inst3~0_combout\);

-- Location: LCCOMB_X69_Y50_N18
\inst16|inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst16|inst2~feeder_combout\ = \inst90|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst90|inst2~q\,
	combout => \inst16|inst2~feeder_combout\);

-- Location: FF_X69_Y50_N19
\inst16|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst16|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst2~q\);

-- Location: LCCOMB_X69_Y50_N16
\inst1|inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst2~feeder_combout\ = \inst16|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|inst2~q\,
	combout => \inst1|inst2~feeder_combout\);

-- Location: FF_X69_Y50_N17
\inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst1|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~q\);

-- Location: LCCOMB_X70_Y50_N4
\inst18|inst2|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst2|inst1~0_combout\ = \inst|inst2~q\ $ (\SW4~input_o\ $ (\inst12|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datac => \SW4~input_o\,
	datad => \inst12|inst2~q\,
	combout => \inst18|inst2|inst1~0_combout\);

-- Location: LCCOMB_X70_Y50_N12
\inst18|inst2|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst2|inst1~combout\ = \inst18|inst2|inst1~0_combout\ $ (((\inst18|inst1|inst1~0_combout\ & (!\inst|inst3~q\ & !\inst18|inst4|inst2~0_combout\)) # (!\inst18|inst1|inst1~0_combout\ & ((!\inst18|inst4|inst2~0_combout\) # (!\inst|inst3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|inst1~0_combout\,
	datab => \inst18|inst2|inst1~0_combout\,
	datac => \inst|inst3~q\,
	datad => \inst18|inst4|inst2~0_combout\,
	combout => \inst18|inst2|inst1~combout\);

-- Location: LCCOMB_X71_Y50_N18
\inst9|inst3|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst3|inst3~0_combout\ = (\PB1~input_o\ & ((!\inst18|inst2|inst1~combout\))) # (!\PB1~input_o\ & (\inst1|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst18|inst2|inst1~combout\,
	datad => \PB1~input_o\,
	combout => \inst9|inst3|inst3~0_combout\);

-- Location: FF_X71_Y50_N11
\inst16|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst90|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst4~q\);

-- Location: FF_X71_Y50_N31
\inst1|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst16|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst4~q\);

-- Location: LCCOMB_X71_Y50_N30
\inst9|inst1|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst3~0_combout\ = (\PB1~input_o\ & (\inst|inst4~q\ $ ((\inst12|inst4~q\)))) # (!\PB1~input_o\ & (((\inst1|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~q\,
	datab => \inst12|inst4~q\,
	datac => \inst1|inst4~q\,
	datad => \PB1~input_o\,
	combout => \inst9|inst1|inst3~0_combout\);

-- Location: FF_X72_Y50_N15
\inst16|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst90|inst3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|inst3~q\);

-- Location: FF_X72_Y50_N19
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst16|inst3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: LCCOMB_X72_Y50_N30
\inst18|inst3|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst3|inst1~combout\ = \inst12|inst3~q\ $ (\SW4~input_o\ $ (\inst|inst3~q\ $ (\inst18|inst4|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst3~q\,
	datab => \SW4~input_o\,
	datac => \inst|inst3~q\,
	datad => \inst18|inst4|inst2~0_combout\,
	combout => \inst18|inst3|inst1~combout\);

-- Location: LCCOMB_X72_Y50_N18
\inst9|inst2|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst3~0_combout\ = (\PB1~input_o\ & ((\inst18|inst3|inst1~combout\))) # (!\PB1~input_o\ & (\inst1|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PB1~input_o\,
	datac => \inst1|inst3~q\,
	datad => \inst18|inst3|inst1~combout\,
	combout => \inst9|inst2|inst3~0_combout\);

-- Location: LCCOMB_X77_Y42_N8
\inst2|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S0~0_combout\ = (\inst9|inst4|inst3~0_combout\ & (!\inst9|inst2|inst3~0_combout\ & (\inst9|inst3|inst3~0_combout\ $ (\inst9|inst1|inst3~0_combout\)))) # (!\inst9|inst4|inst3~0_combout\ & (\inst9|inst1|inst3~0_combout\ & 
-- (\inst9|inst3|inst3~0_combout\ $ (\inst9|inst2|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S0~0_combout\);

-- Location: LCCOMB_X77_Y42_N30
\inst2|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S1~0_combout\ = (\inst9|inst4|inst3~0_combout\ & (\inst9|inst3|inst3~0_combout\ & (\inst9|inst1|inst3~0_combout\ $ (\inst9|inst2|inst3~0_combout\)))) # (!\inst9|inst4|inst3~0_combout\ & ((\inst9|inst1|inst3~0_combout\ & 
-- ((\inst9|inst2|inst3~0_combout\))) # (!\inst9|inst1|inst3~0_combout\ & (\inst9|inst3|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S1~0_combout\);

-- Location: LCCOMB_X77_Y42_N12
\inst2|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S2~0_combout\ = (\inst9|inst4|inst3~0_combout\ & (!\inst9|inst3|inst3~0_combout\ & (!\inst9|inst1|inst3~0_combout\ & \inst9|inst2|inst3~0_combout\))) # (!\inst9|inst4|inst3~0_combout\ & (\inst9|inst3|inst3~0_combout\ & 
-- ((\inst9|inst2|inst3~0_combout\) # (!\inst9|inst1|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S2~0_combout\);

-- Location: LCCOMB_X77_Y42_N2
\inst2|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S4~0_combout\ = (\inst9|inst2|inst3~0_combout\ & (\inst9|inst4|inst3~0_combout\ & ((\inst9|inst1|inst3~0_combout\)))) # (!\inst9|inst2|inst3~0_combout\ & ((\inst9|inst3|inst3~0_combout\ & (\inst9|inst4|inst3~0_combout\)) # 
-- (!\inst9|inst3|inst3~0_combout\ & ((\inst9|inst1|inst3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S4~0_combout\);

-- Location: LCCOMB_X77_Y42_N4
\inst2|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S5~0_combout\ = (\inst9|inst3|inst3~0_combout\ & (\inst9|inst1|inst3~0_combout\ & (\inst9|inst4|inst3~0_combout\ $ (!\inst9|inst2|inst3~0_combout\)))) # (!\inst9|inst3|inst3~0_combout\ & (\inst9|inst4|inst3~0_combout\ & 
-- ((\inst9|inst1|inst3~0_combout\) # (\inst9|inst2|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S5~0_combout\);

-- Location: LCCOMB_X77_Y42_N10
\inst2|S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S6~0_combout\ = (\inst9|inst1|inst3~0_combout\ & (\inst9|inst4|inst3~0_combout\ & (\inst9|inst3|inst3~0_combout\ $ (!\inst9|inst2|inst3~0_combout\)))) # (!\inst9|inst1|inst3~0_combout\ & (!\inst9|inst2|inst3~0_combout\ & 
-- (\inst9|inst4|inst3~0_combout\ $ (\inst9|inst3|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S6~0_combout\);

-- Location: LCCOMB_X71_Y50_N8
\inst18|inst|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst|inst2~0_combout\ = (\inst|inst~q\ & ((\inst18|inst1|inst3~0_combout\) # ((!\inst18|inst2|inst3~0_combout\ & !\inst18|inst2|inst2~1_combout\)))) # (!\inst|inst~q\ & (!\inst18|inst2|inst3~0_combout\ & (!\inst18|inst2|inst2~1_combout\ & 
-- \inst18|inst1|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst2|inst3~0_combout\,
	datab => \inst18|inst2|inst2~1_combout\,
	datac => \inst|inst~q\,
	datad => \inst18|inst1|inst3~0_combout\,
	combout => \inst18|inst|inst2~0_combout\);

-- Location: FF_X71_Y50_N13
\inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst1|inst4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst4~q\);

-- Location: LCCOMB_X71_Y50_N12
\inst13|inst1|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst1|inst3~0_combout\ = (\PB1~input_o\ & (\inst18|inst|inst2~0_combout\)) # (!\PB1~input_o\ & ((\inst6|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst|inst2~0_combout\,
	datac => \inst6|inst4~q\,
	datad => \PB1~input_o\,
	combout => \inst13|inst1|inst3~0_combout\);

-- Location: FF_X71_Y50_N21
\inst6|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	asdata => \inst1|inst~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst~q\);

-- Location: LCCOMB_X72_Y50_N28
\inst6|inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst3~feeder_combout\ = \inst1|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst3~q\,
	combout => \inst6|inst3~feeder_combout\);

-- Location: FF_X72_Y50_N29
\inst6|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst6|inst3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3~q\);

-- Location: LCCOMB_X69_Y50_N24
\inst6|inst2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|inst2~feeder_combout\ = \inst1|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst2~q\,
	combout => \inst6|inst2~feeder_combout\);

-- Location: FF_X69_Y50_N25
\inst6|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PB0~inputclkctrl_outclk\,
	d => \inst6|inst2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst2~q\);

-- Location: LCCOMB_X72_Y46_N20
\inst5|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S0~0_combout\ = (\inst6|inst~q\ & (!\PB1~input_o\ & (\inst6|inst3~q\ $ (\inst6|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S0~0_combout\);

-- Location: LCCOMB_X72_Y46_N4
\inst5|S0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S0~1_combout\ = (\inst6|inst~q\) # ((\inst6|inst3~q\) # ((\PB1~input_o\) # (!\inst6|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S0~1_combout\);

-- Location: LCCOMB_X72_Y46_N2
\inst5|S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S6~0_combout\ = (!\PB1~input_o\ & ((\inst6|inst~q\) # ((\inst6|inst3~q\) # (\inst6|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S6~0_combout\);

-- Location: LCCOMB_X72_Y46_N30
\inst5|S0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S0~2_combout\ = (\inst13|inst1|inst3~0_combout\ & ((\inst5|S0~0_combout\) # ((!\inst5|S6~0_combout\)))) # (!\inst13|inst1|inst3~0_combout\ & (((!\inst5|S0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datab => \inst5|S0~0_combout\,
	datac => \inst5|S0~1_combout\,
	datad => \inst5|S6~0_combout\,
	combout => \inst5|S0~2_combout\);

-- Location: LCCOMB_X72_Y46_N16
\inst5|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S1~0_combout\ = (\PB1~input_o\) # ((\inst6|inst~q\ & (!\inst6|inst3~q\)) # (!\inst6|inst~q\ & ((\inst6|inst3~q\) # (!\inst6|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S1~0_combout\);

-- Location: LCCOMB_X72_Y46_N14
\inst5|S0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S0~3_combout\ = ((\PB1~input_o\) # (!\inst6|inst2~q\)) # (!\inst6|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S0~3_combout\);

-- Location: LCCOMB_X72_Y50_N6
\inst5|S1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S1~1_combout\ = (\inst6|inst2~q\ & (\inst6|inst3~q\ & !\PB1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst2~q\,
	datab => \inst6|inst3~q\,
	datac => \PB1~input_o\,
	combout => \inst5|S1~1_combout\);

-- Location: LCCOMB_X72_Y46_N28
\inst5|S1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S1~2_combout\ = (\inst13|inst1|inst3~0_combout\ & (\inst5|S1~0_combout\)) # (!\inst13|inst1|inst3~0_combout\ & (((\inst5|S0~3_combout\ & !\inst5|S1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datab => \inst5|S1~0_combout\,
	datac => \inst5|S0~3_combout\,
	datad => \inst5|S1~1_combout\,
	combout => \inst5|S1~2_combout\);

-- Location: LCCOMB_X71_Y46_N24
\inst13|inst2|inst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|inst2|inst~0_combout\ = (\inst6|inst3~q\ & !\PB1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst3~q\,
	datad => \PB1~input_o\,
	combout => \inst13|inst2|inst~0_combout\);

-- Location: LCCOMB_X72_Y46_N6
\inst5|S0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S0~4_combout\ = (!\inst6|inst2~q\ & !\inst6|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst2~q\,
	datad => \inst6|inst~q\,
	combout => \inst5|S0~4_combout\);

-- Location: LCCOMB_X72_Y46_N24
\inst5|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S2~0_combout\ = (\inst13|inst1|inst3~0_combout\ & (\inst13|inst2|inst~0_combout\ & (!\inst5|S0~3_combout\))) # (!\inst13|inst1|inst3~0_combout\ & (((\inst13|inst2|inst~0_combout\ & \inst5|S0~4_combout\)) # (!\inst5|S0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datab => \inst13|inst2|inst~0_combout\,
	datac => \inst5|S0~3_combout\,
	datad => \inst5|S0~4_combout\,
	combout => \inst5|S2~0_combout\);

-- Location: LCCOMB_X72_Y46_N18
\inst5|S0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S0~5_combout\ = (\inst13|inst1|inst3~0_combout\ & ((!\inst5|S6~0_combout\))) # (!\inst13|inst1|inst3~0_combout\ & (!\inst5|S0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datac => \inst5|S0~1_combout\,
	datad => \inst5|S6~0_combout\,
	combout => \inst5|S0~5_combout\);

-- Location: LCCOMB_X72_Y46_N12
\inst5|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S3~0_combout\ = (\inst6|inst~q\ & (\inst6|inst3~q\ & (!\inst6|inst2~q\ & !\PB1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S3~0_combout\);

-- Location: LCCOMB_X72_Y46_N26
\inst5|S3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S3~1_combout\ = (\inst5|S0~5_combout\) # ((\inst13|inst1|inst3~0_combout\ & ((\inst5|S1~1_combout\))) # (!\inst13|inst1|inst3~0_combout\ & (\inst5|S3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datab => \inst5|S0~5_combout\,
	datac => \inst5|S3~0_combout\,
	datad => \inst5|S1~1_combout\,
	combout => \inst5|S3~1_combout\);

-- Location: LCCOMB_X72_Y46_N0
\inst5|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S4~0_combout\ = ((\PB1~input_o\) # ((!\inst6|inst3~q\ & !\inst6|inst2~q\))) # (!\inst6|inst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S4~0_combout\);

-- Location: LCCOMB_X72_Y46_N22
\inst5|S4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S4~1_combout\ = ((\inst13|inst1|inst3~0_combout\ & \inst5|S4~0_combout\)) # (!\inst5|S0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datac => \inst5|S0~1_combout\,
	datad => \inst5|S4~0_combout\,
	combout => \inst5|S4~1_combout\);

-- Location: LCCOMB_X72_Y46_N8
\inst5|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S5~0_combout\ = (\PB1~input_o\) # (\inst6|inst~q\ $ (((\inst6|inst3~q\) # (!\inst6|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst2~q\,
	datad => \PB1~input_o\,
	combout => \inst5|S5~0_combout\);

-- Location: LCCOMB_X72_Y46_N10
\inst5|S5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S5~1_combout\ = (\inst5|S0~4_combout\ & ((\inst13|inst2|inst~0_combout\) # ((\inst5|S5~0_combout\ & \inst13|inst1|inst3~0_combout\)))) # (!\inst5|S0~4_combout\ & (((\inst5|S5~0_combout\ & \inst13|inst1|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|S0~4_combout\,
	datab => \inst13|inst2|inst~0_combout\,
	datac => \inst5|S5~0_combout\,
	datad => \inst13|inst1|inst3~0_combout\,
	combout => \inst5|S5~1_combout\);

-- Location: LCCOMB_X72_Y50_N8
\inst5|S6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S6~2_combout\ = (\inst6|inst~q\ & (!\PB1~input_o\ & (\inst6|inst2~q\ & !\inst6|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst~q\,
	datab => \PB1~input_o\,
	datac => \inst6|inst2~q\,
	datad => \inst6|inst3~q\,
	combout => \inst5|S6~2_combout\);

-- Location: LCCOMB_X71_Y50_N20
\inst5|S6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S6~1_combout\ = (\inst5|S1~1_combout\ & (\inst13|inst1|inst3~0_combout\ & ((\PB1~input_o\) # (!\inst6|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|S1~1_combout\,
	datab => \PB1~input_o\,
	datac => \inst6|inst~q\,
	datad => \inst13|inst1|inst3~0_combout\,
	combout => \inst5|S6~1_combout\);

-- Location: LCCOMB_X72_Y50_N26
\inst5|S6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|S6~3_combout\ = ((\inst5|S6~1_combout\) # ((!\inst13|inst1|inst3~0_combout\ & \inst5|S6~2_combout\))) # (!\inst5|S6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|inst3~0_combout\,
	datab => \inst5|S6~0_combout\,
	datac => \inst5|S6~2_combout\,
	datad => \inst5|S6~1_combout\,
	combout => \inst5|S6~3_combout\);

-- Location: LCCOMB_X77_Y42_N16
\inst2|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|S3~0_combout\ = (\inst9|inst2|inst3~0_combout\ & ((\inst9|inst3|inst3~0_combout\ & ((\inst9|inst1|inst3~0_combout\))) # (!\inst9|inst3|inst3~0_combout\ & (!\inst9|inst4|inst3~0_combout\ & !\inst9|inst1|inst3~0_combout\)))) # 
-- (!\inst9|inst2|inst3~0_combout\ & (\inst9|inst4|inst3~0_combout\ & (\inst9|inst3|inst3~0_combout\ $ (\inst9|inst1|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst4|inst3~0_combout\,
	datab => \inst9|inst3|inst3~0_combout\,
	datac => \inst9|inst1|inst3~0_combout\,
	datad => \inst9|inst2|inst3~0_combout\,
	combout => \inst2|S3~0_combout\);

-- Location: LCCOMB_X70_Y50_N8
\inst11|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S0~0_combout\ = (\inst12|inst2~q\ & (!\inst12|inst3~q\ & (\inst12|inst4~q\ $ (!\inst12|inst~q\)))) # (!\inst12|inst2~q\ & (\inst12|inst4~q\ & (\inst12|inst3~q\ $ (!\inst12|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S0~0_combout\);

-- Location: LCCOMB_X70_Y50_N22
\inst11|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S1~0_combout\ = (\inst12|inst3~q\ & ((\inst12|inst4~q\ & ((\inst12|inst~q\))) # (!\inst12|inst4~q\ & (\inst12|inst2~q\)))) # (!\inst12|inst3~q\ & (\inst12|inst2~q\ & (\inst12|inst4~q\ $ (\inst12|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S1~0_combout\);

-- Location: LCCOMB_X70_Y50_N24
\inst11|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S2~0_combout\ = (\inst12|inst2~q\ & (\inst12|inst~q\ & ((\inst12|inst3~q\) # (!\inst12|inst4~q\)))) # (!\inst12|inst2~q\ & (!\inst12|inst4~q\ & (\inst12|inst3~q\ & !\inst12|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S2~0_combout\);

-- Location: LCCOMB_X70_Y50_N30
\inst11|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S3~0_combout\ = (\inst12|inst3~q\ & ((\inst12|inst2~q\ & (\inst12|inst4~q\)) # (!\inst12|inst2~q\ & (!\inst12|inst4~q\ & \inst12|inst~q\)))) # (!\inst12|inst3~q\ & (!\inst12|inst~q\ & (\inst12|inst2~q\ $ (\inst12|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S3~0_combout\);

-- Location: LCCOMB_X70_Y50_N0
\inst11|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S4~0_combout\ = (\inst12|inst3~q\ & (((\inst12|inst4~q\ & !\inst12|inst~q\)))) # (!\inst12|inst3~q\ & ((\inst12|inst2~q\ & ((!\inst12|inst~q\))) # (!\inst12|inst2~q\ & (\inst12|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S4~0_combout\);

-- Location: LCCOMB_X70_Y50_N18
\inst11|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S5~0_combout\ = (\inst12|inst2~q\ & (\inst12|inst4~q\ & (\inst12|inst3~q\ $ (\inst12|inst~q\)))) # (!\inst12|inst2~q\ & (!\inst12|inst~q\ & ((\inst12|inst4~q\) # (\inst12|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S5~0_combout\);

-- Location: LCCOMB_X70_Y50_N16
\inst11|S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|S6~0_combout\ = (\inst12|inst4~q\ & (!\inst12|inst~q\ & (\inst12|inst2~q\ $ (!\inst12|inst3~q\)))) # (!\inst12|inst4~q\ & (!\inst12|inst3~q\ & (\inst12|inst2~q\ $ (!\inst12|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|inst2~q\,
	datab => \inst12|inst4~q\,
	datac => \inst12|inst3~q\,
	datad => \inst12|inst~q\,
	combout => \inst11|S6~0_combout\);

-- Location: LCCOMB_X72_Y50_N24
\inst15|S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S0~0_combout\ = (\inst16|inst2~q\ & (!\inst16|inst3~q\ & (\inst16|inst4~q\ $ (!\inst16|inst~q\)))) # (!\inst16|inst2~q\ & (\inst16|inst4~q\ & (\inst16|inst3~q\ $ (!\inst16|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4~q\,
	datab => \inst16|inst3~q\,
	datac => \inst16|inst2~q\,
	datad => \inst16|inst~q\,
	combout => \inst15|S0~0_combout\);

-- Location: LCCOMB_X72_Y50_N22
\inst15|S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S1~0_combout\ = (\inst16|inst3~q\ & ((\inst16|inst4~q\ & ((\inst16|inst~q\))) # (!\inst16|inst4~q\ & (\inst16|inst2~q\)))) # (!\inst16|inst3~q\ & (\inst16|inst2~q\ & (\inst16|inst4~q\ $ (\inst16|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4~q\,
	datab => \inst16|inst3~q\,
	datac => \inst16|inst2~q\,
	datad => \inst16|inst~q\,
	combout => \inst15|S1~0_combout\);

-- Location: LCCOMB_X72_Y50_N0
\inst15|S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S2~0_combout\ = (\inst16|inst2~q\ & (\inst16|inst~q\ & ((\inst16|inst3~q\) # (!\inst16|inst4~q\)))) # (!\inst16|inst2~q\ & (!\inst16|inst4~q\ & (\inst16|inst3~q\ & !\inst16|inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst4~q\,
	datab => \inst16|inst3~q\,
	datac => \inst16|inst2~q\,
	datad => \inst16|inst~q\,
	combout => \inst15|S2~0_combout\);

-- Location: LCCOMB_X71_Y50_N10
\inst15|S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S3~0_combout\ = (\inst16|inst3~q\ & ((\inst16|inst2~q\ & (\inst16|inst4~q\)) # (!\inst16|inst2~q\ & (!\inst16|inst4~q\ & \inst16|inst~q\)))) # (!\inst16|inst3~q\ & (!\inst16|inst~q\ & (\inst16|inst2~q\ $ (\inst16|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2~q\,
	datab => \inst16|inst3~q\,
	datac => \inst16|inst4~q\,
	datad => \inst16|inst~q\,
	combout => \inst15|S3~0_combout\);

-- Location: LCCOMB_X71_Y50_N2
\inst15|S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S4~0_combout\ = (\inst16|inst3~q\ & (((!\inst16|inst~q\ & \inst16|inst4~q\)))) # (!\inst16|inst3~q\ & ((\inst16|inst2~q\ & (!\inst16|inst~q\)) # (!\inst16|inst2~q\ & ((\inst16|inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2~q\,
	datab => \inst16|inst3~q\,
	datac => \inst16|inst~q\,
	datad => \inst16|inst4~q\,
	combout => \inst15|S4~0_combout\);

-- Location: LCCOMB_X71_Y50_N16
\inst15|S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S5~0_combout\ = (\inst16|inst2~q\ & (\inst16|inst4~q\ & (\inst16|inst3~q\ $ (\inst16|inst~q\)))) # (!\inst16|inst2~q\ & (!\inst16|inst~q\ & ((\inst16|inst4~q\) # (\inst16|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2~q\,
	datab => \inst16|inst4~q\,
	datac => \inst16|inst3~q\,
	datad => \inst16|inst~q\,
	combout => \inst15|S5~0_combout\);

-- Location: LCCOMB_X71_Y50_N0
\inst15|S6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15|S6~0_combout\ = (\inst16|inst4~q\ & (!\inst16|inst~q\ & (\inst16|inst2~q\ $ (!\inst16|inst3~q\)))) # (!\inst16|inst4~q\ & (!\inst16|inst3~q\ & (\inst16|inst2~q\ $ (!\inst16|inst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|inst2~q\,
	datab => \inst16|inst4~q\,
	datac => \inst16|inst3~q\,
	datad => \inst16|inst~q\,
	combout => \inst15|S6~0_combout\);

-- Location: LCCOMB_X71_Y50_N4
\inst18|inst4|inst1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18|inst4|inst1~combout\ = \inst|inst4~q\ $ (\inst12|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst4~q\,
	datac => \inst12|inst4~q\,
	combout => \inst18|inst4|inst1~combout\);

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

ww_HEX20 <= \HEX20~output_o\;

ww_HEX21 <= \HEX21~output_o\;

ww_HEX22 <= \HEX22~output_o\;

ww_HEX23 <= \HEX23~output_o\;

ww_HEX24 <= \HEX24~output_o\;

ww_HEX25 <= \HEX25~output_o\;

ww_HEX26 <= \HEX26~output_o\;

ww_HEX00 <= \HEX00~output_o\;

ww_HEX01 <= \HEX01~output_o\;

ww_HEX02 <= \HEX02~output_o\;

ww_HEX03 <= \HEX03~output_o\;

ww_HEX04 <= \HEX04~output_o\;

ww_HEX05 <= \HEX05~output_o\;

ww_HEX06 <= \HEX06~output_o\;

ww_HEX40 <= \HEX40~output_o\;

ww_HEX41 <= \HEX41~output_o\;

ww_HEX42 <= \HEX42~output_o\;

ww_HEX44 <= \HEX44~output_o\;

ww_HEX45 <= \HEX45~output_o\;

ww_HEX46 <= \HEX46~output_o\;

ww_HEX50 <= \HEX50~output_o\;

ww_HEX51 <= \HEX51~output_o\;

ww_HEX52 <= \HEX52~output_o\;

ww_HEX53 <= \HEX53~output_o\;

ww_HEX54 <= \HEX54~output_o\;

ww_HEX55 <= \HEX55~output_o\;

ww_HEX56 <= \HEX56~output_o\;

ww_HEX43 <= \HEX43~output_o\;

ww_HEX10 <= \HEX10~output_o\;

ww_HEX11 <= \HEX11~output_o\;

ww_HEX12 <= \HEX12~output_o\;

ww_HEX13 <= \HEX13~output_o\;

ww_HEX14 <= \HEX14~output_o\;

ww_HEX15 <= \HEX15~output_o\;

ww_HEX16 <= \HEX16~output_o\;

ww_HEX30 <= \HEX30~output_o\;

ww_HEX31 <= \HEX31~output_o\;

ww_HEX32 <= \HEX32~output_o\;

ww_HEX33 <= \HEX33~output_o\;

ww_HEX34 <= \HEX34~output_o\;

ww_HEX35 <= \HEX35~output_o\;

ww_HEX36 <= \HEX36~output_o\;

ww_S00 <= \S00~output_o\;

ww_S01 <= \S01~output_o\;

ww_S02 <= \S02~output_o\;

ww_S03 <= \S03~output_o\;

ww_Cout <= \Cout~output_o\;

ww_A0OUT <= \A0OUT~output_o\;

ww_A1OUT <= \A1OUT~output_o\;

ww_A2OUT <= \A2OUT~output_o\;

ww_A3OUT <= \A3OUT~output_o\;

ww_B0OUT <= \B0OUT~output_o\;

ww_B1OUT <= \B1OUT~output_o\;

ww_B2OUT <= \B2OUT~output_o\;

ww_B3OUT <= \B3OUT~output_o\;
END structure;


