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

-- DATE "06/21/2025 20:43:03"

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

ENTITY 	lab07toptemp IS
    PORT (
	CLKMEMORIA : OUT std_logic;
	CLK : IN std_logic;
	Pause : IN std_logic;
	msbcontador : OUT std_logic;
	pause_state : OUT std_logic;
	PISOCONTROL : OUT std_logic;
	DC : OUT std_logic;
	FOUND : OUT std_logic;
	ESTADO_OUT : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	S_state : OUT std_logic_vector(2 DOWNTO 0)
	);
END lab07toptemp;

-- Design Ports Information
-- CLKMEMORIA	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- msbcontador	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause_state	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PISOCONTROL	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOUND	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO_OUT[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO_OUT[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO_OUT[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO_OUT[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_state[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_state[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_state[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pause	=>  Location: PIN_B8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF lab07toptemp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLKMEMORIA : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Pause : std_logic;
SIGNAL ww_msbcontador : std_logic;
SIGNAL ww_pause_state : std_logic;
SIGNAL ww_PISOCONTROL : std_logic;
SIGNAL ww_DC : std_logic;
SIGNAL ww_FOUND : std_logic;
SIGNAL ww_ESTADO_OUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_S_state : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mux1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \CLKMEMORIA~output_o\ : std_logic;
SIGNAL \msbcontador~output_o\ : std_logic;
SIGNAL \pause_state~output_o\ : std_logic;
SIGNAL \PISOCONTROL~output_o\ : std_logic;
SIGNAL \DC~output_o\ : std_logic;
SIGNAL \FOUND~output_o\ : std_logic;
SIGNAL \ESTADO_OUT[3]~output_o\ : std_logic;
SIGNAL \ESTADO_OUT[2]~output_o\ : std_logic;
SIGNAL \ESTADO_OUT[1]~output_o\ : std_logic;
SIGNAL \ESTADO_OUT[0]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \S_state[2]~output_o\ : std_logic;
SIGNAL \S_state[1]~output_o\ : std_logic;
SIGNAL \S_state[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Pause~input_o\ : std_logic;
SIGNAL \inst|last_pause~feeder_combout\ : std_logic;
SIGNAL \inst|last_pause~q\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~0_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~feeder_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~0_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~feeder_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~0_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ : std_logic;
SIGNAL \inst|Mux1~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD0|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD0|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD1|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD1|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD2|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD2|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD3|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_FFD3|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD0|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD0|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD1|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD1|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD2|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD2|Q~q\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD3|Q~0_combout\ : std_logic;
SIGNAL \inst2|inst_contadorf_1|inst_FFD3|Q~q\ : std_logic;
SIGNAL \inst2|latched_carry_value~0_combout\ : std_logic;
SIGNAL \inst2|latched_carry_value~q\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \piso|data_s[7]~0_combout\ : std_logic;
SIGNAL \piso|data_s[6]~1_combout\ : std_logic;
SIGNAL \piso|data_s[5]~2_combout\ : std_logic;
SIGNAL \piso|data_s[4]~3_combout\ : std_logic;
SIGNAL \piso|data_s[3]~4_combout\ : std_logic;
SIGNAL \piso|data_s[2]~5_combout\ : std_logic;
SIGNAL \piso|data_s[1]~6_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \piso|data_s~9_combout\ : std_logic;
SIGNAL \inst|DETECTORCONTROL~0_combout\ : std_logic;
SIGNAL \instor~combout\ : std_logic;
SIGNAL \inst7|enable_input[2]~5_combout\ : std_logic;
SIGNAL \inst7|enable_input[2]~6_combout\ : std_logic;
SIGNAL \inst7|FFD_inst0|Q~0_combout\ : std_logic;
SIGNAL \inst7|FFD_inst2|Q~q\ : std_logic;
SIGNAL \inst7|enable_input[1]~3_combout\ : std_logic;
SIGNAL \inst7|enable_input[1]~4_combout\ : std_logic;
SIGNAL \inst7|FFD_inst1|Q~q\ : std_logic;
SIGNAL \inst7|enable_input[0]~1_combout\ : std_logic;
SIGNAL \inst7|enable_input[0]~2_combout\ : std_logic;
SIGNAL \inst7|FFD_inst0|Q~q\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst|sistema_pausado~0_combout\ : std_logic;
SIGNAL \inst|sistema_pausado~q\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~0_combout\ : std_logic;
SIGNAL \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~combout\ : std_logic;
SIGNAL \inst|DETECTORCONTROL~combout\ : std_logic;
SIGNAL \LED1|S[5]~0_combout\ : std_logic;
SIGNAL \LED1|S[4]~1_combout\ : std_logic;
SIGNAL \LED1|S[3]~2_combout\ : std_logic;
SIGNAL \LED1|S[2]~3_combout\ : std_logic;
SIGNAL \LED1|S[1]~4_combout\ : std_logic;
SIGNAL \LED1|S[0]~5_combout\ : std_logic;
SIGNAL \2|S[5]~0_combout\ : std_logic;
SIGNAL \2|S[4]~1_combout\ : std_logic;
SIGNAL \2|S[3]~2_combout\ : std_logic;
SIGNAL \2|S[2]~3_combout\ : std_logic;
SIGNAL \2|S[1]~4_combout\ : std_logic;
SIGNAL \2|S[0]~5_combout\ : std_logic;
SIGNAL \LED6|S[5]~0_combout\ : std_logic;
SIGNAL \LED6|S~1_combout\ : std_logic;
SIGNAL \LED6|S~2_combout\ : std_logic;
SIGNAL \inst7|enable_input[2]~0_combout\ : std_logic;
SIGNAL \LED6|S~3_combout\ : std_logic;
SIGNAL \LED7|S[6]~0_combout\ : std_logic;
SIGNAL \LED7|S[5]~1_combout\ : std_logic;
SIGNAL \LED7|S[4]~2_combout\ : std_logic;
SIGNAL \LED7|S[3]~3_combout\ : std_logic;
SIGNAL \LED7|S[2]~4_combout\ : std_logic;
SIGNAL \LED7|S[1]~5_combout\ : std_logic;
SIGNAL \LED7|S[0]~6_combout\ : std_logic;
SIGNAL \inst19|S[0]~0_combout\ : std_logic;
SIGNAL \4|S[6]~0_combout\ : std_logic;
SIGNAL \4|S[5]~1_combout\ : std_logic;
SIGNAL \4|S[4]~2_combout\ : std_logic;
SIGNAL \4|S[2]~3_combout\ : std_logic;
SIGNAL \4|S[1]~4_combout\ : std_logic;
SIGNAL \4|S[0]~5_combout\ : std_logic;
SIGNAL \LED5|S[6]~0_combout\ : std_logic;
SIGNAL \LED5|S[5]~1_combout\ : std_logic;
SIGNAL \LED5|S[4]~2_combout\ : std_logic;
SIGNAL \LED5|S[2]~3_combout\ : std_logic;
SIGNAL \LED5|S[1]~4_combout\ : std_logic;
SIGNAL \LED5|S[0]~5_combout\ : std_logic;
SIGNAL \LED5|S\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \4|S\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \LED6|S\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \LED1|S\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \piso|data_s\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rom|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \2|S\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLK~input_o\ : std_logic;
SIGNAL \LED6|ALT_INV_S~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_DETECTORCONTROL~combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CLKMEMORIA <= ww_CLKMEMORIA;
ww_CLK <= CLK;
ww_Pause <= Pause;
msbcontador <= ww_msbcontador;
pause_state <= ww_pause_state;
PISOCONTROL <= ww_PISOCONTROL;
DC <= ww_DC;
FOUND <= ww_FOUND;
ESTADO_OUT <= ww_ESTADO_OUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
S_state <= ww_S_state;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & \inst2|inst_contadorf_1|inst_FFD2|Q~q\ & \inst2|inst_contadorf_1|inst_FFD1|Q~q\ & \inst2|inst_contadorf_1|inst_FFD0|Q~q\ & 
\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & \inst2|inst_contadorf_0|inst_FFD2|Q~q\ & \inst2|inst_contadorf_0|inst_FFD1|Q~q\ & \inst2|inst_contadorf_0|inst_FFD0|Q~q\);

\inst9|altsyncram_component|auto_generated|q_a\(0) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst9|altsyncram_component|auto_generated|q_a\(1) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst9|altsyncram_component|auto_generated|q_a\(2) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst9|altsyncram_component|auto_generated|q_a\(3) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst9|altsyncram_component|auto_generated|q_a\(4) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst9|altsyncram_component|auto_generated|q_a\(5) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst9|altsyncram_component|auto_generated|q_a\(6) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst9|altsyncram_component|auto_generated|q_a\(7) <= \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & \inst2|inst_contadorf_1|inst_FFD2|Q~q\ & \inst2|inst_contadorf_1|inst_FFD1|Q~q\ & \inst2|inst_contadorf_1|inst_FFD0|Q~q\ & 
\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & \inst2|inst_contadorf_0|inst_FFD2|Q~q\ & \inst2|inst_contadorf_0|inst_FFD1|Q~q\ & \inst2|inst_contadorf_0|inst_FFD0|Q~q\);

\rom|altsyncram_component|auto_generated|q_a\(0) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\rom|altsyncram_component|auto_generated|q_a\(1) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\rom|altsyncram_component|auto_generated|q_a\(2) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\rom|altsyncram_component|auto_generated|q_a\(3) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\rom|altsyncram_component|auto_generated|q_a\(4) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\rom|altsyncram_component|auto_generated|q_a\(5) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\rom|altsyncram_component|auto_generated|q_a\(6) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\rom|altsyncram_component|auto_generated|q_a\(7) <= \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst|Mux1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Mux1~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_CLK~inputclkctrl_outclk\ <= NOT \CLK~inputclkctrl_outclk\;
\inst|ALT_INV_Mux1~clkctrl_outclk\ <= NOT \inst|Mux1~clkctrl_outclk\;
\ALT_INV_CLK~input_o\ <= NOT \CLK~input_o\;
\LED6|ALT_INV_S~3_combout\ <= NOT \LED6|S~3_combout\;
\inst|ALT_INV_DETECTORCONTROL~combout\ <= NOT \inst|DETECTORCONTROL~combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y54_N23
\CLKMEMORIA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~combout\,
	devoe => ww_devoe,
	o => \CLKMEMORIA~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\msbcontador~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|latched_carry_value~q\,
	devoe => ww_devoe,
	o => \msbcontador~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\pause_state~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sistema_pausado~q\,
	devoe => ww_devoe,
	o => \pause_state~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\PISOCONTROL~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \PISOCONTROL~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\DC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_DETECTORCONTROL~combout\,
	devoe => ww_devoe,
	o => \DC~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\FOUND~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \FOUND~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\ESTADO_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	devoe => ww_devoe,
	o => \ESTADO_OUT[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\ESTADO_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	devoe => ww_devoe,
	o => \ESTADO_OUT[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\ESTADO_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	devoe => ww_devoe,
	o => \ESTADO_OUT[1]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\ESTADO_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	devoe => ww_devoe,
	o => \ESTADO_OUT[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED1|S[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S[4]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S[3]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \2|S[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED6|S\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED6|S[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED6|S\(4),
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED6|S~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED6|S~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|enable_input[2]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED6|ALT_INV_S~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED7|S[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S\(3),
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \4|S[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S\(3),
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S[1]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED5|S[0]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\S_state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|FFD_inst2|Q~q\,
	devoe => ww_devoe,
	o => \S_state[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\S_state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|FFD_inst1|Q~q\,
	devoe => ww_devoe,
	o => \S_state[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\S_state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|FFD_inst0|Q~q\,
	devoe => ww_devoe,
	o => \S_state[0]~output_o\);

-- Location: IOIBUF_X78_Y29_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N29
\Pause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Pause,
	o => \Pause~input_o\);

-- Location: LCCOMB_X75_Y40_N14
\inst|last_pause~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|last_pause~feeder_combout\ = \Pause~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Pause~input_o\,
	combout => \inst|last_pause~feeder_combout\);

-- Location: FF_X75_Y40_N15
\inst|last_pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst|last_pause~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|last_pause~q\);

-- Location: LCCOMB_X77_Y40_N12
\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~0_combout\ = \inst|sistema_pausado~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sistema_pausado~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	combout => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~0_combout\);

-- Location: LCCOMB_X77_Y40_N28
\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~feeder_combout\ = \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~0_combout\,
	combout => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~feeder_combout\);

-- Location: FF_X77_Y40_N29
\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\);

-- Location: LCCOMB_X77_Y40_N18
\inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & !\inst|sistema_pausado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datad => \inst|sistema_pausado~q\,
	combout => \inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~0_combout\ = \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ $ (((!\inst|sistema_pausado~q\ & (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & !\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sistema_pausado~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~0_combout\);

-- Location: LCCOMB_X77_Y40_N8
\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~feeder_combout\ = \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~0_combout\,
	combout => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~feeder_combout\);

-- Location: FF_X77_Y40_N9
\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\);

-- Location: LCCOMB_X77_Y40_N26
\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~0_combout\ = (\inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0_combout\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\))) # 
-- (!\inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0_combout\ & (((\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_LOGICA_PROX_ESTADO_09|K_OUT[1]~0_combout\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	combout => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~0_combout\);

-- Location: FF_X77_Y40_N27
\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\);

-- Location: CLKCTRL_G5
\inst|Mux1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Mux1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Mux1~clkctrl_outclk\);

-- Location: LCCOMB_X72_Y41_N22
\inst2|inst_contadorf_0|inst_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_0|inst_FFD0|Q~0_combout\ = \inst2|inst_contadorf_0|inst_FFD0|Q~q\ $ (\inst|Mux1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datad => \inst|Mux1~combout\,
	combout => \inst2|inst_contadorf_0|inst_FFD0|Q~0_combout\);

-- Location: FF_X72_Y41_N23
\inst2|inst_contadorf_0|inst_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_0|inst_FFD0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_0|inst_FFD0|Q~q\);

-- Location: LCCOMB_X72_Y41_N28
\inst2|inst_contadorf_0|inst_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_0|inst_FFD1|Q~0_combout\ = \inst2|inst_contadorf_0|inst_FFD1|Q~q\ $ (((\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & \inst|Mux1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	datad => \inst|Mux1~combout\,
	combout => \inst2|inst_contadorf_0|inst_FFD1|Q~0_combout\);

-- Location: FF_X72_Y41_N29
\inst2|inst_contadorf_0|inst_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_0|inst_FFD1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_0|inst_FFD1|Q~q\);

-- Location: LCCOMB_X72_Y41_N20
\inst2|inst_contadorf_0|inst_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_0|inst_FFD2|Q~0_combout\ = \inst2|inst_contadorf_0|inst_FFD2|Q~q\ $ (((\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & \inst|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datad => \inst|Mux1~combout\,
	combout => \inst2|inst_contadorf_0|inst_FFD2|Q~0_combout\);

-- Location: FF_X72_Y41_N21
\inst2|inst_contadorf_0|inst_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_0|inst_FFD2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_0|inst_FFD2|Q~q\);

-- Location: LCCOMB_X72_Y41_N12
\inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\ = (\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & \inst2|inst_contadorf_0|inst_FFD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\);

-- Location: LCCOMB_X72_Y41_N30
\inst2|inst_contadorf_0|inst_FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_0|inst_FFD3|Q~0_combout\ = \inst2|inst_contadorf_0|inst_FFD3|Q~q\ $ (((\inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\ & \inst|Mux1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\,
	datac => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datad => \inst|Mux1~combout\,
	combout => \inst2|inst_contadorf_0|inst_FFD3|Q~0_combout\);

-- Location: FF_X72_Y41_N31
\inst2|inst_contadorf_0|inst_FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_0|inst_FFD3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_0|inst_FFD3|Q~q\);

-- Location: LCCOMB_X72_Y40_N24
\inst2|inst_contadorf_1|inst_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_1|inst_FFD0|Q~0_combout\ = \inst2|inst_contadorf_1|inst_FFD0|Q~q\ $ (((\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\ & \inst|Mux1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\,
	datac => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	datad => \inst|Mux1~combout\,
	combout => \inst2|inst_contadorf_1|inst_FFD0|Q~0_combout\);

-- Location: FF_X72_Y40_N25
\inst2|inst_contadorf_1|inst_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_1|inst_FFD0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_1|inst_FFD0|Q~q\);

-- Location: LCCOMB_X72_Y40_N14
\inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\ = (\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & (\inst|Mux1~combout\ & \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datac => \inst|Mux1~combout\,
	datad => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~0_combout\,
	combout => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\);

-- Location: LCCOMB_X74_Y40_N0
\inst2|inst_contadorf_1|inst_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_1|inst_FFD1|Q~0_combout\ = \inst2|inst_contadorf_1|inst_FFD1|Q~q\ $ (((\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\,
	combout => \inst2|inst_contadorf_1|inst_FFD1|Q~0_combout\);

-- Location: FF_X74_Y40_N1
\inst2|inst_contadorf_1|inst_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_1|inst_FFD1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_1|inst_FFD1|Q~q\);

-- Location: LCCOMB_X74_Y40_N12
\inst2|inst_contadorf_1|inst_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_1|inst_FFD2|Q~0_combout\ = \inst2|inst_contadorf_1|inst_FFD2|Q~q\ $ (((\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\,
	combout => \inst2|inst_contadorf_1|inst_FFD2|Q~0_combout\);

-- Location: FF_X74_Y40_N13
\inst2|inst_contadorf_1|inst_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_1|inst_FFD2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_1|inst_FFD2|Q~q\);

-- Location: LCCOMB_X74_Y40_N10
\inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\ = (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & \inst2|inst_contadorf_1|inst_FFD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	combout => \inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\);

-- Location: LCCOMB_X74_Y40_N28
\inst2|inst_contadorf_1|inst_FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst_contadorf_1|inst_FFD3|Q~0_combout\ = \inst2|inst_contadorf_1|inst_FFD3|Q~q\ $ (((\inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\ & \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\,
	datac => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\,
	combout => \inst2|inst_contadorf_1|inst_FFD3|Q~0_combout\);

-- Location: FF_X74_Y40_N29
\inst2|inst_contadorf_1|inst_FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|inst_contadorf_1|inst_FFD3|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst_contadorf_1|inst_FFD3|Q~q\);

-- Location: M9K_X73_Y41_N0
\inst9|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000100008000300010000500018000700020000900028000B00030000D00038000F00040001100048001300050001500058001700060001900068001B00",
	mem_init1 => X"070001D00078001F000800021000880023000900025000980027000A00029000A8002B000B0002D000B8002F000C00031000C80033000D00035000D80037000E00039000E8003B000F0003D000F8003F00100004100108004300110004500118004700120004900128004B00130004D00138004F00140005100148005300150005500158005700160005900168005B00170005D00178005F001800061001880063001900065001980067001A00069001A8006B001B0006D001B8006F001C00071001C80073001D00075001D80077001E00079001E8007B001F0007D001F8007F00200008100208008300210008500218008700220008900228008B00230008D0",
	mem_init0 => X"0238008F00240009100248009300250009500258009700260009900268009B00270009D00278009F0028000A10028800A30029000A50029800A7002A000A9002A800AB002B000AD002B800AF002C000B1002C800B3002D000B5002D800B7002E000B9002E800BB002F000BD002F800BF0030000C10030800C30031000C50031800C70032000C90032800CB0033000CD0033800CF0034000D10034800D30035000D50035800D70036000D90036800DB0037000DD0037800DF0038000E10038800E30039000E50039800E7003A000E9003A800EB003B000ED003B800EF003C000F1003C800F3003D000F5003D800F7003E000F9003E800FB003F000FD003F800FF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom_decrescente.hex",
	init_file_layout => "port_a",
	logical_ram_name => "rom2:inst9|altsyncram:altsyncram_component|altsyncram_p5s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|ALT_INV_Mux1~clkctrl_outclk\,
	portaaddr => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst9|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X74_Y40_N6
\inst2|latched_carry_value~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|latched_carry_value~0_combout\ = \inst2|latched_carry_value~q\ $ (((\inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\ & (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_LOGICACONTADORF|carry_out~0_combout\,
	datab => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datac => \inst2|latched_carry_value~q\,
	datad => \inst2|inst_contadorf_0|inst_LOGICACONTADORF|carry_out~1_combout\,
	combout => \inst2|latched_carry_value~0_combout\);

-- Location: FF_X74_Y40_N7
\inst2|latched_carry_value\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \inst2|latched_carry_value~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latched_carry_value~q\);

-- Location: LCCOMB_X56_Y51_N24
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

-- Location: M9K_X73_Y40_N0
\rom|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0034000CF00280007F002C000EF0018000F0001400090000C0004F00200002F00040000F0034400CE00284007E002C400EE0018400F1001440091000C4004E00",
	mem_init1 => X"204002E00044000E0034800CD00288007D002C800ED0018800F2001480092000C8004D00208002D00048000D0034C00CC0028C007C002CC00EC0018C00F30014C0093000CC004C0020C002C0004C000C0035000CB00290007B002D000EB0019000F4001500094000D0004B00210002B00050000B0035400CA00294007A002D400EA0019400F5001540095000D4004A00214002A00054000A0035800C9002980079002D800E90019800F6001580096000D800490021800290005800090035C00C80029C0078002DC00E80019C00F70015C0097000DC00480021C00280005C00080036000C7002A00077002E000E7001A000F8001600098000E000470022000270",
	mem_init0 => X"006000070036400C6002A40076002E400E6001A400F9001640099000E400460022400260006400060036800C5002A80075002E800E5001A800FA00168009A000E800450022800250006800050036C00C4002AC0074002EC00E4001AC00FB0016C009B000EC00440022C00240006C00040037000C3002B00073002F000E3001B000FC00170009C000F000430023000230007000030037400C2002B40072002F400E2001B400FD00174009D000F400420023400220007400020037800C1002B80071002F800E1001B800FE00178009E000F800410023800210007800010037C00C0002BC0070002FC00E0001BC00FF0017C009F000FC00400023C00200007C0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ROM_256_8.hex",
	init_file_layout => "port_a",
	logical_ram_name => "rom:rom|altsyncram:altsyncram_component|altsyncram_1sp3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst|ALT_INV_Mux1~clkctrl_outclk\,
	clr0 => GND,
	portaaddr => \rom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \rom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X74_Y40_N18
\piso|data_s[7]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[7]~0_combout\ = (\inst2|latched_carry_value~q\ & (\inst9|altsyncram_component|auto_generated|q_a\(7))) # (!\inst2|latched_carry_value~q\ & ((\rom|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst2|latched_carry_value~q\,
	datad => \rom|altsyncram_component|auto_generated|q_a\(7),
	combout => \piso|data_s[7]~0_combout\);

-- Location: LCCOMB_X74_Y40_N22
\piso|data_s[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[6]~1_combout\ = (\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(6)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latched_carry_value~q\,
	datab => \rom|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(6),
	combout => \piso|data_s[6]~1_combout\);

-- Location: LCCOMB_X74_Y40_N4
\piso|data_s[5]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[5]~2_combout\ = (\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst2|latched_carry_value~q\,
	datad => \inst9|altsyncram_component|auto_generated|q_a\(5),
	combout => \piso|data_s[5]~2_combout\);

-- Location: LCCOMB_X74_Y40_N8
\piso|data_s[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[4]~3_combout\ = (\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latched_carry_value~q\,
	datab => \rom|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(4),
	combout => \piso|data_s[4]~3_combout\);

-- Location: LCCOMB_X74_Y40_N26
\piso|data_s[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[3]~4_combout\ = (\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latched_carry_value~q\,
	datab => \rom|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(3),
	combout => \piso|data_s[3]~4_combout\);

-- Location: LCCOMB_X74_Y40_N14
\piso|data_s[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[2]~5_combout\ = (\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(2)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latched_carry_value~q\,
	datab => \rom|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(2),
	combout => \piso|data_s[2]~5_combout\);

-- Location: LCCOMB_X74_Y40_N30
\piso|data_s[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s[1]~6_combout\ = (\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst2|latched_carry_value~q\,
	datad => \inst9|altsyncram_component|auto_generated|q_a\(1),
	combout => \piso|data_s[1]~6_combout\);

-- Location: LCCOMB_X77_Y40_N16
\inst|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & !\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y40_N20
\piso|data_s~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \piso|data_s~9_combout\ = (\inst|Mux0~0_combout\ & ((\inst2|latched_carry_value~q\ & ((\inst9|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst2|latched_carry_value~q\ & (\rom|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latched_carry_value~q\,
	datab => \inst|Mux0~0_combout\,
	datac => \rom|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst9|altsyncram_component|auto_generated|q_a\(0),
	combout => \piso|data_s~9_combout\);

-- Location: LCCOMB_X77_Y40_N24
\inst|DETECTORCONTROL~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DETECTORCONTROL~0_combout\ = (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	combout => \inst|DETECTORCONTROL~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
instor : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instor~combout\ = (\inst|Mux0~0_combout\) # ((!\inst|DETECTORCONTROL~0_combout\ & !\inst|sistema_pausado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|DETECTORCONTROL~0_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst|sistema_pausado~q\,
	combout => \instor~combout\);

-- Location: FF_X74_Y40_N21
\piso|data_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s~9_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(0));

-- Location: FF_X74_Y40_N31
\piso|data_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[1]~6_combout\,
	asdata => \piso|data_s\(0),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(1));

-- Location: FF_X74_Y40_N15
\piso|data_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[2]~5_combout\,
	asdata => \piso|data_s\(1),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(2));

-- Location: FF_X74_Y40_N27
\piso|data_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[3]~4_combout\,
	asdata => \piso|data_s\(2),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(3));

-- Location: FF_X74_Y40_N9
\piso|data_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[4]~3_combout\,
	asdata => \piso|data_s\(3),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(4));

-- Location: FF_X74_Y40_N5
\piso|data_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[5]~2_combout\,
	asdata => \piso|data_s\(4),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(5));

-- Location: FF_X74_Y40_N23
\piso|data_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[6]~1_combout\,
	asdata => \piso|data_s\(5),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(6));

-- Location: FF_X74_Y40_N19
\piso|data_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~inputclkctrl_outclk\,
	d => \piso|data_s[7]~0_combout\,
	asdata => \piso|data_s\(6),
	sload => \inst|ALT_INV_Mux0~0_combout\,
	ena => \instor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \piso|data_s\(7));

-- Location: LCCOMB_X76_Y40_N22
\inst7|enable_input[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[2]~5_combout\ = (\inst7|FFD_inst1|Q~q\ & ((\inst7|FFD_inst2|Q~q\ & (!\inst7|FFD_inst0|Q~q\ & \piso|data_s\(7))) # (!\inst7|FFD_inst2|Q~q\ & (\inst7|FFD_inst0|Q~q\ & !\piso|data_s\(7))))) # (!\inst7|FFD_inst1|Q~q\ & 
-- (\inst7|FFD_inst2|Q~q\ & (\inst7|FFD_inst0|Q~q\ $ (!\piso|data_s\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|FFD_inst1|Q~q\,
	datab => \inst7|FFD_inst2|Q~q\,
	datac => \inst7|FFD_inst0|Q~q\,
	datad => \piso|data_s\(7),
	combout => \inst7|enable_input[2]~5_combout\);

-- Location: LCCOMB_X76_Y40_N24
\inst7|enable_input[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[2]~6_combout\ = (\inst7|enable_input[2]~5_combout\ & ((\inst|Mux1~0_combout\) # (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datac => \inst7|enable_input[2]~5_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst7|enable_input[2]~6_combout\);

-- Location: LCCOMB_X77_Y40_N0
\inst7|FFD_inst0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|FFD_inst0|Q~0_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & (\inst|Mux1~0_combout\ $ (((\inst|DETECTORCONTROL~0_combout\) # (\inst|sistema_pausado~q\))))) # (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & (!\inst|DETECTORCONTROL~0_combout\ & 
-- ((!\inst|sistema_pausado~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datab => \inst|DETECTORCONTROL~0_combout\,
	datac => \inst|Mux1~0_combout\,
	datad => \inst|sistema_pausado~q\,
	combout => \inst7|FFD_inst0|Q~0_combout\);

-- Location: FF_X76_Y40_N25
\inst7|FFD_inst2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|enable_input[2]~6_combout\,
	ena => \inst7|FFD_inst0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|FFD_inst2|Q~q\);

-- Location: LCCOMB_X76_Y40_N26
\inst7|enable_input[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[1]~3_combout\ = (\inst7|FFD_inst2|Q~q\ & (\inst7|FFD_inst1|Q~q\ $ (((\inst7|FFD_inst0|Q~q\ & \piso|data_s\(7)))))) # (!\inst7|FFD_inst2|Q~q\ & (!\piso|data_s\(7) & (\inst7|FFD_inst1|Q~q\ $ (\inst7|FFD_inst0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|FFD_inst1|Q~q\,
	datab => \inst7|FFD_inst2|Q~q\,
	datac => \inst7|FFD_inst0|Q~q\,
	datad => \piso|data_s\(7),
	combout => \inst7|enable_input[1]~3_combout\);

-- Location: LCCOMB_X76_Y40_N10
\inst7|enable_input[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[1]~4_combout\ = (\inst7|enable_input[1]~3_combout\ & ((\inst|Mux1~0_combout\) # (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datac => \inst7|enable_input[1]~3_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst7|enable_input[1]~4_combout\);

-- Location: FF_X76_Y40_N11
\inst7|FFD_inst1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|enable_input[1]~4_combout\,
	ena => \inst7|FFD_inst0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|FFD_inst1|Q~q\);

-- Location: LCCOMB_X76_Y40_N30
\inst7|enable_input[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[0]~1_combout\ = (\inst7|FFD_inst1|Q~q\ & ((\piso|data_s\(7)) # ((!\inst7|FFD_inst2|Q~q\ & !\inst7|FFD_inst0|Q~q\)))) # (!\inst7|FFD_inst1|Q~q\ & ((\inst7|FFD_inst2|Q~q\ & (!\inst7|FFD_inst0|Q~q\)) # (!\inst7|FFD_inst2|Q~q\ & 
-- ((\piso|data_s\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|FFD_inst1|Q~q\,
	datab => \inst7|FFD_inst2|Q~q\,
	datac => \inst7|FFD_inst0|Q~q\,
	datad => \piso|data_s\(7),
	combout => \inst7|enable_input[0]~1_combout\);

-- Location: LCCOMB_X76_Y40_N12
\inst7|enable_input[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[0]~2_combout\ = (\inst7|enable_input[0]~1_combout\ & ((\inst|Mux1~0_combout\) # (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datac => \inst7|enable_input[0]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst7|enable_input[0]~2_combout\);

-- Location: FF_X76_Y40_N13
\inst7|FFD_inst0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst7|enable_input[0]~2_combout\,
	ena => \inst7|FFD_inst0|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|FFD_inst0|Q~q\);

-- Location: LCCOMB_X76_Y40_N20
\inst7|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|FFD_inst0|Q~q\ & (\inst7|FFD_inst1|Q~q\ & \inst7|FFD_inst2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst1|Q~q\,
	datad => \inst7|FFD_inst2|Q~q\,
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y40_N14
\inst|sistema_pausado~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sistema_pausado~0_combout\ = (\inst|sistema_pausado~q\ & ((\inst|last_pause~q\) # ((!\Pause~input_o\)))) # (!\inst|sistema_pausado~q\ & ((\inst7|Equal0~0_combout\) # ((!\inst|last_pause~q\ & \Pause~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|last_pause~q\,
	datab => \Pause~input_o\,
	datac => \inst|sistema_pausado~q\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst|sistema_pausado~0_combout\);

-- Location: FF_X76_Y40_N15
\inst|sistema_pausado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	d => \inst|sistema_pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sistema_pausado~q\);

-- Location: LCCOMB_X77_Y40_N14
\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~0_combout\ = \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ $ (((!\inst|sistema_pausado~q\ & (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sistema_pausado~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	combout => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~0_combout\);

-- Location: FF_X77_Y40_N13
\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLK~input_o\,
	asdata => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\);

-- Location: LCCOMB_X77_Y40_N4
\inst|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\) # (((\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\) # (\inst|sistema_pausado~q\)) # (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datad => \inst|sistema_pausado~q\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y40_N30
\inst|Mux1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Mux1~combout\ = LCELL((!\inst|Mux1~0_combout\ & \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux1~0_combout\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \inst|Mux1~combout\);

-- Location: LCCOMB_X76_Y40_N16
\inst|DETECTORCONTROL\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|DETECTORCONTROL~combout\ = (\inst|sistema_pausado~q\) # (\inst|DETECTORCONTROL~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sistema_pausado~q\,
	datad => \inst|DETECTORCONTROL~0_combout\,
	combout => \inst|DETECTORCONTROL~combout\);

-- Location: LCCOMB_X74_Y41_N4
\LED1|S[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S\(6) = (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD2|Q~q\ $ (!\inst2|inst_contadorf_0|inst_FFD1|Q~q\)))) # (!\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & 
-- (!\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD3|Q~q\ $ (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S\(6));

-- Location: LCCOMB_X74_Y40_N2
\LED1|S[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S[5]~0_combout\ = (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD3|Q~q\ $ (((\inst2|inst_contadorf_0|inst_FFD1|Q~q\) # (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\))))) # (!\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & 
-- (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & \inst2|inst_contadorf_0|inst_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S[5]~0_combout\);

-- Location: LCCOMB_X74_Y41_N14
\LED1|S[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S[4]~1_combout\ = (\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD0|Q~q\)))) # (!\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & 
-- (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\)) # (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S[4]~1_combout\);

-- Location: LCCOMB_X72_Y41_N24
\LED1|S[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S[3]~2_combout\ = (\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD2|Q~q\)) # (!\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & 
-- \inst2|inst_contadorf_0|inst_FFD3|Q~q\)))) # (!\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ $ (\inst2|inst_contadorf_0|inst_FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S[3]~2_combout\);

-- Location: LCCOMB_X72_Y41_N26
\LED1|S[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S[2]~3_combout\ = (\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD1|Q~q\) # (!\inst2|inst_contadorf_0|inst_FFD0|Q~q\)))) # (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & 
-- (!\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & \inst2|inst_contadorf_0|inst_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S[2]~3_combout\);

-- Location: LCCOMB_X74_Y41_N12
\LED1|S[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S[1]~4_combout\ = (\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & ((\inst2|inst_contadorf_0|inst_FFD1|Q~q\))) # (!\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD2|Q~q\)))) # 
-- (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ $ (\inst2|inst_contadorf_0|inst_FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S[1]~4_combout\);

-- Location: LCCOMB_X72_Y41_N0
\LED1|S[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED1|S[0]~5_combout\ = (\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & (!\inst2|inst_contadorf_0|inst_FFD1|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ $ (!\inst2|inst_contadorf_0|inst_FFD3|Q~q\)))) # (!\inst2|inst_contadorf_0|inst_FFD2|Q~q\ & 
-- (\inst2|inst_contadorf_0|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_0|inst_FFD3|Q~q\ $ (!\inst2|inst_contadorf_0|inst_FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_0|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_0|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_0|inst_FFD3|Q~q\,
	datad => \inst2|inst_contadorf_0|inst_FFD1|Q~q\,
	combout => \LED1|S[0]~5_combout\);

-- Location: LCCOMB_X72_Y41_N14
\2|S[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S\(6) = (\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ $ (!\inst2|inst_contadorf_1|inst_FFD1|Q~q\)))) # (!\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & 
-- (!\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ $ (!\inst2|inst_contadorf_1|inst_FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	combout => \2|S\(6));

-- Location: LCCOMB_X72_Y41_N16
\2|S[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S[5]~0_combout\ = (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ $ (\inst2|inst_contadorf_1|inst_FFD1|Q~q\)))) # (!\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & 
-- (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD1|Q~q\) # (\inst2|inst_contadorf_1|inst_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	combout => \2|S[5]~0_combout\);

-- Location: LCCOMB_X72_Y41_N18
\2|S[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S[4]~1_combout\ = (\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD0|Q~q\)))) # (!\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & 
-- (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\)) # (!\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	combout => \2|S[4]~1_combout\);

-- Location: LCCOMB_X72_Y41_N8
\2|S[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S[3]~2_combout\ = (\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD0|Q~q\))) # (!\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & 
-- !\inst2|inst_contadorf_1|inst_FFD0|Q~q\)))) # (!\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ $ (\inst2|inst_contadorf_1|inst_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	combout => \2|S[3]~2_combout\);

-- Location: LCCOMB_X74_Y41_N6
\2|S[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S[2]~3_combout\ = (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD1|Q~q\) # (!\inst2|inst_contadorf_1|inst_FFD0|Q~q\)))) # (!\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & 
-- (!\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & \inst2|inst_contadorf_1|inst_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	combout => \2|S[2]~3_combout\);

-- Location: LCCOMB_X74_Y41_N20
\2|S[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S[1]~4_combout\ = (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & ((\inst2|inst_contadorf_1|inst_FFD1|Q~q\))) # (!\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD2|Q~q\)))) # 
-- (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD0|Q~q\ $ (\inst2|inst_contadorf_1|inst_FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	combout => \2|S[1]~4_combout\);

-- Location: LCCOMB_X72_Y41_N10
\2|S[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \2|S[0]~5_combout\ = (\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD0|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ $ (\inst2|inst_contadorf_1|inst_FFD1|Q~q\)))) # (!\inst2|inst_contadorf_1|inst_FFD3|Q~q\ & 
-- (!\inst2|inst_contadorf_1|inst_FFD1|Q~q\ & (\inst2|inst_contadorf_1|inst_FFD2|Q~q\ $ (\inst2|inst_contadorf_1|inst_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst_contadorf_1|inst_FFD3|Q~q\,
	datab => \inst2|inst_contadorf_1|inst_FFD2|Q~q\,
	datac => \inst2|inst_contadorf_1|inst_FFD1|Q~q\,
	datad => \inst2|inst_contadorf_1|inst_FFD0|Q~q\,
	combout => \2|S[0]~5_combout\);

-- Location: LCCOMB_X77_Y43_N16
\LED6|S[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED6|S\(6) = (\inst7|FFD_inst2|Q~q\ & (\inst7|FFD_inst0|Q~q\ & \inst7|FFD_inst1|Q~q\)) # (!\inst7|FFD_inst2|Q~q\ & ((!\inst7|FFD_inst1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \LED6|S\(6));

-- Location: LCCOMB_X77_Y43_N18
\LED6|S[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED6|S[5]~0_combout\ = (\inst7|FFD_inst0|Q~q\ & ((\inst7|FFD_inst1|Q~q\) # (!\inst7|FFD_inst2|Q~q\))) # (!\inst7|FFD_inst0|Q~q\ & (!\inst7|FFD_inst2|Q~q\ & \inst7|FFD_inst1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \LED6|S[5]~0_combout\);

-- Location: LCCOMB_X77_Y43_N12
\LED6|S[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED6|S\(4) = (\inst7|FFD_inst0|Q~q\) # ((\inst7|FFD_inst2|Q~q\ & !\inst7|FFD_inst1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \LED6|S\(4));

-- Location: LCCOMB_X77_Y43_N2
\LED6|S~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED6|S~1_combout\ = (\inst7|FFD_inst0|Q~q\ & (\inst7|FFD_inst2|Q~q\ $ (!\inst7|FFD_inst1|Q~q\))) # (!\inst7|FFD_inst0|Q~q\ & (\inst7|FFD_inst2|Q~q\ & !\inst7|FFD_inst1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \LED6|S~1_combout\);

-- Location: LCCOMB_X77_Y43_N28
\LED6|S~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED6|S~2_combout\ = (!\inst7|FFD_inst0|Q~q\ & (!\inst7|FFD_inst2|Q~q\ & \inst7|FFD_inst1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \LED6|S~2_combout\);

-- Location: LCCOMB_X77_Y43_N26
\inst7|enable_input[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|enable_input[2]~0_combout\ = (\inst7|FFD_inst2|Q~q\ & (\inst7|FFD_inst0|Q~q\ $ (\inst7|FFD_inst1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \inst7|enable_input[2]~0_combout\);

-- Location: LCCOMB_X77_Y43_N0
\LED6|S~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED6|S~3_combout\ = (\inst7|FFD_inst1|Q~q\) # (\inst7|FFD_inst0|Q~q\ $ (!\inst7|FFD_inst2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|FFD_inst0|Q~q\,
	datac => \inst7|FFD_inst2|Q~q\,
	datad => \inst7|FFD_inst1|Q~q\,
	combout => \LED6|S~3_combout\);

-- Location: LCCOMB_X77_Y42_N0
\LED7|S[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[6]~0_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\)))) # (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & 
-- (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	combout => \LED7|S[6]~0_combout\);

-- Location: LCCOMB_X77_Y41_N16
\LED7|S[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[5]~1_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\) # (!\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\)))) # (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & 
-- (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \LED7|S[5]~1_combout\);

-- Location: LCCOMB_X77_Y41_N14
\LED7|S[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[4]~2_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (((\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & !\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\)))) # (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & 
-- ((!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))) # (!\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \LED7|S[4]~2_combout\);

-- Location: LCCOMB_X77_Y42_N14
\LED7|S[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[3]~3_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\))) # (!\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & 
-- !\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\)))) # (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ $ (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	combout => \LED7|S[3]~3_combout\);

-- Location: LCCOMB_X77_Y39_N8
\LED7|S[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[2]~4_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\) # (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\)))) # (!\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & 
-- (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & !\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \LED7|S[2]~4_combout\);

-- Location: LCCOMB_X77_Y39_N14
\LED7|S[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[1]~5_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & ((\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))) # (!\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\)))) # 
-- (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ $ (\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \LED7|S[1]~5_combout\);

-- Location: LCCOMB_X77_Y39_N4
\LED7|S[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED7|S[0]~6_combout\ = (\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & (!\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\)))) # (!\inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\ & 
-- (\inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\ & (\inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\ $ (!\inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst_CONTADOR9|U_FF_JK_1|Q_reg~q\,
	datab => \inst|inst_CONTADOR9|U_FF_JK_0|Q_reg~q\,
	datac => \inst|inst_CONTADOR9|U_FF_JK_2|Q_reg~q\,
	datad => \inst|inst_CONTADOR9|U_FF_JK_3|Q_reg~q\,
	combout => \LED7|S[0]~6_combout\);

-- Location: LCCOMB_X74_Y40_N24
\inst19|S[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19|S[0]~0_combout\ = (\inst2|latched_carry_value~q\ & (\inst9|altsyncram_component|auto_generated|q_a\(0))) # (!\inst2|latched_carry_value~q\ & ((\rom|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|altsyncram_component|auto_generated|q_a\(0),
	datac => \rom|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst2|latched_carry_value~q\,
	combout => \inst19|S[0]~0_combout\);

-- Location: LCCOMB_X75_Y40_N12
\4|S[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S[6]~0_combout\ = (\inst19|S[0]~0_combout\ & (!\piso|data_s[3]~4_combout\ & (\piso|data_s[2]~5_combout\ $ (!\piso|data_s[1]~6_combout\)))) # (!\inst19|S[0]~0_combout\ & (!\piso|data_s[1]~6_combout\ & (\piso|data_s[2]~5_combout\ $ 
-- (!\piso|data_s[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S[6]~0_combout\);

-- Location: LCCOMB_X75_Y40_N10
\4|S[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S[5]~1_combout\ = (\piso|data_s[2]~5_combout\ & (\inst19|S[0]~0_combout\ & (\piso|data_s[3]~4_combout\ $ (\piso|data_s[1]~6_combout\)))) # (!\piso|data_s[2]~5_combout\ & (!\piso|data_s[3]~4_combout\ & ((\inst19|S[0]~0_combout\) # 
-- (\piso|data_s[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S[5]~1_combout\);

-- Location: LCCOMB_X75_Y40_N0
\4|S[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S[4]~2_combout\ = (\piso|data_s[1]~6_combout\ & (((\inst19|S[0]~0_combout\ & !\piso|data_s[3]~4_combout\)))) # (!\piso|data_s[1]~6_combout\ & ((\piso|data_s[2]~5_combout\ & ((!\piso|data_s[3]~4_combout\))) # (!\piso|data_s[2]~5_combout\ & 
-- (\inst19|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S[4]~2_combout\);

-- Location: LCCOMB_X75_Y40_N22
\4|S[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S\(3) = (\piso|data_s[1]~6_combout\ & ((\piso|data_s[2]~5_combout\ & (\inst19|S[0]~0_combout\)) # (!\piso|data_s[2]~5_combout\ & (!\inst19|S[0]~0_combout\ & \piso|data_s[3]~4_combout\)))) # (!\piso|data_s[1]~6_combout\ & (!\piso|data_s[3]~4_combout\ & 
-- (\piso|data_s[2]~5_combout\ $ (\inst19|S[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S\(3));

-- Location: LCCOMB_X75_Y40_N24
\4|S[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S[2]~3_combout\ = (\piso|data_s[2]~5_combout\ & (\piso|data_s[3]~4_combout\ & ((\piso|data_s[1]~6_combout\) # (!\inst19|S[0]~0_combout\)))) # (!\piso|data_s[2]~5_combout\ & (!\inst19|S[0]~0_combout\ & (!\piso|data_s[3]~4_combout\ & 
-- \piso|data_s[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S[2]~3_combout\);

-- Location: LCCOMB_X75_Y40_N6
\4|S[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S[1]~4_combout\ = (\piso|data_s[3]~4_combout\ & ((\inst19|S[0]~0_combout\ & ((\piso|data_s[1]~6_combout\))) # (!\inst19|S[0]~0_combout\ & (\piso|data_s[2]~5_combout\)))) # (!\piso|data_s[3]~4_combout\ & (\piso|data_s[2]~5_combout\ & 
-- (\inst19|S[0]~0_combout\ $ (\piso|data_s[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S[1]~4_combout\);

-- Location: LCCOMB_X75_Y40_N4
\4|S[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \4|S[0]~5_combout\ = (\piso|data_s[2]~5_combout\ & (!\piso|data_s[1]~6_combout\ & (\inst19|S[0]~0_combout\ $ (!\piso|data_s[3]~4_combout\)))) # (!\piso|data_s[2]~5_combout\ & (\inst19|S[0]~0_combout\ & (\piso|data_s[3]~4_combout\ $ 
-- (!\piso|data_s[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[2]~5_combout\,
	datab => \inst19|S[0]~0_combout\,
	datac => \piso|data_s[3]~4_combout\,
	datad => \piso|data_s[1]~6_combout\,
	combout => \4|S[0]~5_combout\);

-- Location: LCCOMB_X77_Y37_N8
\LED5|S[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S[6]~0_combout\ = (\piso|data_s[4]~3_combout\ & (!\piso|data_s[7]~0_combout\ & (\piso|data_s[6]~1_combout\ $ (!\piso|data_s[5]~2_combout\)))) # (!\piso|data_s[4]~3_combout\ & (!\piso|data_s[5]~2_combout\ & (\piso|data_s[6]~1_combout\ $ 
-- (!\piso|data_s[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[6]~1_combout\,
	datab => \piso|data_s[7]~0_combout\,
	datac => \piso|data_s[4]~3_combout\,
	datad => \piso|data_s[5]~2_combout\,
	combout => \LED5|S[6]~0_combout\);

-- Location: LCCOMB_X77_Y37_N6
\LED5|S[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S[5]~1_combout\ = (\piso|data_s[6]~1_combout\ & (\piso|data_s[4]~3_combout\ & (\piso|data_s[7]~0_combout\ $ (\piso|data_s[5]~2_combout\)))) # (!\piso|data_s[6]~1_combout\ & (!\piso|data_s[7]~0_combout\ & ((\piso|data_s[4]~3_combout\) # 
-- (\piso|data_s[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[6]~1_combout\,
	datab => \piso|data_s[7]~0_combout\,
	datac => \piso|data_s[4]~3_combout\,
	datad => \piso|data_s[5]~2_combout\,
	combout => \LED5|S[5]~1_combout\);

-- Location: LCCOMB_X77_Y37_N12
\LED5|S[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S[4]~2_combout\ = (\piso|data_s[5]~2_combout\ & (((!\piso|data_s[7]~0_combout\ & \piso|data_s[4]~3_combout\)))) # (!\piso|data_s[5]~2_combout\ & ((\piso|data_s[6]~1_combout\ & (!\piso|data_s[7]~0_combout\)) # (!\piso|data_s[6]~1_combout\ & 
-- ((\piso|data_s[4]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[6]~1_combout\,
	datab => \piso|data_s[7]~0_combout\,
	datac => \piso|data_s[4]~3_combout\,
	datad => \piso|data_s[5]~2_combout\,
	combout => \LED5|S[4]~2_combout\);

-- Location: LCCOMB_X77_Y37_N10
\LED5|S[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S\(3) = (\piso|data_s[5]~2_combout\ & ((\piso|data_s[6]~1_combout\ & ((\piso|data_s[4]~3_combout\))) # (!\piso|data_s[6]~1_combout\ & (\piso|data_s[7]~0_combout\ & !\piso|data_s[4]~3_combout\)))) # (!\piso|data_s[5]~2_combout\ & 
-- (!\piso|data_s[7]~0_combout\ & (\piso|data_s[6]~1_combout\ $ (\piso|data_s[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[6]~1_combout\,
	datab => \piso|data_s[7]~0_combout\,
	datac => \piso|data_s[4]~3_combout\,
	datad => \piso|data_s[5]~2_combout\,
	combout => \LED5|S\(3));

-- Location: LCCOMB_X77_Y37_N16
\LED5|S[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S[2]~3_combout\ = (\piso|data_s[6]~1_combout\ & (\piso|data_s[7]~0_combout\ & ((\piso|data_s[5]~2_combout\) # (!\piso|data_s[4]~3_combout\)))) # (!\piso|data_s[6]~1_combout\ & (!\piso|data_s[7]~0_combout\ & (!\piso|data_s[4]~3_combout\ & 
-- \piso|data_s[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[6]~1_combout\,
	datab => \piso|data_s[7]~0_combout\,
	datac => \piso|data_s[4]~3_combout\,
	datad => \piso|data_s[5]~2_combout\,
	combout => \LED5|S[2]~3_combout\);

-- Location: LCCOMB_X74_Y40_N16
\LED5|S[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S[1]~4_combout\ = (\piso|data_s[5]~2_combout\ & ((\piso|data_s[4]~3_combout\ & (\piso|data_s[7]~0_combout\)) # (!\piso|data_s[4]~3_combout\ & ((\piso|data_s[6]~1_combout\))))) # (!\piso|data_s[5]~2_combout\ & (\piso|data_s[6]~1_combout\ & 
-- (\piso|data_s[4]~3_combout\ $ (\piso|data_s[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[4]~3_combout\,
	datab => \piso|data_s[5]~2_combout\,
	datac => \piso|data_s[7]~0_combout\,
	datad => \piso|data_s[6]~1_combout\,
	combout => \LED5|S[1]~4_combout\);

-- Location: LCCOMB_X77_Y37_N2
\LED5|S[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LED5|S[0]~5_combout\ = (\piso|data_s[6]~1_combout\ & (!\piso|data_s[5]~2_combout\ & (\piso|data_s[7]~0_combout\ $ (!\piso|data_s[4]~3_combout\)))) # (!\piso|data_s[6]~1_combout\ & (\piso|data_s[4]~3_combout\ & (\piso|data_s[7]~0_combout\ $ 
-- (!\piso|data_s[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \piso|data_s[6]~1_combout\,
	datab => \piso|data_s[7]~0_combout\,
	datac => \piso|data_s[4]~3_combout\,
	datad => \piso|data_s[5]~2_combout\,
	combout => \LED5|S[0]~5_combout\);

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

ww_CLKMEMORIA <= \CLKMEMORIA~output_o\;

ww_msbcontador <= \msbcontador~output_o\;

ww_pause_state <= \pause_state~output_o\;

ww_PISOCONTROL <= \PISOCONTROL~output_o\;

ww_DC <= \DC~output_o\;

ww_FOUND <= \FOUND~output_o\;

ww_ESTADO_OUT(3) <= \ESTADO_OUT[3]~output_o\;

ww_ESTADO_OUT(2) <= \ESTADO_OUT[2]~output_o\;

ww_ESTADO_OUT(1) <= \ESTADO_OUT[1]~output_o\;

ww_ESTADO_OUT(0) <= \ESTADO_OUT[0]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_S_state(2) <= \S_state[2]~output_o\;

ww_S_state(1) <= \S_state[1]~output_o\;

ww_S_state(0) <= \S_state[0]~output_o\;
END structure;


