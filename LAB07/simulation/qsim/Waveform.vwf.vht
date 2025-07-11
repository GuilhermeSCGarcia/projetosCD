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
-- Generated on "06/08/2025 16:57:08"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL clkstop : STD_LOGIC;
SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Mode : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT lab07toptemp
	PORT (
	clk : IN STD_LOGIC;
	clkstop : OUT STD_LOGIC;
	Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Mode : IN STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab07toptemp
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clkstop => clkstop,
	Data => Data,
	Mode => Mode,
	S => S
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 40000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	clk <= '0';
	WAIT FOR 112500 ps;
	clk <= '1';
	WAIT FOR 12500 ps;
	FOR i IN 1 TO 26
	LOOP
		clk <= '0';
		WAIT FOR 12500 ps;
		clk <= '1';
		WAIT FOR 12500 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- Mode
t_prcs_Mode: PROCESS
BEGIN
	Mode <= '0';
	WAIT FOR 20000 ps;
	Mode <= '1';
	WAIT FOR 60000 ps;
	Mode <= '0';
WAIT;
END PROCESS t_prcs_Mode;
-- Data[7]
t_prcs_Data_7: PROCESS
BEGIN
	Data(7) <= '1';
WAIT;
END PROCESS t_prcs_Data_7;
-- Data[6]
t_prcs_Data_6: PROCESS
BEGIN
	Data(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_6;
-- Data[5]
t_prcs_Data_5: PROCESS
BEGIN
	Data(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_5;
-- Data[4]
t_prcs_Data_4: PROCESS
BEGIN
	Data(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_4;
-- Data[3]
t_prcs_Data_3: PROCESS
BEGIN
	Data(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_3;
-- Data[2]
t_prcs_Data_2: PROCESS
BEGIN
	Data(2) <= '1';
WAIT;
END PROCESS t_prcs_Data_2;
-- Data[1]
t_prcs_Data_1: PROCESS
BEGIN
	Data(1) <= '1';
WAIT;
END PROCESS t_prcs_Data_1;
-- Data[0]
t_prcs_Data_0: PROCESS
BEGIN
	Data(0) <= '0';
WAIT;
END PROCESS t_prcs_Data_0;
END lab07toptemp_arch;
