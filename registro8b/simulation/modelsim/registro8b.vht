-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/25/2023 17:46:37"
                                                            
-- Vhdl Test Bench template for design  :  registro8b
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registro8b_vhd_tst IS
END registro8b_vhd_tst;
ARCHITECTURE registro8b_arch OF registro8b_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
SIGNAL wr : STD_LOGIC;
COMPONENT registro8b
	PORT (
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : IN STD_LOGIC;
	wr : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : registro8b
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	data_in => data_in,
	data_out => data_out,
	en => en,
	wr => wr
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        clk<= '0';
		  wait for 10ns;
		  clk<= '1';
		  wait for 10ns;
END PROCESS always;       
proceso1 : PROCESS
BEGIN
			en<= '0';
			wr<= '0';
			wait for 100ns;
			en<= '1';
			wait for 100ns;
			wr<= '1';
			data_in<= "01001111";
			wait for 100ns;
			wr<= '0';
			wait for 100ns;
END PROCESS proceso1;
END registro8b_arch;
