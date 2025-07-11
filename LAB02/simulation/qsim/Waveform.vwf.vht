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
-- Generated on "04/28/2025 10:13:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SOMADOR4BITS7SEG
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SOMADOR4BITS7SEG_vhd_vec_tst IS
END SOMADOR4BITS7SEG_vhd_vec_tst;
ARCHITECTURE SOMADOR4BITS7SEG_arch OF SOMADOR4BITS7SEG_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A0OUT : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A1OUT : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A2OUT : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL A3OUT : STD_LOGIC;
SIGNAL B0OUT : STD_LOGIC;
SIGNAL B1OUT : STD_LOGIC;
SIGNAL B2OUT : STD_LOGIC;
SIGNAL B3OUT : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL HEX00 : STD_LOGIC;
SIGNAL HEX01 : STD_LOGIC;
SIGNAL HEX02 : STD_LOGIC;
SIGNAL HEX03 : STD_LOGIC;
SIGNAL HEX04 : STD_LOGIC;
SIGNAL HEX05 : STD_LOGIC;
SIGNAL HEX06 : STD_LOGIC;
SIGNAL HEX10 : STD_LOGIC;
SIGNAL HEX11 : STD_LOGIC;
SIGNAL HEX12 : STD_LOGIC;
SIGNAL HEX13 : STD_LOGIC;
SIGNAL HEX14 : STD_LOGIC;
SIGNAL HEX15 : STD_LOGIC;
SIGNAL HEX16 : STD_LOGIC;
SIGNAL HEX20 : STD_LOGIC;
SIGNAL HEX21 : STD_LOGIC;
SIGNAL HEX22 : STD_LOGIC;
SIGNAL HEX23 : STD_LOGIC;
SIGNAL HEX24 : STD_LOGIC;
SIGNAL HEX25 : STD_LOGIC;
SIGNAL HEX26 : STD_LOGIC;
SIGNAL HEX30 : STD_LOGIC;
SIGNAL HEX31 : STD_LOGIC;
SIGNAL HEX32 : STD_LOGIC;
SIGNAL HEX33 : STD_LOGIC;
SIGNAL HEX34 : STD_LOGIC;
SIGNAL HEX35 : STD_LOGIC;
SIGNAL HEX36 : STD_LOGIC;
SIGNAL HEX40 : STD_LOGIC;
SIGNAL HEX41 : STD_LOGIC;
SIGNAL HEX42 : STD_LOGIC;
SIGNAL HEX43 : STD_LOGIC;
SIGNAL HEX44 : STD_LOGIC;
SIGNAL HEX45 : STD_LOGIC;
SIGNAL HEX46 : STD_LOGIC;
SIGNAL HEX50 : STD_LOGIC;
SIGNAL HEX51 : STD_LOGIC;
SIGNAL HEX52 : STD_LOGIC;
SIGNAL HEX53 : STD_LOGIC;
SIGNAL HEX54 : STD_LOGIC;
SIGNAL HEX55 : STD_LOGIC;
SIGNAL HEX56 : STD_LOGIC;
SIGNAL PB0 : STD_LOGIC;
SIGNAL PB1 : STD_LOGIC;
SIGNAL S00 : STD_LOGIC;
SIGNAL S01 : STD_LOGIC;
SIGNAL S02 : STD_LOGIC;
SIGNAL S03 : STD_LOGIC;
SIGNAL SW4 : STD_LOGIC;
COMPONENT SOMADOR4BITS7SEG
	PORT (
	A0 : IN STD_LOGIC;
	A0OUT : OUT STD_LOGIC;
	A1 : IN STD_LOGIC;
	A1OUT : OUT STD_LOGIC;
	A2 : IN STD_LOGIC;
	A2OUT : OUT STD_LOGIC;
	A3 : IN STD_LOGIC;
	A3OUT : OUT STD_LOGIC;
	B0OUT : OUT STD_LOGIC;
	B1OUT : OUT STD_LOGIC;
	B2OUT : OUT STD_LOGIC;
	B3OUT : OUT STD_LOGIC;
	Cout : OUT STD_LOGIC;
	HEX00 : OUT STD_LOGIC;
	HEX01 : OUT STD_LOGIC;
	HEX02 : OUT STD_LOGIC;
	HEX03 : OUT STD_LOGIC;
	HEX04 : OUT STD_LOGIC;
	HEX05 : OUT STD_LOGIC;
	HEX06 : OUT STD_LOGIC;
	HEX10 : OUT STD_LOGIC;
	HEX11 : OUT STD_LOGIC;
	HEX12 : OUT STD_LOGIC;
	HEX13 : OUT STD_LOGIC;
	HEX14 : OUT STD_LOGIC;
	HEX15 : OUT STD_LOGIC;
	HEX16 : OUT STD_LOGIC;
	HEX20 : OUT STD_LOGIC;
	HEX21 : OUT STD_LOGIC;
	HEX22 : OUT STD_LOGIC;
	HEX23 : OUT STD_LOGIC;
	HEX24 : OUT STD_LOGIC;
	HEX25 : OUT STD_LOGIC;
	HEX26 : OUT STD_LOGIC;
	HEX30 : OUT STD_LOGIC;
	HEX31 : OUT STD_LOGIC;
	HEX32 : OUT STD_LOGIC;
	HEX33 : OUT STD_LOGIC;
	HEX34 : OUT STD_LOGIC;
	HEX35 : OUT STD_LOGIC;
	HEX36 : OUT STD_LOGIC;
	HEX40 : OUT STD_LOGIC;
	HEX41 : OUT STD_LOGIC;
	HEX42 : OUT STD_LOGIC;
	HEX43 : OUT STD_LOGIC;
	HEX44 : OUT STD_LOGIC;
	HEX45 : OUT STD_LOGIC;
	HEX46 : OUT STD_LOGIC;
	HEX50 : OUT STD_LOGIC;
	HEX51 : OUT STD_LOGIC;
	HEX52 : OUT STD_LOGIC;
	HEX53 : OUT STD_LOGIC;
	HEX54 : OUT STD_LOGIC;
	HEX55 : OUT STD_LOGIC;
	HEX56 : OUT STD_LOGIC;
	PB0 : IN STD_LOGIC;
	PB1 : IN STD_LOGIC;
	S00 : OUT STD_LOGIC;
	S01 : OUT STD_LOGIC;
	S02 : OUT STD_LOGIC;
	S03 : OUT STD_LOGIC;
	SW4 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SOMADOR4BITS7SEG
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A0OUT => A0OUT,
	A1 => A1,
	A1OUT => A1OUT,
	A2 => A2,
	A2OUT => A2OUT,
	A3 => A3,
	A3OUT => A3OUT,
	B0OUT => B0OUT,
	B1OUT => B1OUT,
	B2OUT => B2OUT,
	B3OUT => B3OUT,
	Cout => Cout,
	HEX00 => HEX00,
	HEX01 => HEX01,
	HEX02 => HEX02,
	HEX03 => HEX03,
	HEX04 => HEX04,
	HEX05 => HEX05,
	HEX06 => HEX06,
	HEX10 => HEX10,
	HEX11 => HEX11,
	HEX12 => HEX12,
	HEX13 => HEX13,
	HEX14 => HEX14,
	HEX15 => HEX15,
	HEX16 => HEX16,
	HEX20 => HEX20,
	HEX21 => HEX21,
	HEX22 => HEX22,
	HEX23 => HEX23,
	HEX24 => HEX24,
	HEX25 => HEX25,
	HEX26 => HEX26,
	HEX30 => HEX30,
	HEX31 => HEX31,
	HEX32 => HEX32,
	HEX33 => HEX33,
	HEX34 => HEX34,
	HEX35 => HEX35,
	HEX36 => HEX36,
	HEX40 => HEX40,
	HEX41 => HEX41,
	HEX42 => HEX42,
	HEX43 => HEX43,
	HEX44 => HEX44,
	HEX45 => HEX45,
	HEX46 => HEX46,
	HEX50 => HEX50,
	HEX51 => HEX51,
	HEX52 => HEX52,
	HEX53 => HEX53,
	HEX54 => HEX54,
	HEX55 => HEX55,
	HEX56 => HEX56,
	PB0 => PB0,
	PB1 => PB1,
	S00 => S00,
	S01 => S01,
	S02 => S02,
	S03 => S03,
	SW4 => SW4
	);

