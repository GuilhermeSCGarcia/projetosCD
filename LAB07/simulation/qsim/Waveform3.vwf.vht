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
-- Generated on "06/10/2025 08:16:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab07toptemp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab07toptemp_vhd_vec_tst IS
END lab07toptemp_vhd_vec_tst;
ARCHITECTURE lab07toptemp_arch OF lab07toptemp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL AD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL CLKMEMORY : STD_LOGIC;
SIGNAL DC : STD_LOGIC;
SIGNAL E : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL MC : STD_LOGIC;
SIGNAL Pause : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Word : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT lab07toptemp
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	AD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	CLKMEMORY : IN STD_LOGIC;
	DC : OUT STD_LOGIC;
	E : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	MC : OUT STD_LOGIC;
	Pause : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Word : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab07toptemp
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AD => AD,
	CLK => CLK,
	CLKMEMORY => CLKMEMORY,
	DC => DC,
	E => E,
	MC => MC,
	Pause => Pause,
	S => S,
	Word => Word
	);

-- CLKMEMORY
t_prcs_CLKMEMORY: PROCESS
BEGIN
	FOR i IN 1 TO 111
	LOOP
		CLKMEMORY <= '0';
		WAIT FOR 4500 ps;
		CLKMEMORY <= '1';
		WAIT FOR 4500 ps;
	END LOOP;
	CLKMEMORY <= '0';
WAIT;
END PROCESS t_prcs_CLKMEMORY;
-- AD[7]
t_prcs_AD_7: PROCESS
BEGIN
	AD(7) <= '0';
WAIT;
END PROCESS t_prcs_AD_7;
-- AD[6]
t_prcs_AD_6: PROCESS
BEGIN
	AD(6) <= '0';
	WAIT FOR 640000 ps;
	AD(6) <= '1';
WAIT;
END PROCESS t_prcs_AD_6;
-- AD[5]
t_prcs_AD_5: PROCESS
BEGIN
	AD(5) <= '0';
	WAIT FOR 320000 ps;
	AD(5) <= '1';
	WAIT FOR 320000 ps;
	AD(5) <= '0';
	WAIT FOR 320000 ps;
	AD(5) <= '1';
WAIT;
END PROCESS t_prcs_AD_5;
-- AD[4]
t_prcs_AD_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		AD(4) <= '0';
		WAIT FOR 160000 ps;
		AD(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	AD(4) <= '0';
WAIT;
END PROCESS t_prcs_AD_4;
-- AD[3]
t_prcs_AD_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		AD(3) <= '0';
		WAIT FOR 80000 ps;
		AD(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	AD(3) <= '0';
WAIT;
END PROCESS t_prcs_AD_3;
-- AD[2]
t_prcs_AD_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		AD(2) <= '0';
		WAIT FOR 40000 ps;
		AD(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	AD(2) <= '0';
WAIT;
END PROCESS t_prcs_AD_2;
-- AD[1]
t_prcs_AD_1: PROCESS
BEGIN
LOOP
	AD(1) <= '0';
	WAIT FOR 20000 ps;
	AD(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_AD_1;
-- AD[0]
t_prcs_AD_0: PROCESS
BEGIN
LOOP
	AD(0) <= '0';
	WAIT FOR 10000 ps;
	AD(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_AD_0;
END lab07toptemp_arch;
