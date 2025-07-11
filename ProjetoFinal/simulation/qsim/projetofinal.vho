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

-- DATE "06/24/2025 20:40:09"

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

ENTITY 	arquivotopo IS
    PORT (
	DEZENAA : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Correction : IN std_logic;
	RESET : IN std_logic;
	placarA : OUT std_logic_vector(7 DOWNTO 0);
	placarB : OUT std_logic_vector(7 DOWNTO 0);
	Set_A : OUT std_logic_vector(3 DOWNTO 0);
	Set_B : OUT std_logic_vector(3 DOWNTO 0);
	UNIDADEA : OUT std_logic_vector(3 DOWNTO 0)
	);
END arquivotopo;

-- Design Ports Information
-- DEZENAA[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZENAA[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZENAA[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DEZENAA[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarA[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[7]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[2]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- placarB[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_A[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_A[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_A[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_A[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_B[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_B[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_B[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set_B[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNIDADEA[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNIDADEA[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNIDADEA[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UNIDADEA[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Correction	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF arquivotopo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DEZENAA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Correction : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_placarA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_placarB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Set_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Set_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_UNIDADEA : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \DEZENAA[3]~output_o\ : std_logic;
SIGNAL \DEZENAA[2]~output_o\ : std_logic;
SIGNAL \DEZENAA[1]~output_o\ : std_logic;
SIGNAL \DEZENAA[0]~output_o\ : std_logic;
SIGNAL \placarA[7]~output_o\ : std_logic;
SIGNAL \placarA[6]~output_o\ : std_logic;
SIGNAL \placarA[5]~output_o\ : std_logic;
SIGNAL \placarA[4]~output_o\ : std_logic;
SIGNAL \placarA[3]~output_o\ : std_logic;
SIGNAL \placarA[2]~output_o\ : std_logic;
SIGNAL \placarA[1]~output_o\ : std_logic;
SIGNAL \placarA[0]~output_o\ : std_logic;
SIGNAL \placarB[7]~output_o\ : std_logic;
SIGNAL \placarB[6]~output_o\ : std_logic;
SIGNAL \placarB[5]~output_o\ : std_logic;
SIGNAL \placarB[4]~output_o\ : std_logic;
SIGNAL \placarB[3]~output_o\ : std_logic;
SIGNAL \placarB[2]~output_o\ : std_logic;
SIGNAL \placarB[1]~output_o\ : std_logic;
SIGNAL \placarB[0]~output_o\ : std_logic;
SIGNAL \Set_A[3]~output_o\ : std_logic;
SIGNAL \Set_A[2]~output_o\ : std_logic;
SIGNAL \Set_A[1]~output_o\ : std_logic;
SIGNAL \Set_A[0]~output_o\ : std_logic;
SIGNAL \Set_B[3]~output_o\ : std_logic;
SIGNAL \Set_B[2]~output_o\ : std_logic;
SIGNAL \Set_B[1]~output_o\ : std_logic;
SIGNAL \Set_B[0]~output_o\ : std_logic;
SIGNAL \UNIDADEA[3]~output_o\ : std_logic;
SIGNAL \UNIDADEA[2]~output_o\ : std_logic;
SIGNAL \UNIDADEA[1]~output_o\ : std_logic;
SIGNAL \UNIDADEA[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|scoreA[0]~7_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst|timeB_prev~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|timeB_prev~q\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|scoreB[0]~11_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \Correction~input_o\ : std_logic;
SIGNAL \inst|scoreB[6]~33_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~25_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~26_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~34_combout\ : std_logic;
SIGNAL \inst|setBs[1]~0_combout\ : std_logic;
SIGNAL \inst|setBs[0]~2_combout\ : std_logic;
SIGNAL \inst|setBs[1]~1_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|timeA_prev~0_combout\ : std_logic;
SIGNAL \inst|timeA_prev~q\ : std_logic;
SIGNAL \inst|scoreB[6]~27_combout\ : std_logic;
SIGNAL \inst|setAs[1]~0_combout\ : std_logic;
SIGNAL \inst|setAs[1]~1_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|scoreA~21_combout\ : std_logic;
SIGNAL \inst|scoreA~22_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|LessThan5~1_cout\ : std_logic;
SIGNAL \inst|LessThan5~3_cout\ : std_logic;
SIGNAL \inst|LessThan5~5_cout\ : std_logic;
SIGNAL \inst|LessThan5~7_cout\ : std_logic;
SIGNAL \inst|LessThan5~9_cout\ : std_logic;
SIGNAL \inst|LessThan5~11_cout\ : std_logic;
SIGNAL \inst|LessThan5~12_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|scoreA~23_combout\ : std_logic;
SIGNAL \inst|setAs[0]~2_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~28_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~29_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~30_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~31_combout\ : std_logic;
SIGNAL \inst|scoreB[6]~32_combout\ : std_logic;
SIGNAL \inst|scoreB[0]~12\ : std_logic;
SIGNAL \inst|scoreB[1]~13_combout\ : std_logic;
SIGNAL \inst|scoreB[1]~14\ : std_logic;
SIGNAL \inst|scoreB[2]~15_combout\ : std_logic;
SIGNAL \inst|scoreB[2]~16\ : std_logic;
SIGNAL \inst|scoreB[3]~17_combout\ : std_logic;
SIGNAL \inst|scoreB[3]~18\ : std_logic;
SIGNAL \inst|scoreB[4]~19_combout\ : std_logic;
SIGNAL \inst|scoreB[4]~20\ : std_logic;
SIGNAL \inst|scoreB[5]~21_combout\ : std_logic;
SIGNAL \inst|scoreB[5]~22\ : std_logic;
SIGNAL \inst|scoreB[6]~23_combout\ : std_logic;
SIGNAL \inst|scoreA~24_combout\ : std_logic;
SIGNAL \inst|scoreA~25_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|LessThan9~1_cout\ : std_logic;
SIGNAL \inst|LessThan9~3_cout\ : std_logic;
SIGNAL \inst|LessThan9~5_cout\ : std_logic;
SIGNAL \inst|LessThan9~7_cout\ : std_logic;
SIGNAL \inst|LessThan9~9_cout\ : std_logic;
SIGNAL \inst|LessThan9~11_cout\ : std_logic;
SIGNAL \inst|LessThan9~12_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|scoreA~26_combout\ : std_logic;
SIGNAL \inst|scoreA~41_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~28_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~29_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~30_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~31_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~32_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~33_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~34_combout\ : std_logic;
SIGNAL \inst|scoreA[6]~35_combout\ : std_logic;
SIGNAL \inst|scoreA[0]~8\ : std_logic;
SIGNAL \inst|scoreA[1]~9_combout\ : std_logic;
SIGNAL \inst|scoreA~40_combout\ : std_logic;
SIGNAL \inst|scoreA[1]~10\ : std_logic;
SIGNAL \inst|scoreA[2]~11_combout\ : std_logic;
SIGNAL \inst|scoreA~39_combout\ : std_logic;
SIGNAL \inst|scoreA[2]~12\ : std_logic;
SIGNAL \inst|scoreA[3]~13_combout\ : std_logic;
SIGNAL \inst|scoreA~38_combout\ : std_logic;
SIGNAL \inst|scoreA[3]~14\ : std_logic;
SIGNAL \inst|scoreA[4]~15_combout\ : std_logic;
SIGNAL \inst|scoreA~37_combout\ : std_logic;
SIGNAL \inst|scoreA[4]~16\ : std_logic;
SIGNAL \inst|scoreA[5]~17_combout\ : std_logic;
SIGNAL \inst|scoreA~36_combout\ : std_logic;
SIGNAL \inst|scoreA[5]~18\ : std_logic;
SIGNAL \inst|scoreA[6]~19_combout\ : std_logic;
SIGNAL \inst|scoreA~27_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[59]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[56]~3_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~65_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~66_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~67_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[59]~68_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod1|auto_generated|divider|divider|StageOut[57]~70_combout\ : std_logic;
SIGNAL \inst|scoreA\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|scoreB\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|setAs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|setBs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Correction~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DEZENAA <= ww_DEZENAA;
ww_CLK <= CLK;
ww_A <= A;
ww_B <= B;
ww_Correction <= Correction;
ww_RESET <= RESET;
placarA <= ww_placarA;
placarB <= ww_placarB;
Set_A <= ww_Set_A;
Set_B <= ww_Set_B;
UNIDADEA <= ww_UNIDADEA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\ALT_INV_Correction~input_o\ <= NOT \Correction~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X51_Y54_N30
\DEZENAA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod0|auto_generated|divider|divider|StageOut[59]~0_combout\,
	devoe => ww_devoe,
	o => \DEZENAA[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\DEZENAA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\,
	devoe => ww_devoe,
	o => \DEZENAA[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\DEZENAA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\,
	devoe => ww_devoe,
	o => \DEZENAA[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\DEZENAA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod0|auto_generated|divider|divider|StageOut[56]~3_combout\,
	devoe => ww_devoe,
	o => \DEZENAA[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\placarA[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \placarA[7]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\placarA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(6),
	devoe => ww_devoe,
	o => \placarA[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\placarA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(5),
	devoe => ww_devoe,
	o => \placarA[5]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\placarA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(4),
	devoe => ww_devoe,
	o => \placarA[4]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\placarA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(3),
	devoe => ww_devoe,
	o => \placarA[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\placarA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(2),
	devoe => ww_devoe,
	o => \placarA[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\placarA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(1),
	devoe => ww_devoe,
	o => \placarA[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\placarA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(0),
	devoe => ww_devoe,
	o => \placarA[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\placarB[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \placarB[7]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\placarB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(6),
	devoe => ww_devoe,
	o => \placarB[6]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\placarB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(5),
	devoe => ww_devoe,
	o => \placarB[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\placarB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(4),
	devoe => ww_devoe,
	o => \placarB[4]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\placarB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(3),
	devoe => ww_devoe,
	o => \placarB[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\placarB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(2),
	devoe => ww_devoe,
	o => \placarB[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\placarB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(1),
	devoe => ww_devoe,
	o => \placarB[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\placarB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreB\(0),
	devoe => ww_devoe,
	o => \placarB[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Set_A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Set_A[3]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\Set_A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Set_A[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Set_A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|setAs\(1),
	devoe => ww_devoe,
	o => \Set_A[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\Set_A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|setAs\(0),
	devoe => ww_devoe,
	o => \Set_A[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\Set_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Set_B[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Set_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Set_B[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Set_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|setBs\(1),
	devoe => ww_devoe,
	o => \Set_B[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Set_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|setBs\(0),
	devoe => ww_devoe,
	o => \Set_B[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\UNIDADEA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod1|auto_generated|divider|divider|StageOut[59]~68_combout\,
	devoe => ww_devoe,
	o => \UNIDADEA[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\UNIDADEA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\,
	devoe => ww_devoe,
	o => \UNIDADEA[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\UNIDADEA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mod1|auto_generated|divider|divider|StageOut[57]~70_combout\,
	devoe => ww_devoe,
	o => \UNIDADEA[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\UNIDADEA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|scoreA\(0),
	devoe => ww_devoe,
	o => \UNIDADEA[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X46_Y37_N8
\inst|scoreA[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[0]~7_combout\ = \inst|scoreA\(0) $ (VCC)
-- \inst|scoreA[0]~8\ = CARRY(\inst|scoreA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(0),
	datad => VCC,
	combout => \inst|scoreA[0]~7_combout\,
	cout => \inst|scoreA[0]~8\);

-- Location: LCCOMB_X47_Y37_N2
\inst|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = \inst|scoreA\(0) $ (VCC)
-- \inst|Add3~1\ = CARRY(\inst|scoreA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: IOIBUF_X49_Y54_N29
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X45_Y37_N4
\inst|timeB_prev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|timeB_prev~0_combout\ = !\B~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B~input_o\,
	combout => \inst|timeB_prev~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X45_Y37_N5
\inst|timeB_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|timeB_prev~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|timeB_prev~q\);

-- Location: LCCOMB_X45_Y37_N30
\inst|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (!\inst|timeB_prev~q\ & !\B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|timeB_prev~q\,
	datad => \B~input_o\,
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X45_Y37_N14
\inst|scoreB[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[0]~11_combout\ = \inst|scoreB\(0) $ (VCC)
-- \inst|scoreB[0]~12\ = CARRY(\inst|scoreB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(0),
	datad => VCC,
	combout => \inst|scoreB[0]~11_combout\,
	cout => \inst|scoreB[0]~12\);

-- Location: LCCOMB_X44_Y37_N2
\inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|scoreB\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|scoreB\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: IOIBUF_X31_Y39_N1
\Correction~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Correction,
	o => \Correction~input_o\);

-- Location: LCCOMB_X45_Y37_N8
\inst|scoreB[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~33_combout\ = (\B~input_o\) # ((\inst|timeB_prev~q\) # ((!\Correction~input_o\ & !\inst|scoreA~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \Correction~input_o\,
	datac => \inst|timeB_prev~q\,
	datad => \inst|scoreA~26_combout\,
	combout => \inst|scoreB[6]~33_combout\);

-- Location: LCCOMB_X45_Y37_N12
\inst|scoreB[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~25_combout\ = (\inst|scoreB\(2)) # ((\inst|scoreB\(1)) # ((\inst|scoreB\(0)) # (\inst|scoreB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(2),
	datab => \inst|scoreB\(1),
	datac => \inst|scoreB\(0),
	datad => \inst|scoreB\(3),
	combout => \inst|scoreB[6]~25_combout\);

-- Location: LCCOMB_X45_Y37_N10
\inst|scoreB[6]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~26_combout\ = ((\inst|scoreB\(5)) # ((\inst|scoreB\(4)) # (\inst|scoreB[6]~25_combout\))) # (!\Correction~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Correction~input_o\,
	datab => \inst|scoreB\(5),
	datac => \inst|scoreB\(4),
	datad => \inst|scoreB[6]~25_combout\,
	combout => \inst|scoreB[6]~26_combout\);

-- Location: LCCOMB_X45_Y37_N6
\inst|scoreB[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~34_combout\ = (!\B~input_o\ & (!\inst|timeB_prev~q\ & ((\inst|scoreB\(6)) # (\inst|scoreB[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \inst|timeB_prev~q\,
	datac => \inst|scoreB\(6),
	datad => \inst|scoreB[6]~26_combout\,
	combout => \inst|scoreB[6]~34_combout\);

-- Location: LCCOMB_X43_Y37_N20
\inst|setBs[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|setBs[1]~0_combout\ = (((\Correction~input_o\) # (\inst|scoreA~26_combout\)) # (!\inst|process_0~2_combout\)) # (!\inst|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst|process_0~2_combout\,
	datac => \Correction~input_o\,
	datad => \inst|scoreA~26_combout\,
	combout => \inst|setBs[1]~0_combout\);

-- Location: LCCOMB_X43_Y37_N10
\inst|setBs[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|setBs[0]~2_combout\ = \inst|setBs\(0) $ (!\inst|setBs[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|setBs\(0),
	datad => \inst|setBs[1]~0_combout\,
	combout => \inst|setBs[0]~2_combout\);

-- Location: FF_X43_Y37_N11
\inst|setBs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|setBs[0]~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|setBs\(0));

-- Location: LCCOMB_X43_Y37_N28
\inst|setBs[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|setBs[1]~1_combout\ = (\inst|setBs\(1)) # ((\inst|setBs\(0) & !\inst|setBs[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|setBs\(0),
	datac => \inst|setBs\(1),
	datad => \inst|setBs[1]~0_combout\,
	combout => \inst|setBs[1]~1_combout\);

-- Location: FF_X43_Y37_N29
\inst|setBs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|setBs[1]~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|setBs\(1));

-- Location: IOIBUF_X34_Y39_N29
\A~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X42_Y37_N16
\inst|timeA_prev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|timeA_prev~0_combout\ = !\A~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~input_o\,
	combout => \inst|timeA_prev~0_combout\);

-- Location: FF_X42_Y37_N17
\inst|timeA_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|timeA_prev~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|timeA_prev~q\);

-- Location: LCCOMB_X42_Y37_N6
\inst|scoreB[6]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~27_combout\ = (!\A~input_o\ & (!\Correction~input_o\ & !\inst|timeA_prev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \Correction~input_o\,
	datad => \inst|timeA_prev~q\,
	combout => \inst|scoreB[6]~27_combout\);

-- Location: LCCOMB_X43_Y37_N6
\inst|setAs[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|setAs[1]~0_combout\ = ((\inst|scoreA~23_combout\) # (!\inst|scoreB[6]~27_combout\)) # (!\inst|process_0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_0~2_combout\,
	datac => \inst|scoreA~23_combout\,
	datad => \inst|scoreB[6]~27_combout\,
	combout => \inst|setAs[1]~0_combout\);

-- Location: LCCOMB_X43_Y37_N24
\inst|setAs[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|setAs[1]~1_combout\ = (\inst|setAs\(1)) # ((\inst|setAs\(0) & !\inst|setAs[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|setAs\(0),
	datac => \inst|setAs\(1),
	datad => \inst|setAs[1]~0_combout\,
	combout => \inst|setAs[1]~1_combout\);

-- Location: FF_X43_Y37_N25
\inst|setAs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|setAs[1]~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|setAs\(1));

-- Location: LCCOMB_X43_Y37_N4
\inst|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\inst|setBs\(0) & (\inst|setAs\(1) & (!\inst|setAs\(0) & \inst|setBs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|setBs\(0),
	datab => \inst|setAs\(1),
	datac => \inst|setAs\(0),
	datad => \inst|setBs\(1),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X42_Y37_N12
\inst|scoreA~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~21_combout\ = (\inst|scoreA\(3) & (!\inst|scoreA\(4) & ((!\inst|process_0~0_combout\) # (!\inst|scoreA\(1))))) # (!\inst|scoreA\(3) & (((!\inst|process_0~0_combout\)) # (!\inst|scoreA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(3),
	datab => \inst|scoreA\(4),
	datac => \inst|scoreA\(1),
	datad => \inst|process_0~0_combout\,
	combout => \inst|scoreA~21_combout\);

-- Location: LCCOMB_X42_Y37_N14
\inst|scoreA~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~22_combout\ = (!\inst|scoreA\(5) & ((\inst|scoreA~21_combout\) # ((!\inst|scoreA\(4) & !\inst|scoreA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(5),
	datab => \inst|scoreA\(4),
	datac => \inst|scoreA\(2),
	datad => \inst|scoreA~21_combout\,
	combout => \inst|scoreA~22_combout\);

-- Location: LCCOMB_X44_Y37_N4
\inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|scoreB\(1) & (!\inst|Add1~1\)) # (!\inst|scoreB\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|scoreB\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X44_Y37_N6
\inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|scoreB\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|scoreB\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|scoreB\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X44_Y37_N8
\inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|scoreB\(3) & (!\inst|Add1~5\)) # (!\inst|scoreB\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|scoreB\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X44_Y37_N10
\inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|scoreB\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|scoreB\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|scoreB\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X44_Y37_N12
\inst|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|scoreB\(5) & (!\inst|Add1~9\)) # (!\inst|scoreB\(5) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|scoreB\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X44_Y37_N14
\inst|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|scoreB\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|scoreB\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|scoreB\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X44_Y37_N18
\inst|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~1_cout\ = CARRY((!\inst|scoreA\(0) & \inst|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(0),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cout => \inst|LessThan5~1_cout\);

-- Location: LCCOMB_X44_Y37_N20
\inst|LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~3_cout\ = CARRY((\inst|scoreA\(1) & ((!\inst|LessThan5~1_cout\) # (!\inst|Add1~2_combout\))) # (!\inst|scoreA\(1) & (!\inst|Add1~2_combout\ & !\inst|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(1),
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|LessThan5~1_cout\,
	cout => \inst|LessThan5~3_cout\);

-- Location: LCCOMB_X44_Y37_N22
\inst|LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~5_cout\ = CARRY((\inst|Add1~4_combout\ & ((!\inst|LessThan5~3_cout\) # (!\inst|scoreA\(2)))) # (!\inst|Add1~4_combout\ & (!\inst|scoreA\(2) & !\inst|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|scoreA\(2),
	datad => VCC,
	cin => \inst|LessThan5~3_cout\,
	cout => \inst|LessThan5~5_cout\);

-- Location: LCCOMB_X44_Y37_N24
\inst|LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~7_cout\ = CARRY((\inst|scoreA\(3) & ((!\inst|LessThan5~5_cout\) # (!\inst|Add1~6_combout\))) # (!\inst|scoreA\(3) & (!\inst|Add1~6_combout\ & !\inst|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(3),
	datab => \inst|Add1~6_combout\,
	datad => VCC,
	cin => \inst|LessThan5~5_cout\,
	cout => \inst|LessThan5~7_cout\);

-- Location: LCCOMB_X44_Y37_N26
\inst|LessThan5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~9_cout\ = CARRY((\inst|Add1~8_combout\ & ((!\inst|LessThan5~7_cout\) # (!\inst|scoreA\(4)))) # (!\inst|Add1~8_combout\ & (!\inst|scoreA\(4) & !\inst|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|scoreA\(4),
	datad => VCC,
	cin => \inst|LessThan5~7_cout\,
	cout => \inst|LessThan5~9_cout\);

-- Location: LCCOMB_X44_Y37_N28
\inst|LessThan5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~11_cout\ = CARRY((\inst|Add1~10_combout\ & (\inst|scoreA\(5) & !\inst|LessThan5~9_cout\)) # (!\inst|Add1~10_combout\ & ((\inst|scoreA\(5)) # (!\inst|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datab => \inst|scoreA\(5),
	datad => VCC,
	cin => \inst|LessThan5~9_cout\,
	cout => \inst|LessThan5~11_cout\);

-- Location: LCCOMB_X44_Y37_N30
\inst|LessThan5~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan5~12_combout\ = (\inst|scoreA\(6) & (!\inst|LessThan5~11_cout\ & \inst|Add1~12_combout\)) # (!\inst|scoreA\(6) & ((\inst|Add1~12_combout\) # (!\inst|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(6),
	datad => \inst|Add1~12_combout\,
	cin => \inst|LessThan5~11_cout\,
	combout => \inst|LessThan5~12_combout\);

-- Location: LCCOMB_X44_Y37_N16
\inst|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = \inst|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\);

-- Location: LCCOMB_X44_Y37_N0
\inst|scoreA~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~23_combout\ = (\inst|LessThan5~12_combout\) # ((\inst|Add1~14_combout\) # ((!\inst|scoreA\(6) & \inst|scoreA~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(6),
	datab => \inst|scoreA~22_combout\,
	datac => \inst|LessThan5~12_combout\,
	datad => \inst|Add1~14_combout\,
	combout => \inst|scoreA~23_combout\);

-- Location: LCCOMB_X43_Y37_N22
\inst|setAs[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|setAs[0]~2_combout\ = \inst|setAs\(0) $ (((\inst|process_0~2_combout\ & (!\inst|scoreA~23_combout\ & \inst|scoreB[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~2_combout\,
	datab => \inst|scoreA~23_combout\,
	datac => \inst|setAs\(0),
	datad => \inst|scoreB[6]~27_combout\,
	combout => \inst|setAs[0]~2_combout\);

-- Location: FF_X43_Y37_N23
\inst|setAs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|setAs[0]~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|setAs\(0));

-- Location: LCCOMB_X43_Y37_N2
\inst|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|setBs\(0) & (!\inst|setBs\(1) & ((!\inst|setAs\(1)) # (!\inst|setAs\(0))))) # (!\inst|setBs\(0) & (((!\inst|setAs\(1)) # (!\inst|setAs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|setBs\(0),
	datab => \inst|setBs\(1),
	datac => \inst|setAs\(0),
	datad => \inst|setAs\(1),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X42_Y37_N8
\inst|scoreB[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~28_combout\ = (\inst|scoreA\(3) & ((\inst|scoreA\(4)) # ((\inst|scoreA\(2) & \inst|scoreA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(3),
	datab => \inst|scoreA\(2),
	datac => \inst|scoreA\(1),
	datad => \inst|scoreA\(4),
	combout => \inst|scoreB[6]~28_combout\);

-- Location: LCCOMB_X42_Y37_N22
\inst|scoreB[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~29_combout\ = (\inst|scoreA\(5)) # ((\inst|scoreA\(4) & ((\inst|scoreB[6]~28_combout\) # (\inst|process_0~0_combout\))) # (!\inst|scoreA\(4) & (\inst|scoreB[6]~28_combout\ & \inst|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(5),
	datab => \inst|scoreA\(4),
	datac => \inst|scoreB[6]~28_combout\,
	datad => \inst|process_0~0_combout\,
	combout => \inst|scoreB[6]~29_combout\);

-- Location: LCCOMB_X45_Y37_N28
\inst|scoreB[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~30_combout\ = (\inst|scoreB[6]~34_combout\) # ((\inst|scoreB[6]~27_combout\ & ((\inst|scoreA\(6)) # (\inst|scoreB[6]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(6),
	datab => \inst|scoreB[6]~27_combout\,
	datac => \inst|scoreB[6]~29_combout\,
	datad => \inst|scoreB[6]~34_combout\,
	combout => \inst|scoreB[6]~30_combout\);

-- Location: LCCOMB_X45_Y37_N2
\inst|scoreB[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~31_combout\ = (\inst|process_0~2_combout\ & \inst|scoreB[6]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|process_0~2_combout\,
	datad => \inst|scoreB[6]~30_combout\,
	combout => \inst|scoreB[6]~31_combout\);

-- Location: LCCOMB_X45_Y37_N0
\inst|scoreB[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~32_combout\ = (\inst|scoreB[6]~31_combout\ & ((\inst|scoreB[6]~34_combout\) # ((!\inst|Add1~14_combout\ & !\inst|LessThan5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB[6]~34_combout\,
	datab => \inst|scoreB[6]~31_combout\,
	datac => \inst|Add1~14_combout\,
	datad => \inst|LessThan5~12_combout\,
	combout => \inst|scoreB[6]~32_combout\);

-- Location: FF_X45_Y37_N15
\inst|scoreB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[0]~11_combout\,
	asdata => \inst|Add1~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(0));

-- Location: LCCOMB_X45_Y37_N16
\inst|scoreB[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[1]~13_combout\ = (\inst|scoreB\(1) & (\inst|scoreB[0]~12\ & VCC)) # (!\inst|scoreB\(1) & (!\inst|scoreB[0]~12\))
-- \inst|scoreB[1]~14\ = CARRY((!\inst|scoreB\(1) & !\inst|scoreB[0]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(1),
	datad => VCC,
	cin => \inst|scoreB[0]~12\,
	combout => \inst|scoreB[1]~13_combout\,
	cout => \inst|scoreB[1]~14\);

-- Location: FF_X45_Y37_N17
\inst|scoreB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[1]~13_combout\,
	asdata => \inst|Add1~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(1));

-- Location: LCCOMB_X45_Y37_N18
\inst|scoreB[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[2]~15_combout\ = (\inst|scoreB\(2) & ((GND) # (!\inst|scoreB[1]~14\))) # (!\inst|scoreB\(2) & (\inst|scoreB[1]~14\ $ (GND)))
-- \inst|scoreB[2]~16\ = CARRY((\inst|scoreB\(2)) # (!\inst|scoreB[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(2),
	datad => VCC,
	cin => \inst|scoreB[1]~14\,
	combout => \inst|scoreB[2]~15_combout\,
	cout => \inst|scoreB[2]~16\);

-- Location: FF_X45_Y37_N19
\inst|scoreB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[2]~15_combout\,
	asdata => \inst|Add1~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(2));

-- Location: LCCOMB_X45_Y37_N20
\inst|scoreB[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[3]~17_combout\ = (\inst|scoreB\(3) & (\inst|scoreB[2]~16\ & VCC)) # (!\inst|scoreB\(3) & (!\inst|scoreB[2]~16\))
-- \inst|scoreB[3]~18\ = CARRY((!\inst|scoreB\(3) & !\inst|scoreB[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(3),
	datad => VCC,
	cin => \inst|scoreB[2]~16\,
	combout => \inst|scoreB[3]~17_combout\,
	cout => \inst|scoreB[3]~18\);

-- Location: FF_X45_Y37_N21
\inst|scoreB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[3]~17_combout\,
	asdata => \inst|Add1~6_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(3));

-- Location: LCCOMB_X45_Y37_N22
\inst|scoreB[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[4]~19_combout\ = (\inst|scoreB\(4) & ((GND) # (!\inst|scoreB[3]~18\))) # (!\inst|scoreB\(4) & (\inst|scoreB[3]~18\ $ (GND)))
-- \inst|scoreB[4]~20\ = CARRY((\inst|scoreB\(4)) # (!\inst|scoreB[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(4),
	datad => VCC,
	cin => \inst|scoreB[3]~18\,
	combout => \inst|scoreB[4]~19_combout\,
	cout => \inst|scoreB[4]~20\);

-- Location: FF_X45_Y37_N23
\inst|scoreB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[4]~19_combout\,
	asdata => \inst|Add1~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(4));

-- Location: LCCOMB_X45_Y37_N24
\inst|scoreB[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[5]~21_combout\ = (\inst|scoreB\(5) & (\inst|scoreB[4]~20\ & VCC)) # (!\inst|scoreB\(5) & (!\inst|scoreB[4]~20\))
-- \inst|scoreB[5]~22\ = CARRY((!\inst|scoreB\(5) & !\inst|scoreB[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreB\(5),
	datad => VCC,
	cin => \inst|scoreB[4]~20\,
	combout => \inst|scoreB[5]~21_combout\,
	cout => \inst|scoreB[5]~22\);

-- Location: FF_X45_Y37_N25
\inst|scoreB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[5]~21_combout\,
	asdata => \inst|Add1~10_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(5));

-- Location: LCCOMB_X45_Y37_N26
\inst|scoreB[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreB[6]~23_combout\ = \inst|scoreB\(6) $ (\inst|scoreB[5]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(6),
	cin => \inst|scoreB[5]~22\,
	combout => \inst|scoreB[6]~23_combout\);

-- Location: FF_X45_Y37_N27
\inst|scoreB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreB[6]~23_combout\,
	asdata => \inst|Add1~12_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sclr => \inst|scoreB[6]~33_combout\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreB[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreB\(6));

-- Location: LCCOMB_X43_Y37_N26
\inst|scoreA~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~24_combout\ = (\inst|scoreB\(3) & (!\inst|scoreB\(4) & ((!\inst|process_0~0_combout\) # (!\inst|scoreB\(1))))) # (!\inst|scoreB\(3) & (((!\inst|scoreB\(4)) # (!\inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(1),
	datab => \inst|scoreB\(3),
	datac => \inst|process_0~0_combout\,
	datad => \inst|scoreB\(4),
	combout => \inst|scoreA~24_combout\);

-- Location: LCCOMB_X43_Y37_N16
\inst|scoreA~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~25_combout\ = (!\inst|scoreB\(5) & ((\inst|scoreA~24_combout\) # ((!\inst|scoreB\(2) & !\inst|scoreB\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(2),
	datab => \inst|scoreB\(4),
	datac => \inst|scoreA~24_combout\,
	datad => \inst|scoreB\(5),
	combout => \inst|scoreA~25_combout\);

-- Location: LCCOMB_X47_Y37_N4
\inst|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|scoreA\(1) & (!\inst|Add3~1\)) # (!\inst|scoreA\(1) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|scoreA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X47_Y37_N6
\inst|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|scoreA\(2) & (\inst|Add3~3\ $ (GND))) # (!\inst|scoreA\(2) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|scoreA\(2) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X47_Y37_N8
\inst|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|scoreA\(3) & (!\inst|Add3~5\)) # (!\inst|scoreA\(3) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|scoreA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X47_Y37_N10
\inst|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|scoreA\(4) & (\inst|Add3~7\ $ (GND))) # (!\inst|scoreA\(4) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|scoreA\(4) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X47_Y37_N12
\inst|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|scoreA\(5) & (!\inst|Add3~9\)) # (!\inst|scoreA\(5) & ((\inst|Add3~9\) # (GND)))
-- \inst|Add3~11\ = CARRY((!\inst|Add3~9\) # (!\inst|scoreA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X47_Y37_N14
\inst|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|scoreA\(6) & (\inst|Add3~11\ $ (GND))) # (!\inst|scoreA\(6) & (!\inst|Add3~11\ & VCC))
-- \inst|Add3~13\ = CARRY((\inst|scoreA\(6) & !\inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X47_Y37_N18
\inst|LessThan9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~1_cout\ = CARRY((\inst|Add3~0_combout\ & !\inst|scoreB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|scoreB\(0),
	datad => VCC,
	cout => \inst|LessThan9~1_cout\);

-- Location: LCCOMB_X47_Y37_N20
\inst|LessThan9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~3_cout\ = CARRY((\inst|scoreB\(1) & ((!\inst|LessThan9~1_cout\) # (!\inst|Add3~2_combout\))) # (!\inst|scoreB\(1) & (!\inst|Add3~2_combout\ & !\inst|LessThan9~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(1),
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|LessThan9~1_cout\,
	cout => \inst|LessThan9~3_cout\);

-- Location: LCCOMB_X47_Y37_N22
\inst|LessThan9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~5_cout\ = CARRY((\inst|Add3~4_combout\ & ((!\inst|LessThan9~3_cout\) # (!\inst|scoreB\(2)))) # (!\inst|Add3~4_combout\ & (!\inst|scoreB\(2) & !\inst|LessThan9~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst|scoreB\(2),
	datad => VCC,
	cin => \inst|LessThan9~3_cout\,
	cout => \inst|LessThan9~5_cout\);

-- Location: LCCOMB_X47_Y37_N24
\inst|LessThan9~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~7_cout\ = CARRY((\inst|scoreB\(3) & ((!\inst|LessThan9~5_cout\) # (!\inst|Add3~6_combout\))) # (!\inst|scoreB\(3) & (!\inst|Add3~6_combout\ & !\inst|LessThan9~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(3),
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|LessThan9~5_cout\,
	cout => \inst|LessThan9~7_cout\);

-- Location: LCCOMB_X47_Y37_N26
\inst|LessThan9~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~9_cout\ = CARRY((\inst|Add3~8_combout\ & ((!\inst|LessThan9~7_cout\) # (!\inst|scoreB\(4)))) # (!\inst|Add3~8_combout\ & (!\inst|scoreB\(4) & !\inst|LessThan9~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~8_combout\,
	datab => \inst|scoreB\(4),
	datad => VCC,
	cin => \inst|LessThan9~7_cout\,
	cout => \inst|LessThan9~9_cout\);

-- Location: LCCOMB_X47_Y37_N28
\inst|LessThan9~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~11_cout\ = CARRY((\inst|Add3~10_combout\ & (\inst|scoreB\(5) & !\inst|LessThan9~9_cout\)) # (!\inst|Add3~10_combout\ & ((\inst|scoreB\(5)) # (!\inst|LessThan9~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst|scoreB\(5),
	datad => VCC,
	cin => \inst|LessThan9~9_cout\,
	cout => \inst|LessThan9~11_cout\);

-- Location: LCCOMB_X47_Y37_N30
\inst|LessThan9~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|LessThan9~12_combout\ = (\inst|Add3~12_combout\ & ((!\inst|scoreB\(6)) # (!\inst|LessThan9~11_cout\))) # (!\inst|Add3~12_combout\ & (!\inst|LessThan9~11_cout\ & !\inst|scoreB\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~12_combout\,
	datad => \inst|scoreB\(6),
	cin => \inst|LessThan9~11_cout\,
	combout => \inst|LessThan9~12_combout\);

-- Location: LCCOMB_X47_Y37_N16
\inst|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = \inst|Add3~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\);

-- Location: LCCOMB_X46_Y37_N24
\inst|scoreA~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~26_combout\ = (\inst|LessThan9~12_combout\) # ((\inst|Add3~14_combout\) # ((!\inst|scoreB\(6) & \inst|scoreA~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(6),
	datab => \inst|scoreA~25_combout\,
	datac => \inst|LessThan9~12_combout\,
	datad => \inst|Add3~14_combout\,
	combout => \inst|scoreA~26_combout\);

-- Location: LCCOMB_X46_Y37_N30
\inst|scoreA~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~41_combout\ = (\inst|Add3~0_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~41_combout\);

-- Location: LCCOMB_X42_Y37_N18
\inst|scoreA[6]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~28_combout\ = (\inst|scoreA\(0)) # ((\inst|scoreA\(1)) # ((\inst|scoreA\(2)) # (\inst|scoreA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(0),
	datab => \inst|scoreA\(1),
	datac => \inst|scoreA\(2),
	datad => \inst|scoreA\(3),
	combout => \inst|scoreA[6]~28_combout\);

-- Location: LCCOMB_X42_Y37_N28
\inst|scoreA[6]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~29_combout\ = (\inst|scoreA\(6)) # ((\inst|scoreA\(4)) # ((\inst|scoreA\(5)) # (\inst|scoreA[6]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(6),
	datab => \inst|scoreA\(4),
	datac => \inst|scoreA\(5),
	datad => \inst|scoreA[6]~28_combout\,
	combout => \inst|scoreA[6]~29_combout\);

-- Location: LCCOMB_X42_Y37_N10
\inst|scoreA[6]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~30_combout\ = (!\A~input_o\ & (!\inst|timeA_prev~q\ & ((\inst|scoreA[6]~29_combout\) # (!\Correction~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~input_o\,
	datab => \inst|timeA_prev~q\,
	datac => \Correction~input_o\,
	datad => \inst|scoreA[6]~29_combout\,
	combout => \inst|scoreA[6]~30_combout\);

-- Location: LCCOMB_X43_Y37_N8
\inst|scoreA[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~31_combout\ = (\inst|scoreB\(4) & (((!\inst|process_0~0_combout\ & !\inst|scoreB\(3))))) # (!\inst|scoreB\(4) & (((!\inst|scoreB\(3)) # (!\inst|process_0~0_combout\)) # (!\inst|scoreB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(2),
	datab => \inst|scoreB\(4),
	datac => \inst|process_0~0_combout\,
	datad => \inst|scoreB\(3),
	combout => \inst|scoreA[6]~31_combout\);

-- Location: LCCOMB_X43_Y37_N30
\inst|scoreA[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~32_combout\ = (!\inst|scoreB\(6) & ((\inst|scoreA[6]~31_combout\) # ((!\inst|scoreB\(4) & !\inst|scoreB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreB\(6),
	datab => \inst|scoreB\(4),
	datac => \inst|scoreA[6]~31_combout\,
	datad => \inst|scoreB\(1),
	combout => \inst|scoreA[6]~32_combout\);

-- Location: LCCOMB_X43_Y37_N12
\inst|scoreA[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~33_combout\ = (\inst|process_0~1_combout\ & (!\Correction~input_o\ & ((\inst|scoreB\(5)) # (!\inst|scoreA[6]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \Correction~input_o\,
	datac => \inst|scoreA[6]~32_combout\,
	datad => \inst|scoreB\(5),
	combout => \inst|scoreA[6]~33_combout\);

-- Location: LCCOMB_X42_Y37_N24
\inst|scoreA[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~34_combout\ = (\inst|process_0~2_combout\ & ((\inst|scoreA[6]~33_combout\) # (\inst|scoreA[6]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~2_combout\,
	datac => \inst|scoreA[6]~33_combout\,
	datad => \inst|scoreA[6]~30_combout\,
	combout => \inst|scoreA[6]~34_combout\);

-- Location: LCCOMB_X46_Y37_N0
\inst|scoreA[6]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~35_combout\ = (\inst|scoreA[6]~34_combout\ & ((\inst|scoreA[6]~30_combout\) # ((!\inst|Add3~14_combout\ & !\inst|LessThan9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA[6]~30_combout\,
	datab => \inst|Add3~14_combout\,
	datac => \inst|LessThan9~12_combout\,
	datad => \inst|scoreA[6]~34_combout\,
	combout => \inst|scoreA[6]~35_combout\);

-- Location: FF_X46_Y37_N9
\inst|scoreA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[0]~7_combout\,
	asdata => \inst|scoreA~41_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(0));

-- Location: LCCOMB_X46_Y37_N10
\inst|scoreA[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[1]~9_combout\ = (\inst|scoreA\(1) & (\inst|scoreA[0]~8\ & VCC)) # (!\inst|scoreA\(1) & (!\inst|scoreA[0]~8\))
-- \inst|scoreA[1]~10\ = CARRY((!\inst|scoreA\(1) & !\inst|scoreA[0]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(1),
	datad => VCC,
	cin => \inst|scoreA[0]~8\,
	combout => \inst|scoreA[1]~9_combout\,
	cout => \inst|scoreA[1]~10\);

-- Location: LCCOMB_X46_Y37_N28
\inst|scoreA~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~40_combout\ = (\inst|Add3~2_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~2_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~40_combout\);

-- Location: FF_X46_Y37_N11
\inst|scoreA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[1]~9_combout\,
	asdata => \inst|scoreA~40_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(1));

-- Location: LCCOMB_X46_Y37_N12
\inst|scoreA[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[2]~11_combout\ = (\inst|scoreA\(2) & ((GND) # (!\inst|scoreA[1]~10\))) # (!\inst|scoreA\(2) & (\inst|scoreA[1]~10\ $ (GND)))
-- \inst|scoreA[2]~12\ = CARRY((\inst|scoreA\(2)) # (!\inst|scoreA[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(2),
	datad => VCC,
	cin => \inst|scoreA[1]~10\,
	combout => \inst|scoreA[2]~11_combout\,
	cout => \inst|scoreA[2]~12\);

-- Location: LCCOMB_X46_Y37_N6
\inst|scoreA~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~39_combout\ = (\inst|Add3~4_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~39_combout\);

-- Location: FF_X46_Y37_N13
\inst|scoreA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[2]~11_combout\,
	asdata => \inst|scoreA~39_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(2));

-- Location: LCCOMB_X46_Y37_N14
\inst|scoreA[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[3]~13_combout\ = (\inst|scoreA\(3) & (\inst|scoreA[2]~12\ & VCC)) # (!\inst|scoreA\(3) & (!\inst|scoreA[2]~12\))
-- \inst|scoreA[3]~14\ = CARRY((!\inst|scoreA\(3) & !\inst|scoreA[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(3),
	datad => VCC,
	cin => \inst|scoreA[2]~12\,
	combout => \inst|scoreA[3]~13_combout\,
	cout => \inst|scoreA[3]~14\);

-- Location: LCCOMB_X46_Y37_N4
\inst|scoreA~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~38_combout\ = (\inst|Add3~6_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst|Add3~6_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~38_combout\);

-- Location: FF_X46_Y37_N15
\inst|scoreA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[3]~13_combout\,
	asdata => \inst|scoreA~38_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(3));

-- Location: LCCOMB_X46_Y37_N16
\inst|scoreA[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[4]~15_combout\ = (\inst|scoreA\(4) & ((GND) # (!\inst|scoreA[3]~14\))) # (!\inst|scoreA\(4) & (\inst|scoreA[3]~14\ $ (GND)))
-- \inst|scoreA[4]~16\ = CARRY((\inst|scoreA\(4)) # (!\inst|scoreA[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(4),
	datad => VCC,
	cin => \inst|scoreA[3]~14\,
	combout => \inst|scoreA[4]~15_combout\,
	cout => \inst|scoreA[4]~16\);

-- Location: LCCOMB_X46_Y37_N2
\inst|scoreA~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~37_combout\ = (\inst|Add3~8_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~8_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~37_combout\);

-- Location: FF_X46_Y37_N17
\inst|scoreA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[4]~15_combout\,
	asdata => \inst|scoreA~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(4));

-- Location: LCCOMB_X46_Y37_N18
\inst|scoreA[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[5]~17_combout\ = (\inst|scoreA\(5) & (\inst|scoreA[4]~16\ & VCC)) # (!\inst|scoreA\(5) & (!\inst|scoreA[4]~16\))
-- \inst|scoreA[5]~18\ = CARRY((!\inst|scoreA\(5) & !\inst|scoreA[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(5),
	datad => VCC,
	cin => \inst|scoreA[4]~16\,
	combout => \inst|scoreA[5]~17_combout\,
	cout => \inst|scoreA[5]~18\);

-- Location: LCCOMB_X46_Y37_N22
\inst|scoreA~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~36_combout\ = (\inst|Add3~10_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst|process_0~1_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~36_combout\);

-- Location: FF_X46_Y37_N19
\inst|scoreA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[5]~17_combout\,
	asdata => \inst|scoreA~36_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(5));

-- Location: LCCOMB_X46_Y37_N20
\inst|scoreA[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA[6]~19_combout\ = \inst|scoreA[5]~18\ $ (\inst|scoreA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|scoreA\(6),
	cin => \inst|scoreA[5]~18\,
	combout => \inst|scoreA[6]~19_combout\);

-- Location: LCCOMB_X46_Y37_N26
\inst|scoreA~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|scoreA~27_combout\ = (\inst|Add3~12_combout\ & (\inst|scoreA~23_combout\ & ((\inst|scoreA~26_combout\) # (!\inst|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~1_combout\,
	datab => \inst|Add3~12_combout\,
	datac => \inst|scoreA~26_combout\,
	datad => \inst|scoreA~23_combout\,
	combout => \inst|scoreA~27_combout\);

-- Location: FF_X46_Y37_N21
\inst|scoreA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|scoreA[6]~19_combout\,
	asdata => \inst|scoreA~27_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => \ALT_INV_Correction~input_o\,
	ena => \inst|scoreA[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|scoreA\(6));

-- Location: LCCOMB_X49_Y41_N0
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \inst|scoreA\(4) $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\inst|scoreA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(4),
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X49_Y41_N2
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|scoreA\(5) & (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\inst|scoreA\(5) & 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|scoreA\(5) & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(5),
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X49_Y41_N4
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|scoreA\(6) & (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\inst|scoreA\(6) & 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\inst|scoreA\(6) & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(6),
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X49_Y41_N6
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY(!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X49_Y41_N8
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X49_Y41_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[23]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|scoreA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|scoreA\(6),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X49_Y41_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[23]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\);

-- Location: LCCOMB_X49_Y41_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[22]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|scoreA\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|scoreA\(5),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\);

-- Location: LCCOMB_X49_Y41_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[22]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\);

-- Location: LCCOMB_X49_Y41_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|scoreA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|scoreA\(4),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\);

-- Location: LCCOMB_X50_Y41_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\);

-- Location: LCCOMB_X50_Y41_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\ = (\inst|scoreA\(3) & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(3),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\);

-- Location: LCCOMB_X50_Y41_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\ = (\inst|scoreA\(3) & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(3),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\);

-- Location: LCCOMB_X49_Y41_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~33_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~32_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X49_Y41_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~30_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~31_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X49_Y41_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~28_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~29_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X49_Y41_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~27_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X49_Y41_N24
\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X49_Y41_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[28]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|scoreA\(5))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(5),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\);

-- Location: LCCOMB_X50_Y41_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[28]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X50_Y41_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[27]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X50_Y41_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[27]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|scoreA\(4))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst|scoreA\(4),
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\);

-- Location: LCCOMB_X50_Y41_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[26]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\);

-- Location: LCCOMB_X50_Y41_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[26]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst|scoreA\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst|scoreA\(3),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X51_Y41_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[25]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\inst|scoreA\(2) & \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X51_Y41_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[25]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\ = (\inst|scoreA\(2) & !\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\);

-- Location: LCCOMB_X50_Y41_N6
\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst2|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[25]~39_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X50_Y41_N8
\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ & 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~37_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X50_Y41_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X50_Y41_N12
\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[28]~47_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X50_Y41_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X52_Y46_N8
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (GND)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY(!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X52_Y46_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & VCC))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X52_Y46_N12
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & VCC)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X52_Y46_N14
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X52_Y46_N16
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X52_Y46_N18
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X52_Y46_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY(!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X52_Y46_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X52_Y46_N6
\inst2|Mod0|auto_generated|divider|divider|StageOut[59]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[59]~0_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[59]~0_combout\);

-- Location: LCCOMB_X52_Y46_N24
\inst2|Mod0|auto_generated|divider|divider|StageOut[58]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[58]~1_combout\);

-- Location: LCCOMB_X52_Y46_N26
\inst2|Mod0|auto_generated|divider|divider|StageOut[57]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[57]~2_combout\);

-- Location: LCCOMB_X50_Y41_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[33]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[27]~48_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\);

-- Location: LCCOMB_X51_Y41_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[33]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\);

-- Location: LCCOMB_X50_Y41_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[32]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|scoreA\(3)))) 
-- # (!\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst|scoreA\(3),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X51_Y41_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[32]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\ = (!\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X51_Y41_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[31]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\);

-- Location: LCCOMB_X51_Y41_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[31]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ = (\inst|scoreA\(2) & \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\);

-- Location: LCCOMB_X51_Y41_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[30]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\ = (\inst|scoreA\(1) & \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\);

-- Location: LCCOMB_X51_Y41_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[30]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\inst|scoreA\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X51_Y41_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[30]~44_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X51_Y41_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[31]~43_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[31]~42_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X51_Y41_N24
\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X51_Y41_N26
\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[33]~46_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[33]~40_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X51_Y41_N28
\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X52_Y46_N28
\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X52_Y46_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[56]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[56]~3_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (!\inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # 
-- (!\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[56]~3_combout\);

-- Location: LCCOMB_X45_Y39_N10
\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \inst|scoreA\(4) $ (VCC)
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\inst|scoreA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(4),
	datad => VCC,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X45_Y39_N12
\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|scoreA\(5) & (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # (!\inst|scoreA\(5) & 
-- (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|scoreA\(5) & !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(5),
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X45_Y39_N14
\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|scoreA\(6) & (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # (!\inst|scoreA\(6) & 
-- (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\inst|scoreA\(6) & !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(6),
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X45_Y39_N16
\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X45_Y39_N18
\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X45_Y39_N28
\inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\);

-- Location: LCCOMB_X45_Y39_N26
\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|scoreA\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|scoreA\(6),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\);

-- Location: LCCOMB_X46_Y39_N8
\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\);

-- Location: LCCOMB_X45_Y39_N0
\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\ = (\inst|scoreA\(5) & \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(5),
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\);

-- Location: LCCOMB_X45_Y39_N30
\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\);

-- Location: LCCOMB_X45_Y39_N8
\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\ = (\inst|scoreA\(4) & \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(4),
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\);

-- Location: LCCOMB_X45_Y39_N4
\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\);

-- Location: LCCOMB_X46_Y39_N10
\inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49_combout\ = (\inst|scoreA\(3) & \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(3),
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49_combout\);

-- Location: LCCOMB_X46_Y39_N28
\inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50_combout\ = (\inst|scoreA\(3) & !\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|scoreA\(3),
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50_combout\);

-- Location: LCCOMB_X46_Y39_N16
\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49_combout\) # (\inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49_combout\) # (\inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~49_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[32]~50_combout\,
	datad => VCC,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X46_Y39_N18
\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\ & 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~47_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[33]~48_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X46_Y39_N20
\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\)))))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~45_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[34]~46_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X46_Y39_N22
\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\ & 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~43_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[35]~44_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X46_Y39_N24
\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\ & ((GND) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))) # 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\ & (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[36]~42_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X46_Y39_N26
\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X45_Y39_N22
\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\);

-- Location: LCCOMB_X46_Y39_N6
\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\);

-- Location: LCCOMB_X45_Y39_N24
\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|scoreA\(6))) # 
-- (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst|scoreA\(6),
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\);

-- Location: LCCOMB_X47_Y39_N24
\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\);

-- Location: LCCOMB_X46_Y39_N12
\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\);

-- Location: LCCOMB_X45_Y39_N2
\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|scoreA\(5)))) 
-- # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|scoreA\(5),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\);

-- Location: LCCOMB_X45_Y39_N20
\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|scoreA\(4)))) 
-- # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|scoreA\(4),
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\);

-- Location: LCCOMB_X47_Y39_N2
\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\);

-- Location: LCCOMB_X46_Y39_N14
\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\ = (\inst|scoreA\(3) & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|scoreA\(3),
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\);

-- Location: LCCOMB_X46_Y39_N4
\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\);

-- Location: LCCOMB_X47_Y39_N30
\inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst|scoreA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|scoreA\(2),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\);

-- Location: LCCOMB_X47_Y39_N8
\inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst|scoreA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|scoreA\(2),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57_combout\);

-- Location: LCCOMB_X47_Y39_N10
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\) # (\inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\) # (\inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~58_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[40]~57_combout\,
	datad => VCC,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X47_Y39_N12
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\ & 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~55_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[41]~56_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X47_Y39_N14
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\)))))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~54_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X47_Y39_N16
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\ & 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~53_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X47_Y39_N18
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\))))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- ((\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\) # (GND))))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\) # ((\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\) # 
-- (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~52_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X47_Y39_N20
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\ & 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~51_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X47_Y39_N22
\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X46_Y39_N30
\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst|scoreA\(3)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst|scoreA\(3),
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\);

-- Location: LCCOMB_X47_Y40_N30
\inst2|Mod1|auto_generated|divider|divider|StageOut[54]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\);

-- Location: LCCOMB_X46_Y39_N2
\inst2|Mod1|auto_generated|divider|divider|StageOut[54]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\) # 
-- ((\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[45]~71_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\);

-- Location: LCCOMB_X47_Y39_N4
\inst2|Mod1|auto_generated|divider|divider|StageOut[53]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\) # 
-- ((!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[44]~76_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\);

-- Location: LCCOMB_X47_Y39_N28
\inst2|Mod1|auto_generated|divider|divider|StageOut[53]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~65_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~65_combout\);

-- Location: LCCOMB_X47_Y39_N26
\inst2|Mod1|auto_generated|divider|divider|StageOut[52]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~66_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~66_combout\);

-- Location: LCCOMB_X46_Y39_N0
\inst2|Mod1|auto_generated|divider|divider|StageOut[52]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\) # 
-- ((\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[43]~77_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\);

-- Location: LCCOMB_X47_Y39_N6
\inst2|Mod1|auto_generated|divider|divider|StageOut[51]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\) # 
-- ((!\inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|StageOut[42]~78_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\);

-- Location: LCCOMB_X47_Y40_N24
\inst2|Mod1|auto_generated|divider|divider|StageOut[51]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~67_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~67_combout\);

-- Location: LCCOMB_X46_Y40_N28
\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\);

-- Location: LCCOMB_X47_Y39_N0
\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\);

-- Location: LCCOMB_X47_Y40_N28
\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst|scoreA\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst|scoreA\(2),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\);

-- Location: LCCOMB_X47_Y40_N26
\inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst|scoreA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst|scoreA\(1),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62_combout\);

-- Location: LCCOMB_X47_Y40_N16
\inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63_combout\ = (!\inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst|scoreA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst|scoreA\(1),
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63_combout\);

-- Location: LCCOMB_X47_Y40_N0
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62_combout\) # (\inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62_combout\) # (\inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~62_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[48]~63_combout\,
	datad => VCC,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X47_Y40_N2
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\ & 
-- (!\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\)))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X47_Y40_N4
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\)))))
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- (\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X47_Y40_N6
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[51]~67_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~75_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[51]~67_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X47_Y40_N8
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[52]~66_combout\) # ((\inst2|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\) # 
-- (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~66_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[52]~74_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X47_Y40_N10
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst2|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\ & (!\inst2|Mod1|auto_generated|divider|divider|StageOut[53]~65_combout\ & 
-- !\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~73_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[53]~65_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X47_Y40_N12
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst2|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\) # ((\inst2|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\) # 
-- (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~64_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|StageOut[54]~72_combout\,
	datad => VCC,
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X47_Y40_N14
\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X47_Y40_N22
\inst2|Mod1|auto_generated|divider|divider|StageOut[59]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[59]~68_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\) # 
-- ((\inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~79_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|StageOut[50]~59_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[59]~68_combout\);

-- Location: LCCOMB_X47_Y40_N20
\inst2|Mod1|auto_generated|divider|divider|StageOut[58]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\) # 
-- ((\inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\)))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~61_combout\,
	datab => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|StageOut[49]~60_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[58]~69_combout\);

-- Location: LCCOMB_X47_Y40_N18
\inst2|Mod1|auto_generated|divider|divider|StageOut[57]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mod1|auto_generated|divider|divider|StageOut[57]~70_combout\ = (\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst|scoreA\(1))) # (!\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ 
-- & ((\inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|scoreA\(1),
	datac => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst2|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \inst2|Mod1|auto_generated|divider|divider|StageOut[57]~70_combout\);

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

ww_DEZENAA(3) <= \DEZENAA[3]~output_o\;

ww_DEZENAA(2) <= \DEZENAA[2]~output_o\;

ww_DEZENAA(1) <= \DEZENAA[1]~output_o\;

ww_DEZENAA(0) <= \DEZENAA[0]~output_o\;

ww_placarA(7) <= \placarA[7]~output_o\;

ww_placarA(6) <= \placarA[6]~output_o\;

ww_placarA(5) <= \placarA[5]~output_o\;

ww_placarA(4) <= \placarA[4]~output_o\;

ww_placarA(3) <= \placarA[3]~output_o\;

ww_placarA(2) <= \placarA[2]~output_o\;

ww_placarA(1) <= \placarA[1]~output_o\;

ww_placarA(0) <= \placarA[0]~output_o\;

ww_placarB(7) <= \placarB[7]~output_o\;

ww_placarB(6) <= \placarB[6]~output_o\;

ww_placarB(5) <= \placarB[5]~output_o\;

ww_placarB(4) <= \placarB[4]~output_o\;

ww_placarB(3) <= \placarB[3]~output_o\;

ww_placarB(2) <= \placarB[2]~output_o\;

ww_placarB(1) <= \placarB[1]~output_o\;

ww_placarB(0) <= \placarB[0]~output_o\;

ww_Set_A(3) <= \Set_A[3]~output_o\;

ww_Set_A(2) <= \Set_A[2]~output_o\;

ww_Set_A(1) <= \Set_A[1]~output_o\;

ww_Set_A(0) <= \Set_A[0]~output_o\;

ww_Set_B(3) <= \Set_B[3]~output_o\;

ww_Set_B(2) <= \Set_B[2]~output_o\;

ww_Set_B(1) <= \Set_B[1]~output_o\;

ww_Set_B(0) <= \Set_B[0]~output_o\;

ww_UNIDADEA(3) <= \UNIDADEA[3]~output_o\;

ww_UNIDADEA(2) <= \UNIDADEA[2]~output_o\;

ww_UNIDADEA(1) <= \UNIDADEA[1]~output_o\;

ww_UNIDADEA(0) <= \UNIDADEA[0]~output_o\;
END structure;