-- A3
t_prcs_A3: PROCESS
BEGIN
	A3 <= '0';
	WAIT FOR 430000 ps;
	A3 <= '1';
	WAIT FOR 40000 ps;
	A3 <= '0';
	WAIT FOR 80000 ps;
	A3 <= '1';
	WAIT FOR 60000 ps;
	A3 <= '0';
	WAIT FOR 230000 ps;
	A3 <= '1';
	WAIT FOR 20000 ps;
	A3 <= '0';
WAIT;
END PROCESS t_prcs_A3;

-- A2
t_prcs_A2: PROCESS
BEGIN
	A2 <= '0';
	WAIT FOR 220000 ps;
	A2 <= '1';
	WAIT FOR 50000 ps;
	A2 <= '0';
	WAIT FOR 280000 ps;
	A2 <= '1';
	WAIT FOR 60000 ps;
	A2 <= '0';
	WAIT FOR 130000 ps;
	A2 <= '1';
	WAIT FOR 30000 ps;
	A2 <= '0';
	WAIT FOR 70000 ps;
	A2 <= '1';
	WAIT FOR 20000 ps;
	A2 <= '0';
WAIT;
END PROCESS t_prcs_A2;

-- A1
t_prcs_A1: PROCESS
BEGIN
	A1 <= '0';
	WAIT FOR 50000 ps;
	A1 <= '1';
	WAIT FOR 40000 ps;
	A1 <= '0';
	WAIT FOR 260000 ps;
	A1 <= '1';
	WAIT FOR 30000 ps;
	A1 <= '0';
	WAIT FOR 170000 ps;
	A1 <= '1';
	WAIT FOR 60000 ps;
	A1 <= '0';
	WAIT FOR 130000 ps;
	A1 <= '1';
	WAIT FOR 30000 ps;
	A1 <= '0';
