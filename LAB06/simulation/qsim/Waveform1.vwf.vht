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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/04/2025 17:14:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DETECTORDESEQUENCIA_TOP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DETECTORDESEQUENCIA_TOP_vhd_vec_tst IS
END DETECTORDESEQUENCIA_TOP_vhd_vec_tst;
ARCHITECTURE DETECTORDESEQUENCIA_TOP_arch OF DETECTORDESEQUENCIA_TOP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Hex_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL led_chave0 : STD_LOGIC;
SIGNAL led_seqdetectada : STD_LOGIC;
SIGNAL M0 : STD_LOGIC;
SIGNAL M1 : STD_LOGIC;
SIGNAL Q0_out : STD_LOGIC;
SIGNAL Q1_out : STD_LOGIC;
SIGNAL Q2_out : STD_LOGIC;
COMPONENT DETECTORDESEQUENCIA_TOP
	PORT (
	clk : IN STD_LOGIC;
	Hex_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	led_chave0 : OUT STD_LOGIC;
	led_seqdetectada : OUT STD_LOGIC;
	M0 : IN STD_LOGIC;
	M1 : IN STD_LOGIC;
	Q0_out : OUT STD_LOGIC;
	Q1_out : OUT STD_LOGIC;
	Q2_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DETECTORDESEQUENCIA_TOP
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Hex_out => Hex_out,
	led_chave0 => led_chave0,
	led_seqdetectada => led_seqdetectada,
	M0 => M0,
	M1 => M1,
	Q0_out => Q0_out,
	Q1_out => Q1_out,
	Q2_out => Q2_out
	);

-- M0
t_prcs_M0: PROCESS
BEGIN
	M0 <= '1';
WAIT;
END PROCESS t_prcs_M0;

-- M1
t_prcs_M1: PROCESS
BEGIN
	M1 <= '1';
WAIT;
END PROCESS t_prcs_M1;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END DETECTORDESEQUENCIA_TOP_arch;
