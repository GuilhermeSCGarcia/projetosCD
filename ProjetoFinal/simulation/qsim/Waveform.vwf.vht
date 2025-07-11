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
-- Generated on "06/24/2025 20:40:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          arquivotopo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY arquivotopo_vhd_vec_tst IS
END arquivotopo_vhd_vec_tst;
ARCHITECTURE arquivotopo_arch OF arquivotopo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL Correction : STD_LOGIC;
SIGNAL DEZENAA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL placarA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL placarB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL Set_A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Set_B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL UNIDADEA : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT arquivotopo
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	Correction : IN STD_LOGIC;
	DEZENAA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	placarA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	placarB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RESET : IN STD_LOGIC;
	Set_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Set_B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	UNIDADEA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : arquivotopo
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CLK => CLK,
	Correction => Correction,
	DEZENAA => DEZENAA,
	placarA => placarA,
	placarB => placarB,
	RESET => RESET,
	Set_A => Set_A,
	Set_B => Set_B,
	UNIDADEA => UNIDADEA
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 500 ps;
	CLK <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 23
	LOOP
		A <= '0';
		WAIT FOR 1500 ps;
		A <= '1';
		WAIT FOR 1500 ps;
	END LOOP;
	A <= '0';
	WAIT FOR 1000 ps;
	A <= '1';
	WAIT FOR 11000 ps;
	A <= '0';
	WAIT FOR 1500 ps;
	A <= '1';
	WAIT FOR 1500 ps;
	FOR i IN 1 TO 61
	LOOP
		A <= '0';
		WAIT FOR 1500 ps;
		A <= '1';
		WAIT FOR 1500 ps;
	END LOOP;
	A <= '0';
	WAIT FOR 1500 ps;
	A <= '1';
	WAIT FOR 11500 ps;
	A <= '0';
	WAIT FOR 500 ps;
	A <= '1';
	WAIT FOR 1500 ps;
	FOR i IN 1 TO 239
	LOOP
		A <= '0';
		WAIT FOR 1500 ps;
		A <= '1';
		WAIT FOR 1500 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 49
	LOOP
		B <= '0';
		WAIT FOR 1500 ps;
		B <= '1';
		WAIT FOR 1500 ps;
	END LOOP;
	B <= '0';
	WAIT FOR 1500 ps;
	B <= '1';
	WAIT FOR 11500 ps;
	B <= '0';
	WAIT FOR 500 ps;
	B <= '1';
	WAIT FOR 1500 ps;
	FOR i IN 1 TO 279
	LOOP
		B <= '0';
		WAIT FOR 1500 ps;
		B <= '1';
		WAIT FOR 1500 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
	WAIT FOR 330000 ps;
	RESET <= '1';
	WAIT FOR 10000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- Correction
t_prcs_Correction: PROCESS
BEGIN
	Correction <= '0';
	WAIT FOR 360000 ps;
	Correction <= '1';
	WAIT FOR 10000 ps;
	Correction <= '0';
WAIT;
END PROCESS t_prcs_Correction;
END arquivotopo_arch;
