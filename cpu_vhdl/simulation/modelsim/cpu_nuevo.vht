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
-- Generated on "11/16/2023 12:14:57"
                                                            
-- Vhdl Test Bench template for design  :  cpu_nuevo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_nuevo_vhd_tst IS
END cpu_nuevo_vhd_tst;
ARCHITECTURE cpu_nuevo_arch OF cpu_nuevo_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL control : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL salida : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT cpu_nuevo
	PORT (
	control : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	salida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : cpu_nuevo
	PORT MAP (
-- list connections between master ports and signals
	control => control,
	data_in => data_in,
	salida => salida
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	control(2)<='0';
	wait for 1000ns;
	control(2)<='1';
	wait for 430ns;
	control(2)<='0';
	wait for 70ns;
	control(2)<='1';
	--wait for 4000ns;
WAIT;                                                       
END PROCESS init;                                           
clock : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
   control(0)<='0';
	wait for 10ns;
	control(0)<='1';
	wait for 10ns;                                                       
END PROCESS clock;
programa: PROCESS
BEGIN
	data_in<="ZZZZZZZZ";
	wait for 900ns;
	control(1)<='1';
	wait for 170ns;
	data_in<="00001000";
	wait for 20ns;
	data_in<="ZZZZZZZZ";
	wait for 60ns;
	data_in<="00101100";
	wait for 20ns;
	data_in<="ZZZZZZZZ";
	wait for 60ns;
	data_in<="00001000";
	wait for 20ns;
	data_in<="ZZZZZZZZ";
	wait for 60ns;
	data_in<="00011001";
	wait for 20ns;
	data_in<="ZZZZZZZZ";
	wait for 60ns;
	data_in<="00101110";
	wait for 20ns;
	data_in<="ZZZZZZZZ";
	wait for 20ns;
	control(1)<='0';
--	wait for 100ns;
--	data_in<="00000000";
--	wait for 400ns;
--	data_in<="00101100";
--	wait for 500ns;
--	data_in<="01001010";
--	wait for 500ns;
--	data_in<="00011001";
--	wait for 500ns;
--	data_in<="00101110";
--	wait for 500ns;
--	data_in<="ZZZZZZZZ";
	wait;
	
wait;
END PROCESS programa;                                          
END cpu_nuevo_arch;
