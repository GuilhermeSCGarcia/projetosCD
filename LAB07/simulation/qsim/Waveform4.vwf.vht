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
-- Generated on "06/11/2025 10:09:43"
                                                             
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
SIGNAL clkcontador : STD_LOGIC;
SIGNAL CLKMEMORY : STD_LOGIC;
SIGNAL coocont2 : STD_LOGIC;
SIGNAL coutcont : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DC : STD_LOGIC;
SIGNAL E : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Enable_CONTADOR : STD_LOGIC;
SIGNAL MC : STD_LOGIC;
SIGNAL Pause : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Word : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT lab07toptemp
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	AD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLK : IN STD_LOGIC;
	clkcontador : IN STD_LOGIC;
	CLKMEMORY : IN STD_LOGIC;
	coocont2 : OUT STD_LOGIC;
	coutcont : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DC : OUT STD_LOGIC;
	E : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Enable_CONTADOR : IN STD_LOGIC;
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
	clkcontador => clkcontador,
	CLKMEMORY => CLKMEMORY,
	coocont2 => coocont2,
	coutcont => coutcont,
	DC => DC,
	E => E,
	Enable_CONTADOR => Enable_CONTADOR,
	MC => MC,
	Pause => Pause,
	S => S,
	Word => Word
	);

-- clkcontador
t_prcs_clkcontador: PROCESS
BEGIN
LOOP
	clkcontador <= '0';
	WAIT FOR 1000 ps;
	clkcontador <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkcontador;

-- Enable_CONTADOR
t_prcs_Enable_CONTADOR: PROCESS
BEGIN
	Enable_CONTADOR <= '1';
WAIT;
END PROCESS t_prcs_Enable_CONTADOR;
END lab07toptemp_arch;
