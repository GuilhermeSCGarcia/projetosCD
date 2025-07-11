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
-- Generated on "06/18/2025 14:07:52"
                                                             
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
SIGNAL CLKMEMORIA : STD_LOGIC;
SIGNAL DC : STD_LOGIC;
SIGNAL FOUND : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL msbcontador : STD_LOGIC;
SIGNAL Pause : STD_LOGIC;
SIGNAL pause_state : STD_LOGIC;
SIGNAL PISOCONTROL : STD_LOGIC;
COMPONENT lab07toptemp
	PORT (
	CLK : IN STD_LOGIC;
	CLKMEMORIA : OUT STD_LOGIC;
	DC : OUT STD_LOGIC;
	FOUND : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	msbcontador : OUT STD_LOGIC;
	Pause : IN STD_LOGIC;
	pause_state : OUT STD_LOGIC;
	PISOCONTROL : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab07toptemp
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLKMEMORIA => CLKMEMORIA,
	DC => DC,
	FOUND => FOUND,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	msbcontador => msbcontador,
	Pause => Pause,
	pause_state => pause_state,
	PISOCONTROL => PISOCONTROL
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

-- Pause
t_prcs_Pause: PROCESS
BEGIN
	Pause <= '1';
	WAIT FOR 310000 ps;
	Pause <= '0';
	WAIT FOR 10000 ps;
	Pause <= '1';
	WAIT FOR 80000 ps;
	Pause <= '0';
	WAIT FOR 10000 ps;
	Pause <= '1';
	WAIT FOR 360000 ps;
	Pause <= '0';
	WAIT FOR 10000 ps;
	Pause <= '1';
	WAIT FOR 160000 ps;
	Pause <= '0';
	WAIT FOR 10000 ps;
	Pause <= '1';
WAIT;
END PROCESS t_prcs_Pause;
END lab07toptemp_arch;
