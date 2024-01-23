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
-- Generated on "11/02/2023 15:12:44"
                                                            
-- Vhdl Test Bench template for design  :  alu
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_tst IS
END alu_vhd_tst;
ARCHITECTURE alu_arch OF alu_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL carry : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL cod_op : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL op1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL op2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ov : STD_LOGIC;
SIGNAL resultado : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL zeta : STD_LOGIC;
COMPONENT alu
	PORT (
	carry : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	cod_op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	op1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	op2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ov : OUT STD_LOGIC;
	resultado : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	zeta : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	carry => carry,
	clk => clk,
	cod_op => cod_op,
	op1 => op1,
	op2 => op2,
	ov => ov,
	resultado => resultado,
	zeta => zeta
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init; 
clks: PROCESS
BEGIN
		clk<= '0';
		wait for 10ns;
		clk<= '1';
		wait for 10ns;
END PROCESS clks;
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
		op1<= "00000010";
		op2<= "00000001";
		cod_op<= "001";
		wait for 100ns;
		op1<= "01111111";
		op2<= "01111111";
		wait for 100ns;
		op1<= "10100000";
		op2<= "10010000";
		wait for 100ns;
		op1<= "11111111";
		op2<= "11001110";
		wait for 100ns;
		op1<= "01100100";
		op2<= "10011100";
		wait for 100ns;
END PROCESS always;                                          
END alu_arch;
