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
-- Generated on "06/02/2025 22:09:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LAB04_MAQUINA_DE_ESTADO
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LAB04_MAQUINA_DE_ESTADO_vhd_vec_tst IS
END LAB04_MAQUINA_DE_ESTADO_vhd_vec_tst;
ARCHITECTURE LAB04_MAQUINA_DE_ESTADO_arch OF LAB04_MAQUINA_DE_ESTADO_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL PB0 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL S10 : STD_LOGIC;
SIGNAL S11 : STD_LOGIC;
SIGNAL S12 : STD_LOGIC;
SIGNAL S13 : STD_LOGIC;
SIGNAL S14 : STD_LOGIC;
SIGNAL S15 : STD_LOGIC;
SIGNAL S16 : STD_LOGIC;
COMPONENT LAB04_MAQUINA_DE_ESTADO
	PORT (
	Clock : IN STD_LOGIC;
	PB0 : IN STD_LOGIC;
	S0 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC;
	S10 : OUT STD_LOGIC;
	S11 : OUT STD_LOGIC;
	S12 : OUT STD_LOGIC;
	S13 : OUT STD_LOGIC;
	S14 : OUT STD_LOGIC;
	S15 : OUT STD_LOGIC;
	S16 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LAB04_MAQUINA_DE_ESTADO
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	PB0 => PB0,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	S10 => S10,
	S11 => S11,
	S12 => S12,
	S13 => S13,
	S14 => S14,
	S15 => S15,
	S16 => S16
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
END LAB04_MAQUINA_DE_ESTADO_arch;
