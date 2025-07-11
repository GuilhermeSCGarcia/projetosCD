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
-- Generated on "06/09/2025 21:26:59"
                                                             
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
SIGNAL CLK : STD_LOGIC;
SIGNAL CLK_STOP : STD_LOGIC;
SIGNAL DC : STD_LOGIC;
SIGNAL E : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL MC : STD_LOGIC;
SIGNAL SP : STD_LOGIC;
COMPONENT lab07toptemp
	PORT (
	CLK : IN STD_LOGIC;
	CLK_STOP : IN STD_LOGIC;
	DC : OUT STD_LOGIC;
	E : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	MC : OUT STD_LOGIC;
	SP : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab07toptemp
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLK_STOP => CLK_STOP,
	DC => DC,
	E => E,
	MC => MC,
	SP => SP
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- CLK_STOP
t_prcs_CLK_STOP: PROCESS
BEGIN
	CLK_STOP <= '0';
	WAIT FOR 320000 ps;
	CLK_STOP <= '1';
	WAIT FOR 20000 ps;
	CLK_STOP <= '0';
WAIT;
END PROCESS t_prcs_CLK_STOP;
END lab07toptemp_arch;