WAIT;
END PROCESS t_prcs_A1;

-- A0
t_prcs_A0: PROCESS
BEGIN
	A0 <= '0';
	WAIT FOR 350000 ps;
	A0 <= '1';
	WAIT FOR 30000 ps;
	A0 <= '0';
	WAIT FOR 170000 ps;
	A0 <= '1';
	WAIT FOR 60000 ps;
	A0 <= '0';
	WAIT FOR 230000 ps;
	A0 <= '1';
	WAIT FOR 20000 ps;
	A0 <= '0';
WAIT;
END PROCESS t_prcs_A0;

-- PB0
t_prcs_PB0: PROCESS
BEGIN
	PB0 <= '0';
	WAIT FOR 70000 ps;
	PB0 <= '1';
	WAIT FOR 20000 ps;
	PB0 <= '0';
	WAIT FOR 140000 ps;
	PB0 <= '1';
	WAIT FOR 30000 ps;
	PB0 <= '0';
	WAIT FOR 90000 ps;
	PB0 <= '1';
	WAIT FOR 50000 ps;
	PB0 <= '0';
	WAIT FOR 40000 ps;
	PB0 <= '1';
	WAIT FOR 10000 ps;
	PB0 <= '0';
	WAIT FOR 120000 ps;
	PB0 <= '1';
	WAIT FOR 20000 ps;
	PB0 <= '0';
	WAIT FOR 160000 ps;
	PB0 <= '1';
	WAIT FOR 10000 ps;
	PB0 <= '0';
	WAIT FOR 90000 ps;
	PB0 <= '1';
	WAIT FOR 10000 ps;
	PB0 <= '0';
WAIT;
END PROCESS t_prcs_PB0;

-- PB1
t_prcs_PB1: PROCESS
BEGIN
	PB1 <= '0';
	WAIT FOR 410000 ps;
	PB1 <= '1';
	WAIT FOR 30000 ps;
	PB1 <= '0';
	WAIT FOR 210000 ps;
	PB1 <= '1';
	WAIT FOR 30000 ps;
	PB1 <= '0';
WAIT;
END PROCESS t_prcs_PB1;

-- SW4
t_prcs_SW4: PROCESS
BEGIN
	SW4 <= '1';
WAIT;
END PROCESS t_prcs_SW4;
END SOMADOR4BITS7SEG_arch;
