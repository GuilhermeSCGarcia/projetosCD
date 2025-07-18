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
-- Generated on "06/04/2025 14:28:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PROVA01EX08
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PROVA01EX08_vhd_vec_tst IS
END PROVA01EX08_vhd_vec_tst;
ARCHITECTURE PROVA01EX08_arch OF PROVA01EX08_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLOCK : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT PROVA01EX08
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	C : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLOCK : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	X : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PROVA01EX08
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	C => C,
	CLOCK => CLOCK,
	D => D,
	X => X
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 10000 ps;
	CLOCK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
END PROVA01EX08_arch;
