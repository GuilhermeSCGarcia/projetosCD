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
-- Generated on "06/04/2025 16:23:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LAB05
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LAB05_vhd_vec_tst IS
END LAB05_vhd_vec_tst;
ARCHITECTURE LAB05_arch OF LAB05_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk1 : STD_LOGIC;
SIGNAL Saida : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT LAB05
	PORT (
	clk1 : IN STD_LOGIC;
	Saida : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LAB05
	PORT MAP (
-- list connections between master ports and signals
	clk1 => clk1,
	Saida => Saida
	);
END LAB05_arch;
