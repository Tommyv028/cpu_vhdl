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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/22/2024 18:33:22"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu_nuevo IS
    PORT (
	data_in : IN std_logic_vector(7 DOWNTO 0);
	control : IN std_logic_vector(2 DOWNTO 0);
	salida : OUT std_logic_vector(7 DOWNTO 0)
	);
END cpu_nuevo;

-- Design Ports Information
-- salida[0]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[2]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[4]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[5]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[6]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[7]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[2]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[1]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu_nuevo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \estadoSiguiente.escribir_op2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoSiguiente.escribir_salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoSiguiente.escribir_op1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr43~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr42~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \salida~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \in_data[5]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \modulo_alu|Add0~0_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~8_combout\ : std_logic;
SIGNAL \modulo_alu|Add1~10_combout\ : std_logic;
SIGNAL \modulo_alu|Add0~10_combout\ : std_logic;
SIGNAL \r_ri|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Mux10~0_combout\ : std_logic;
SIGNAL \modulo_alu|Mux7~0_combout\ : std_logic;
SIGNAL \modulo_alu|Mux4~0_combout\ : std_logic;
SIGNAL \modulo_alu|Mux3~0_combout\ : std_logic;
SIGNAL \codigo_operacion_alu[2]~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \r_ram|ram~15_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \op_a_cargar~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~68_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~62_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ram~regout\ : std_logic;
SIGNAL \control[0]~clkctrl_outclk\ : std_logic;
SIGNAL \WideOr42~0_combout\ : std_logic;
SIGNAL \WideOr42~0clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~0_combout\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~regout\ : std_logic;
SIGNAL \WideOr41~0_combout\ : std_logic;
SIGNAL \WideOr40~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~48_combout\ : std_logic;
SIGNAL \estadoSiguiente.inicio~regout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \r_pc|registro[5]~feeder_combout\ : std_logic;
SIGNAL \r_pc|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~63_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_ri~regout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \r_ri|registro[7]~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \estadoSiguiente.espera~regout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \r_pc|registro[0]~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \op_a_cargar~1_combout\ : std_logic;
SIGNAL \op_a_cargar~regout\ : std_logic;
SIGNAL \estadoSiguiente~67_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_op2~regout\ : std_logic;
SIGNAL \estadoSiguiente~61_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op2~regout\ : std_logic;
SIGNAL \estadoSiguiente~70_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_op2~regout\ : std_logic;
SIGNAL \estadoSiguiente~65_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_op2~regout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \estadoSiguiente~56_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_status~regout\ : std_logic;
SIGNAL \estadoSiguiente~54_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_resultado~regout\ : std_logic;
SIGNAL \estadoSiguiente~57_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_status~regout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_pc~regout\ : std_logic;
SIGNAL \estadoSiguiente~49_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~55_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~50_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~47_combout\ : std_logic;
SIGNAL \estadoSiguiente.incrementar_pc~regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~53_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~72_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~71_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~66_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~60_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op1~regout\ : std_logic;
SIGNAL \WideOr43~0_combout\ : std_logic;
SIGNAL \WideOr43~0clkctrl_outclk\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \mostrar~0_combout\ : std_logic;
SIGNAL \mostrar~1_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_salida~regout\ : std_logic;
SIGNAL \estadoSiguiente~46_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_salida~regout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_salida~clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op1~clkctrl_outclk\ : std_logic;
SIGNAL \in_data[5]~0_combout\ : std_logic;
SIGNAL \in_data[5]~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \r_data|registro[7]~0_combout\ : std_logic;
SIGNAL \r_data|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \estadoSiguiente~69_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~64_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_op1~regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~59_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_carga_alu~regout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \r_operador1|registro[7]~0_combout\ : std_logic;
SIGNAL \r_operador1|data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_operador1|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \codigo_operacion_alu[2]~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux10~2_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op2~clkctrl_outclk\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \r_operador2|registro[7]~0_combout\ : std_logic;
SIGNAL \r_operador2|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add2~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \codigo_operacion_alu[0]~feeder_combout\ : std_logic;
SIGNAL \modulo_alu|Mux10~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux10~3_combout\ : std_logic;
SIGNAL \modulo_alu|Mux10~4_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[0]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|registro[0]~feeder_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \estadoSiguiente~52_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_resultado~regout\ : std_logic;
SIGNAL \estadoSiguiente~51_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_resultado~regout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \r_resultado|registro[0]~0_combout\ : std_logic;
SIGNAL \r_resultado|data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \mostrar~2_combout\ : std_logic;
SIGNAL \mostrar~regout\ : std_logic;
SIGNAL \in_salida~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~45_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_salida~regout\ : std_logic;
SIGNAL \estadoSiguiente~43_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_salida~regout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \estadoSiguiente~44_combout\ : std_logic;
SIGNAL \estadoSiguiente.desactivar_salida~regout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \r_salida|registro[0]~0_combout\ : std_logic;
SIGNAL \r_salida|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \salida~0_combout\ : std_logic;
SIGNAL \salida~0clkctrl_outclk\ : std_logic;
SIGNAL \salida[0]$latch~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \r_data|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|resultado[1]~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \r_data|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add1~1_cout\ : std_logic;
SIGNAL \modulo_alu|Add1~2_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~1\ : std_logic;
SIGNAL \modulo_alu|Add2~2_combout\ : std_logic;
SIGNAL \r_operador1|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add0~1\ : std_logic;
SIGNAL \modulo_alu|Add0~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux9~0_combout\ : std_logic;
SIGNAL \modulo_alu|Mux9~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux9~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux9~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[1]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \r_data|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \r_data|data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add0~3\ : std_logic;
SIGNAL \modulo_alu|Add0~5\ : std_logic;
SIGNAL \modulo_alu|Add0~6_combout\ : std_logic;
SIGNAL \r_operador2|data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_operador2|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_operador2|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add1~3\ : std_logic;
SIGNAL \modulo_alu|Add1~5\ : std_logic;
SIGNAL \modulo_alu|Add1~6_combout\ : std_logic;
SIGNAL \modulo_alu|Add1~4_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~3\ : std_logic;
SIGNAL \modulo_alu|Add2~5\ : std_logic;
SIGNAL \modulo_alu|Add2~6_combout\ : std_logic;
SIGNAL \modulo_alu|Mux7~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux7~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux7~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[3]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \r_data|data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add0~7\ : std_logic;
SIGNAL \modulo_alu|Add0~9\ : std_logic;
SIGNAL \modulo_alu|Add0~11\ : std_logic;
SIGNAL \modulo_alu|Add0~12_combout\ : std_logic;
SIGNAL \r_operador2|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add1~7\ : std_logic;
SIGNAL \modulo_alu|Add1~9\ : std_logic;
SIGNAL \modulo_alu|Add1~11\ : std_logic;
SIGNAL \modulo_alu|Add1~12_combout\ : std_logic;
SIGNAL \r_operador1|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add1~8_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~7\ : std_logic;
SIGNAL \modulo_alu|Add2~9\ : std_logic;
SIGNAL \modulo_alu|Add2~11\ : std_logic;
SIGNAL \modulo_alu|Add2~12_combout\ : std_logic;
SIGNAL \modulo_alu|Mux4~1_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[1]~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux4~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux4~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[6]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|registro[6]~feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \r_data|data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add0~13\ : std_logic;
SIGNAL \modulo_alu|Add0~14_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~13\ : std_logic;
SIGNAL \modulo_alu|Add2~14_combout\ : std_logic;
SIGNAL \modulo_alu|Mux3~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux3~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux3~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[7]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \r_data|data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add1~13\ : std_logic;
SIGNAL \modulo_alu|Add1~14_combout\ : std_logic;
SIGNAL \modulo_alu|Mux0~0_combout\ : std_logic;
SIGNAL \modulo_alu|Mux0~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux0~2_combout\ : std_logic;
SIGNAL \modulo_alu|ov~regout\ : std_logic;
SIGNAL \estadoSiguiente~58_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_status~regout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \r_status|registro[1]~0_combout\ : std_logic;
SIGNAL \r_status|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \in_salida~1_combout\ : std_logic;
SIGNAL \r_salida|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \salida[1]$latch~combout\ : std_logic;
SIGNAL \modulo_alu|Mux8~0_combout\ : std_logic;
SIGNAL \modulo_alu|Add0~4_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~4_combout\ : std_logic;
SIGNAL \modulo_alu|Mux8~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux8~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux8~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[2]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|registro[2]~feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add2~15\ : std_logic;
SIGNAL \modulo_alu|Add2~16_combout\ : std_logic;
SIGNAL \modulo_alu|carry~0_combout\ : std_logic;
SIGNAL \modulo_alu|Add0~15\ : std_logic;
SIGNAL \modulo_alu|Add0~16_combout\ : std_logic;
SIGNAL \modulo_alu|carry~regout\ : std_logic;
SIGNAL \r_status|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \in_salida~2_combout\ : std_logic;
SIGNAL \r_salida|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \salida[2]$latch~combout\ : std_logic;
SIGNAL \in_salida~3_combout\ : std_logic;
SIGNAL \r_salida|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \salida[3]$latch~combout\ : std_logic;
SIGNAL \modulo_alu|Mux6~0_combout\ : std_logic;
SIGNAL \r_operador2|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \modulo_alu|Add0~8_combout\ : std_logic;
SIGNAL \modulo_alu|Mux6~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux6~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux6~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[4]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|registro[4]~feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \in_salida~4_combout\ : std_logic;
SIGNAL \r_salida|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \salida[4]$latch~combout\ : std_logic;
SIGNAL \modulo_alu|Mux5~0_combout\ : std_logic;
SIGNAL \modulo_alu|Add2~10_combout\ : std_logic;
SIGNAL \modulo_alu|Mux5~1_combout\ : std_logic;
SIGNAL \modulo_alu|Mux5~2_combout\ : std_logic;
SIGNAL \modulo_alu|Mux5~3_combout\ : std_logic;
SIGNAL \modulo_alu|resultado[5]~reg0_regout\ : std_logic;
SIGNAL \r_resultado|registro[5]~feeder_combout\ : std_logic;
SIGNAL \r_resultado|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \in_salida~5_combout\ : std_logic;
SIGNAL \r_salida|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \salida[5]$latch~combout\ : std_logic;
SIGNAL \in_salida~6_combout\ : std_logic;
SIGNAL \r_salida|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \salida[6]$latch~combout\ : std_logic;
SIGNAL \in_salida~7_combout\ : std_logic;
SIGNAL \r_salida|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \salida[7]$latch~combout\ : std_logic;
SIGNAL \r_operador2|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_resultado|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_status|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_ri|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_data|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_pc|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_salida|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_operador1|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \control~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL in_op2 : std_logic_vector(7 DOWNTO 0);
SIGNAL in_op1 : std_logic_vector(7 DOWNTO 0);
SIGNAL in_salida : std_logic_vector(7 DOWNTO 0);
SIGNAL donde_leer : std_logic_vector(1 DOWNTO 0);
SIGNAL codigo_operacion_alu : std_logic_vector(2 DOWNTO 0);
SIGNAL in_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL posicion_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL in_status : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ri : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_control~combout\ : std_logic_vector(2 DOWNTO 2);
SIGNAL ALT_INV_codigo_operacion_alu : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
ww_control <= control;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (in_ram(7) & in_ram(6) & in_ram(5) & in_ram(4) & in_ram(3) & in_ram(2) & in_ram(1) & in_ram(0));

\r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (posicion_ram(5) & posicion_ram(4) & posicion_ram(3) & posicion_ram(2) & posicion_ram(1) & posicion_ram(0));

\r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (posicion_ram(5) & posicion_ram(4) & posicion_ram(3) & posicion_ram(2) & posicion_ram(1) & posicion_ram(0));

\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\r_ram|ram_rtl_0|auto_generated|ram_block1a1\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\r_ram|ram_rtl_0|auto_generated|ram_block1a2\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\r_ram|ram_rtl_0|auto_generated|ram_block1a3\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\r_ram|ram_rtl_0|auto_generated|ram_block1a4\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\r_ram|ram_rtl_0|auto_generated|ram_block1a5\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\r_ram|ram_rtl_0|auto_generated|ram_block1a6\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\r_ram|ram_rtl_0|auto_generated|ram_block1a7\ <= \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\estadoSiguiente.escribir_op2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_op2~regout\);

\estadoSiguiente.escribir_salida~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_salida~regout\);

\estadoSiguiente.escribir_op1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_op1~regout\);

\control[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \control~combout\(0));

\WideOr43~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr43~0_combout\);

\WideOr42~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr42~0_combout\);

\salida~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \salida~0_combout\);

\in_data[5]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \in_data[5]~0_combout\);
\ALT_INV_control~combout\(2) <= NOT \control~combout\(2);
ALT_INV_codigo_operacion_alu(0) <= NOT codigo_operacion_alu(0);

-- Location: LCCOMB_X13_Y11_N10
\modulo_alu|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~0_combout\ = (\r_operador2|data_out[0]~reg0_regout\ & (\r_operador1|data_out[0]~reg0_regout\ $ (VCC))) # (!\r_operador2|data_out[0]~reg0_regout\ & (\r_operador1|data_out[0]~reg0_regout\ & VCC))
-- \modulo_alu|Add0~1\ = CARRY((\r_operador2|data_out[0]~reg0_regout\ & \r_operador1|data_out[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[0]~reg0_regout\,
	datab => \r_operador1|data_out[0]~reg0_regout\,
	datad => VCC,
	combout => \modulo_alu|Add0~0_combout\,
	cout => \modulo_alu|Add0~1\);

-- Location: LCCOMB_X14_Y11_N20
\modulo_alu|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~8_combout\ = ((\r_operador1|data_out[4]~reg0_regout\ $ (\modulo_alu|Add1~8_combout\ $ (!\modulo_alu|Add2~7\)))) # (GND)
-- \modulo_alu|Add2~9\ = CARRY((\r_operador1|data_out[4]~reg0_regout\ & ((\modulo_alu|Add1~8_combout\) # (!\modulo_alu|Add2~7\))) # (!\r_operador1|data_out[4]~reg0_regout\ & (\modulo_alu|Add1~8_combout\ & !\modulo_alu|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[4]~reg0_regout\,
	datab => \modulo_alu|Add1~8_combout\,
	datad => VCC,
	cin => \modulo_alu|Add2~7\,
	combout => \modulo_alu|Add2~8_combout\,
	cout => \modulo_alu|Add2~9\);

-- Location: LCCOMB_X15_Y11_N26
\modulo_alu|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~10_combout\ = (\r_operador2|data_out[5]~reg0_regout\ & ((\modulo_alu|Add1~9\) # (GND))) # (!\r_operador2|data_out[5]~reg0_regout\ & (!\modulo_alu|Add1~9\))
-- \modulo_alu|Add1~11\ = CARRY((\r_operador2|data_out[5]~reg0_regout\) # (!\modulo_alu|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[5]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add1~9\,
	combout => \modulo_alu|Add1~10_combout\,
	cout => \modulo_alu|Add1~11\);

-- Location: LCCOMB_X13_Y11_N20
\modulo_alu|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~10_combout\ = (\r_operador1|data_out[5]~reg0_regout\ & ((\r_operador2|data_out[5]~reg0_regout\ & (\modulo_alu|Add0~9\ & VCC)) # (!\r_operador2|data_out[5]~reg0_regout\ & (!\modulo_alu|Add0~9\)))) # (!\r_operador1|data_out[5]~reg0_regout\ 
-- & ((\r_operador2|data_out[5]~reg0_regout\ & (!\modulo_alu|Add0~9\)) # (!\r_operador2|data_out[5]~reg0_regout\ & ((\modulo_alu|Add0~9\) # (GND)))))
-- \modulo_alu|Add0~11\ = CARRY((\r_operador1|data_out[5]~reg0_regout\ & (!\r_operador2|data_out[5]~reg0_regout\ & !\modulo_alu|Add0~9\)) # (!\r_operador1|data_out[5]~reg0_regout\ & ((!\modulo_alu|Add0~9\) # (!\r_operador2|data_out[5]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[5]~reg0_regout\,
	datab => \r_operador2|data_out[5]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~9\,
	combout => \modulo_alu|Add0~10_combout\,
	cout => \modulo_alu|Add0~11\);

-- Location: LCFF_X21_Y7_N21
\r_ri|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[1]~reg0_regout\);

-- Location: LCFF_X22_Y7_N5
\r_ri|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(1),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(1));

-- Location: LCCOMB_X12_Y11_N12
\modulo_alu|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux10~0_combout\ = (codigo_operacion_alu(2) & (\r_operador1|data_out[1]~reg0_regout\)) # (!codigo_operacion_alu(2) & ((\r_operador2|data_out[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[1]~reg0_regout\,
	datab => codigo_operacion_alu(2),
	datac => \r_operador2|data_out[0]~reg0_regout\,
	combout => \modulo_alu|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y11_N6
\modulo_alu|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux7~0_combout\ = (codigo_operacion_alu(1) & ((\r_operador2|data_out[3]~reg0_regout\ & ((\r_operador1|data_out[3]~reg0_regout\) # (!codigo_operacion_alu(0)))) # (!\r_operador2|data_out[3]~reg0_regout\ & (\r_operador1|data_out[3]~reg0_regout\ & 
-- !codigo_operacion_alu(0))))) # (!codigo_operacion_alu(1) & (((codigo_operacion_alu(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[3]~reg0_regout\,
	datab => codigo_operacion_alu(1),
	datac => \r_operador1|data_out[3]~reg0_regout\,
	datad => codigo_operacion_alu(0),
	combout => \modulo_alu|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y11_N6
\modulo_alu|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux4~0_combout\ = (codigo_operacion_alu(1) & ((\r_operador2|data_out[6]~reg0_regout\ & ((\r_operador1|data_out[6]~reg0_regout\) # (!codigo_operacion_alu(0)))) # (!\r_operador2|data_out[6]~reg0_regout\ & (\r_operador1|data_out[6]~reg0_regout\ & 
-- !codigo_operacion_alu(0))))) # (!codigo_operacion_alu(1) & (((codigo_operacion_alu(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[6]~reg0_regout\,
	datab => \r_operador1|data_out[6]~reg0_regout\,
	datac => codigo_operacion_alu(1),
	datad => codigo_operacion_alu(0),
	combout => \modulo_alu|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\modulo_alu|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux3~0_combout\ = (codigo_operacion_alu(1) & ((\r_operador1|data_out[7]~reg0_regout\ & ((\r_operador2|data_out[7]~reg0_regout\) # (!codigo_operacion_alu(0)))) # (!\r_operador1|data_out[7]~reg0_regout\ & (\r_operador2|data_out[7]~reg0_regout\ & 
-- !codigo_operacion_alu(0))))) # (!codigo_operacion_alu(1) & (((codigo_operacion_alu(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[7]~reg0_regout\,
	datab => \r_operador2|data_out[7]~reg0_regout\,
	datac => codigo_operacion_alu(1),
	datad => codigo_operacion_alu(0),
	combout => \modulo_alu|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y7_N24
\codigo_operacion_alu[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \codigo_operacion_alu[2]~0_combout\ = (\r_ri|data_out[5]~reg0_regout\ & (((!\r_ri|data_out[6]~reg0_regout\)))) # (!\r_ri|data_out[5]~reg0_regout\ & (\r_ri|data_out[6]~reg0_regout\ & ((!\r_ri|data_out[3]~reg0_regout\) # (!\r_ri|data_out[4]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[5]~reg0_regout\,
	datab => \r_ri|data_out[4]~reg0_regout\,
	datac => \r_ri|data_out[3]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \codigo_operacion_alu[2]~0_combout\);

-- Location: LCCOMB_X21_Y7_N20
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\estadoSiguiente.activar_leer_ri~regout\ & (!\estadoSiguiente.activar_esc_salida~regout\ & !\estadoSiguiente.leer_ri~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_ri~regout\,
	datab => \estadoSiguiente.activar_esc_salida~regout\,
	datad => \estadoSiguiente.leer_ri~regout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X22_Y7_N30
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\estadoSiguiente.escribir_op2~regout\ & (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datab => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X20_Y7_N26
\r_ram|ram~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ram|ram~15_combout\ = (\Selector8~2_combout\ & \Selector7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector8~2_combout\,
	datad => \Selector7~2_combout\,
	combout => \r_ram|ram~15_combout\);

-- Location: LCCOMB_X20_Y7_N8
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((!\estadoSiguiente.incrementar_pc~regout\ & (!\estadoSiguiente.espera~regout\ & \Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \Selector7~2_combout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X20_Y7_N12
\Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~1_combout\) # ((\estadoSiguiente.activar_esc_data~regout\) # (\estadoSiguiente.activar_leer_ram~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector7~1_combout\,
	datac => \estadoSiguiente.activar_esc_data~regout\,
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X19_Y7_N4
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!\estadoSiguiente.activar_esc_data~regout\ & (!\estadoSiguiente.espera~regout\ & (!\estadoSiguiente.incrementar_pc~regout\ & !\estadoSiguiente.activar_leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_data~regout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X20_Y7_N30
\Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((\Selector8~2_combout\ & \Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~2_combout\,
	datab => \Selector8~1_combout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X26_Y7_N20
\op_a_cargar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_a_cargar~0_combout\ = (\r_ri|data_out[4]~reg0_regout\ & (\r_ri|data_out[6]~reg0_regout\ $ (((!\r_ri|data_out[5]~reg0_regout\ & !\r_ri|data_out[3]~reg0_regout\))))) # (!\r_ri|data_out[4]~reg0_regout\ & (!\r_ri|data_out[5]~reg0_regout\ & 
-- (\r_ri|data_out[3]~reg0_regout\ & !\r_ri|data_out[6]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[5]~reg0_regout\,
	datab => \r_ri|data_out[4]~reg0_regout\,
	datac => \r_ri|data_out[3]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \op_a_cargar~0_combout\);

-- Location: LCCOMB_X22_Y7_N4
\in_ri[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(1) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector21~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(1),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector21~0_combout\,
	combout => in_ri(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_control(2),
	combout => \control~combout\(2));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_control(1),
	combout => \control~combout\(1));

-- Location: LCCOMB_X19_Y7_N2
\estadoSiguiente~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~68_combout\ = (\estadoSiguiente.activar_leer_pc~regout\ & (!\control~combout\(1) & \control~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_pc~regout\,
	datac => \control~combout\(1),
	datad => \control~combout\(2),
	combout => \estadoSiguiente~68_combout\);

-- Location: LCFF_X19_Y7_N3
\estadoSiguiente.activar_leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_ram~regout\);

-- Location: LCCOMB_X19_Y7_N0
\estadoSiguiente~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~62_combout\ = (\estadoSiguiente.activar_leer_ram~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_ram~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~62_combout\);

-- Location: LCFF_X24_Y7_N15
\estadoSiguiente.leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \estadoSiguiente~62_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ram~regout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\control[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_control(0),
	combout => \control~combout\(0));

-- Location: CLKCTRL_G2
\control[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control[0]~clkctrl_outclk\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: LCCOMB_X20_Y7_N14
\WideOr42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr42~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\) # (\estadoSiguiente.escribir_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \WideOr42~0_combout\);

-- Location: CLKCTRL_G4
\WideOr42~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr42~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr42~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y7_N8
\in_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(0) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & (\data_in~combout\(0))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & ((in_ram(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(0),
	datac => in_ram(0),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(0));

-- Location: LCCOMB_X24_Y7_N28
\estadoSiguiente.reset_pc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente.reset_pc~0_combout\ = !\control~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	combout => \estadoSiguiente.reset_pc~0_combout\);

-- Location: LCFF_X24_Y7_N29
\estadoSiguiente.reset_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	datain => \estadoSiguiente.reset_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.reset_pc~regout\);

-- Location: LCCOMB_X25_Y7_N14
\WideOr41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr41~0_combout\ = (\estadoSiguiente.leer_ram~regout\) # ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.reset_pc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.leer_ram~regout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \WideOr41~0_combout\);

-- Location: LCCOMB_X24_Y7_N12
\WideOr40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr40~0_combout\ = (!\estadoSiguiente.incrementar_pc~regout\ & !\estadoSiguiente.reset_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \WideOr40~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = posicion_ram(0) $ (VCC)
-- \Add0~1\ = CARRY(posicion_ram(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y7_N14
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X20_Y7_N2
\in_pc[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(0) = (\WideOr40~0_combout\ & ((in_pc(0)))) # (!\WideOr40~0_combout\ & (\Selector47~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr40~0_combout\,
	datac => \Selector47~0_combout\,
	datad => in_pc(0),
	combout => in_pc(0));

-- Location: LCCOMB_X24_Y8_N16
\estadoSiguiente~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~48_combout\ = (!\control~combout\(2)) # (!\estadoSiguiente.reset_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.reset_pc~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~48_combout\);

-- Location: LCFF_X24_Y8_N17
\estadoSiguiente.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.inicio~regout\);

-- Location: LCCOMB_X25_Y7_N18
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (posicion_ram(1) & (!\Add0~1\)) # (!posicion_ram(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!posicion_ram(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y7_N10
\Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Add0~2_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X25_Y7_N6
\in_pc[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(1) = (\WideOr40~0_combout\ & (in_pc(1))) # (!\WideOr40~0_combout\ & ((\Selector49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(1),
	datac => \WideOr40~0_combout\,
	datad => \Selector49~0_combout\,
	combout => in_pc(1));

-- Location: LCFF_X25_Y7_N3
\r_pc|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(1),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(1));

-- Location: LCFF_X24_Y7_N11
\r_pc|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y7_N10
\Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\r_pc|data_out[1]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[1]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X24_Y7_N24
\posicion_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(1) = (\WideOr41~0_combout\ & ((\Selector40~0_combout\))) # (!\WideOr41~0_combout\ & (posicion_ram(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(1),
	datac => \WideOr41~0_combout\,
	datad => \Selector40~0_combout\,
	combout => posicion_ram(1));

-- Location: LCCOMB_X25_Y7_N20
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (posicion_ram(2) & (\Add0~3\ $ (GND))) # (!posicion_ram(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((posicion_ram(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y7_N28
\Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Add0~4_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X25_Y7_N2
\in_pc[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(2) = (\WideOr40~0_combout\ & (in_pc(2))) # (!\WideOr40~0_combout\ & ((\Selector50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr40~0_combout\,
	datab => in_pc(2),
	datad => \Selector50~0_combout\,
	combout => in_pc(2));

-- Location: LCFF_X21_Y7_N15
\r_pc|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(2),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(2));

-- Location: LCFF_X24_Y7_N1
\r_pc|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y7_N0
\Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\r_pc|data_out[2]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[2]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X24_Y7_N16
\posicion_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(2) = (\WideOr41~0_combout\ & ((\Selector41~0_combout\))) # (!\WideOr41~0_combout\ & (posicion_ram(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(2),
	datac => \WideOr41~0_combout\,
	datad => \Selector41~0_combout\,
	combout => posicion_ram(2));

-- Location: LCCOMB_X25_Y7_N22
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (posicion_ram(3) & (!\Add0~5\)) # (!posicion_ram(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!posicion_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y7_N12
\Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Add0~6_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X25_Y7_N30
\in_pc[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(3) = (\WideOr40~0_combout\ & (in_pc(3))) # (!\WideOr40~0_combout\ & ((\Selector51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr40~0_combout\,
	datab => in_pc(3),
	datad => \Selector51~0_combout\,
	combout => in_pc(3));

-- Location: LCFF_X21_Y7_N13
\r_pc|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(3),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(3));

-- Location: LCFF_X24_Y7_N19
\r_pc|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y7_N18
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\r_pc|data_out[3]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[3]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\posicion_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(3) = (\WideOr41~0_combout\ & ((\Selector42~0_combout\))) # (!\WideOr41~0_combout\ & (posicion_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(3),
	datac => \WideOr41~0_combout\,
	datad => \Selector42~0_combout\,
	combout => posicion_ram(3));

-- Location: LCCOMB_X25_Y7_N24
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (posicion_ram(4) & (\Add0~7\ $ (GND))) # (!posicion_ram(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((posicion_ram(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X20_Y7_N18
\Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~8_combout\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X20_Y7_N28
\in_pc[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(4) = (\WideOr40~0_combout\ & (in_pc(4))) # (!\WideOr40~0_combout\ & ((\Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(4),
	datac => \WideOr40~0_combout\,
	datad => \Selector52~0_combout\,
	combout => in_pc(4));

-- Location: LCFF_X20_Y7_N29
\r_pc|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(4),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(4));

-- Location: LCFF_X24_Y7_N31
\r_pc|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X24_Y7_N30
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\r_pc|data_out[4]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[4]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X24_Y7_N4
\posicion_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(4) = (\WideOr41~0_combout\ & ((\Selector43~0_combout\))) # (!\WideOr41~0_combout\ & (posicion_ram(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr41~0_combout\,
	datac => posicion_ram(4),
	datad => \Selector43~0_combout\,
	combout => posicion_ram(4));

-- Location: LCCOMB_X25_Y7_N26
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (posicion_ram(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => posicion_ram(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X21_Y7_N12
\Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~10_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X21_Y7_N4
\in_pc[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(5) = (\WideOr40~0_combout\ & (in_pc(5))) # (!\WideOr40~0_combout\ & ((\Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(5),
	datac => \WideOr40~0_combout\,
	datad => \Selector53~0_combout\,
	combout => in_pc(5));

-- Location: LCCOMB_X20_Y7_N4
\r_pc|registro[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_pc|registro[5]~feeder_combout\ = in_pc(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => in_pc(5),
	combout => \r_pc|registro[5]~feeder_combout\);

-- Location: LCFF_X20_Y7_N5
\r_pc|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_pc|registro[5]~feeder_combout\,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(5));

-- Location: LCFF_X24_Y7_N3
\r_pc|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X24_Y7_N2
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\r_pc|data_out[5]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X24_Y7_N22
\posicion_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(5) = (\WideOr41~0_combout\ & ((\Selector44~0_combout\))) # (!\WideOr41~0_combout\ & (posicion_ram(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(5),
	datac => \WideOr41~0_combout\,
	datad => \Selector44~0_combout\,
	combout => posicion_ram(5));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LCCOMB_X22_Y7_N28
\in_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(1) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & ((\data_in~combout\(1)))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & (in_ram(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ram(1),
	datac => \data_in~combout\(1),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(1));

-- Location: LCCOMB_X24_Y7_N26
\in_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(2) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & (\data_in~combout\(2))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & ((in_ram(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(2),
	datab => in_ram(2),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(2));

-- Location: LCCOMB_X22_Y7_N20
\in_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(3) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & (\data_in~combout\(3))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & ((in_ram(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => in_ram(3),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LCCOMB_X22_Y7_N6
\in_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(4) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & ((\data_in~combout\(4)))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & (in_ram(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ram(4),
	datac => \data_in~combout\(4),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(4));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: LCCOMB_X22_Y7_N16
\in_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(5) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & (\data_in~combout\(5))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & ((in_ram(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(5),
	datac => in_ram(5),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(5));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: LCCOMB_X22_Y7_N18
\in_ram[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(6) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & ((\data_in~combout\(6)))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & (in_ram(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ram(6),
	datac => \data_in~combout\(6),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(6));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: LCCOMB_X22_Y7_N2
\in_ram[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(7) = (GLOBAL(\WideOr42~0clkctrl_outclk\) & ((\data_in~combout\(7)))) # (!GLOBAL(\WideOr42~0clkctrl_outclk\) & (in_ram(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ram(7),
	datac => \data_in~combout\(7),
	datad => \WideOr42~0clkctrl_outclk\,
	combout => in_ram(7));

-- Location: M4K_X23_Y7
\r_ram|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/cpu_nuevo.ram0_memoria8b_e2bb252e.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria8b:r_ram|altsyncram:ram_rtl_0|altsyncram_kml1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 6,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \r_ram|ram~15_combout\,
	portbrewe => VCC,
	clk0 => \control[0]~clkctrl_outclk\,
	portadatain => \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \r_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y7_N30
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\estadoSiguiente.escribir_op2~regout\ & (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X26_Y7_N0
\in_ri[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(3) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector23~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(3),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector23~0_combout\,
	combout => in_ri(3));

-- Location: LCCOMB_X21_Y7_N28
\estadoSiguiente~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~63_combout\ = (\estadoSiguiente.leer_ram~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.leer_ram~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~63_combout\);

-- Location: LCFF_X21_Y7_N29
\estadoSiguiente.activar_esc_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_ri~regout\);

-- Location: LCCOMB_X21_Y7_N2
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\estadoSiguiente.escribir_op2~regout\ & (!\estadoSiguiente.activar_esc_ri~regout\ & !\estadoSiguiente.escribir_op1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datab => \estadoSiguiente.activar_esc_ri~regout\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X21_Y7_N8
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ((\Selector2~1_combout\ & (\Selector2~2_combout\ & !\estadoSiguiente.espera~regout\))) # (!\Selector1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector1~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X21_Y7_N26
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (((\Selector1~2_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector1~1_combout\)) # (!\Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector1~2_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X21_Y7_N22
\r_ri|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|registro[7]~0_combout\ = (\Selector2~2_combout\ & \Selector1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector2~2_combout\,
	datad => \Selector1~2_combout\,
	combout => \r_ri|registro[7]~0_combout\);

-- Location: LCFF_X26_Y7_N1
\r_ri|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(3),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(3));

-- Location: LCFF_X26_Y7_N9
\r_ri|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y7_N28
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\estadoSiguiente.escribir_op2~regout\ & (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X26_Y7_N14
\in_ri[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(6) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector26~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(6),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector26~0_combout\,
	combout => in_ri(6));

-- Location: LCFF_X26_Y7_N15
\r_ri|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(6),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(6));

-- Location: LCCOMB_X26_Y7_N10
\r_ri|data_out[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[6]~reg0feeder_combout\ = \r_ri|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(6),
	combout => \r_ri|data_out[6]~reg0feeder_combout\);

-- Location: LCFF_X26_Y7_N11
\r_ri|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y7_N26
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\r_ri|data_out[5]~reg0_regout\) # ((\r_ri|data_out[6]~reg0_regout\) # (\r_ri|data_out[4]~reg0_regout\ $ (\r_ri|data_out[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[5]~reg0_regout\,
	datab => \r_ri|data_out[4]~reg0_regout\,
	datac => \r_ri|data_out[3]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X20_Y7_N0
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ((\estadoSiguiente.incrementar_pc~regout\ & ((!\Mux0~0_combout\) # (!\Selector0~0_combout\)))) # (!\estadoSiguiente.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datac => \estadoSiguiente.inicio~regout\,
	datad => \Mux0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCFF_X20_Y7_N1
\estadoSiguiente.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \Selector0~1_combout\,
	sclr => \ALT_INV_control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.espera~regout\);

-- Location: LCCOMB_X20_Y7_N20
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ((!\estadoSiguiente.activar_leer_pc~regout\ & (\Selector6~1_combout\ & !\estadoSiguiente.espera~regout\))) # (!\WideOr40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_pc~regout\,
	datab => \Selector6~1_combout\,
	datac => \WideOr40~0_combout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X20_Y7_N6
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\estadoSiguiente.activar_leer_pc~regout\) # (((\Selector5~1_combout\ & !\estadoSiguiente.espera~regout\)) # (!\WideOr40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	datad => \WideOr40~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X20_Y7_N22
\r_pc|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_pc|registro[0]~0_combout\ = (\Selector6~1_combout\ & \Selector5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~1_combout\,
	datad => \Selector5~1_combout\,
	combout => \r_pc|registro[0]~0_combout\);

-- Location: LCFF_X20_Y7_N3
\r_pc|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(0),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(0));

-- Location: LCFF_X24_Y7_N7
\r_pc|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y7_N6
\Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\r_pc|data_out[0]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[0]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X24_Y7_N14
\posicion_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(0) = (\WideOr41~0_combout\ & ((\Selector38~0_combout\))) # (!\WideOr41~0_combout\ & (posicion_ram(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(0),
	datab => \WideOr41~0_combout\,
	datad => \Selector38~0_combout\,
	combout => posicion_ram(0));

-- Location: LCCOMB_X22_Y7_N10
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & (\r_ram|ram_rtl_0|auto_generated|ram_block1a5\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_op1~regout\,
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X22_Y7_N24
\in_ri[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(5) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector25~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(5),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector25~0_combout\,
	combout => in_ri(5));

-- Location: LCFF_X22_Y7_N25
\r_ri|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(5),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(5));

-- Location: LCCOMB_X26_Y7_N12
\r_ri|data_out[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[5]~reg0feeder_combout\ = \r_ri|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(5),
	combout => \r_ri|data_out[5]~reg0feeder_combout\);

-- Location: LCFF_X26_Y7_N13
\r_ri|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X22_Y9_N20
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\r_ri|data_out[5]~reg0_regout\ & (\r_ri|data_out[3]~reg0_regout\)) # (!\r_ri|data_out[5]~reg0_regout\ & (((\r_ri|data_out[4]~reg0_regout\ & !\r_ri|data_out[6]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[3]~reg0_regout\,
	datab => \r_ri|data_out[5]~reg0_regout\,
	datac => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X22_Y7_N12
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\estadoSiguiente.escribir_op2~regout\ & (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datab => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X22_Y7_N14
\in_ri[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(2) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector22~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(2),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector22~0_combout\,
	combout => in_ri(2));

-- Location: LCFF_X22_Y7_N15
\r_ri|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(2),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(2));

-- Location: LCFF_X21_Y7_N31
\r_ri|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X22_Y7_N0
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & (\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_op1~regout\,
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X22_Y7_N26
\in_ri[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(0) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector19~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(0),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector19~0_combout\,
	combout => in_ri(0));

-- Location: LCFF_X22_Y7_N27
\r_ri|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(0),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(0));

-- Location: LCFF_X21_Y7_N17
\r_ri|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X22_Y7_N22
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\estadoSiguiente.escribir_op2~regout\ & (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datab => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X22_Y7_N8
\in_ri[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(7) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector27~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(7),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector27~0_combout\,
	combout => in_ri(7));

-- Location: LCFF_X22_Y7_N9
\r_ri|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(7),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(7));

-- Location: LCFF_X21_Y7_N3
\r_ri|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X21_Y7_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\r_ri|data_out[1]~reg0_regout\ & (!\r_ri|data_out[2]~reg0_regout\ & (!\r_ri|data_out[0]~reg0_regout\ & !\r_ri|data_out[7]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[1]~reg0_regout\,
	datab => \r_ri|data_out[2]~reg0_regout\,
	datac => \r_ri|data_out[0]~reg0_regout\,
	datad => \r_ri|data_out[7]~reg0_regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X22_Y9_N12
\op_a_cargar~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_a_cargar~1_combout\ = (\op_a_cargar~0_combout\ & (\control~combout\(2) & (\Selector0~0_combout\ & \estadoSiguiente.incrementar_pc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_a_cargar~0_combout\,
	datab => \control~combout\(2),
	datac => \Selector0~0_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \op_a_cargar~1_combout\);

-- Location: LCFF_X22_Y9_N21
op_a_cargar : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \Mux4~0_combout\,
	ena => \op_a_cargar~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op_a_cargar~regout\);

-- Location: LCCOMB_X19_Y7_N12
\estadoSiguiente~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~67_combout\ = (\control~combout\(2) & (\estadoSiguiente.activar_leer_data~regout\ & \op_a_cargar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datac => \estadoSiguiente.activar_leer_data~regout\,
	datad => \op_a_cargar~regout\,
	combout => \estadoSiguiente~67_combout\);

-- Location: LCFF_X19_Y7_N13
\estadoSiguiente.activar_esc_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_op2~regout\);

-- Location: LCCOMB_X21_Y7_N24
\estadoSiguiente~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~61_combout\ = (\estadoSiguiente.activar_esc_op2~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_esc_op2~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~61_combout\);

-- Location: LCFF_X21_Y7_N25
\estadoSiguiente.escribir_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_op2~regout\);

-- Location: LCCOMB_X19_Y7_N16
\estadoSiguiente~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~70_combout\ = (\estadoSiguiente.escribir_op2~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_op2~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~70_combout\);

-- Location: LCFF_X19_Y7_N17
\estadoSiguiente.activar_leer_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_op2~regout\);

-- Location: LCCOMB_X19_Y7_N8
\estadoSiguiente~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~65_combout\ = (\estadoSiguiente.activar_leer_op2~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_leer_op2~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~65_combout\);

-- Location: LCFF_X19_Y7_N9
\estadoSiguiente.leer_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_op2~regout\);

-- Location: LCCOMB_X20_Y8_N16
\Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (!\estadoSiguiente.desactivar_salida~regout\ & !\estadoSiguiente.espera~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.desactivar_salida~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X20_Y11_N16
\estadoSiguiente~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~56_combout\ = (\estadoSiguiente.activar_esc_status~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_status~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~56_combout\);

-- Location: LCFF_X20_Y11_N17
\estadoSiguiente.escribir_status\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_status~regout\);

-- Location: LCCOMB_X20_Y8_N8
\estadoSiguiente~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~54_combout\ = (\control~combout\(2) & \estadoSiguiente.escribir_status~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.escribir_status~regout\,
	combout => \estadoSiguiente~54_combout\);

-- Location: LCFF_X20_Y8_N9
\estadoSiguiente.activar_leer_resultado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_resultado~regout\);

-- Location: LCCOMB_X20_Y11_N24
\estadoSiguiente~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~57_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_leer_resultado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.activar_leer_resultado~regout\,
	combout => \estadoSiguiente~57_combout\);

-- Location: LCFF_X20_Y11_N25
\estadoSiguiente.activar_leer_status\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_status~regout\);

-- Location: LCCOMB_X20_Y7_N16
WideOr1 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\estadoSiguiente.leer_op1~regout\) # ((\estadoSiguiente.leer_op2~regout\) # ((\estadoSiguiente.activar_leer_status~regout\) # (!\Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.leer_op1~regout\,
	datab => \estadoSiguiente.leer_op2~regout\,
	datac => \Selector3~4_combout\,
	datad => \estadoSiguiente.activar_leer_status~regout\,
	combout => \WideOr1~combout\);

-- Location: LCFF_X20_Y7_N17
\estadoSiguiente.activar_leer_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \WideOr1~combout\,
	sclr => \ALT_INV_control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_pc~regout\);

-- Location: LCCOMB_X20_Y7_N10
\estadoSiguiente~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~49_combout\ = (\control~combout\(2) & (\estadoSiguiente.activar_leer_pc~regout\ & \control~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	datad => \control~combout\(1),
	combout => \estadoSiguiente~49_combout\);

-- Location: LCFF_X20_Y7_N11
\estadoSiguiente.escribir_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_ram~regout\);

-- Location: LCCOMB_X21_Y7_N10
\estadoSiguiente~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~55_combout\ = (\estadoSiguiente.activar_esc_ri~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_esc_ri~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~55_combout\);

-- Location: LCFF_X21_Y7_N11
\estadoSiguiente.activar_leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_ri~regout\);

-- Location: LCCOMB_X21_Y7_N6
\estadoSiguiente~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~50_combout\ = (\estadoSiguiente.activar_leer_ri~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_ri~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~50_combout\);

-- Location: LCFF_X21_Y7_N7
\estadoSiguiente.leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ri~regout\);

-- Location: LCCOMB_X20_Y7_N24
\estadoSiguiente~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~47_combout\ = (\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ri~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \estadoSiguiente.leer_ri~regout\,
	combout => \estadoSiguiente~47_combout\);

-- Location: LCFF_X20_Y7_N25
\estadoSiguiente.incrementar_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~47_combout\,
	sclr => \ALT_INV_control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.incrementar_pc~regout\);

-- Location: LCCOMB_X22_Y9_N6
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\r_ri|data_out[4]~reg0_regout\ & (\r_ri|data_out[6]~reg0_regout\ $ (((!\r_ri|data_out[3]~reg0_regout\ & !\r_ri|data_out[5]~reg0_regout\))))) # (!\r_ri|data_out[4]~reg0_regout\ & (\r_ri|data_out[3]~reg0_regout\ & 
-- (!\r_ri|data_out[5]~reg0_regout\ & !\r_ri|data_out[6]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[3]~reg0_regout\,
	datab => \r_ri|data_out[5]~reg0_regout\,
	datac => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y8_N30
\estadoSiguiente~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~53_combout\ = (\Selector0~0_combout\ & (\estadoSiguiente.incrementar_pc~regout\ & (\control~combout\(2) & \Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datac => \control~combout\(2),
	datad => \Mux1~0_combout\,
	combout => \estadoSiguiente~53_combout\);

-- Location: LCFF_X21_Y8_N31
\estadoSiguiente.activar_esc_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_data~regout\);

-- Location: LCCOMB_X22_Y8_N4
\estadoSiguiente~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~72_combout\ = (\estadoSiguiente.activar_esc_data~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_esc_data~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~72_combout\);

-- Location: LCFF_X22_Y8_N5
\estadoSiguiente.escribir_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	datain => \estadoSiguiente~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_data~regout\);

-- Location: LCCOMB_X21_Y8_N20
\estadoSiguiente~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~71_combout\ = (\control~combout\(2) & \estadoSiguiente.escribir_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datac => \estadoSiguiente.escribir_data~regout\,
	combout => \estadoSiguiente~71_combout\);

-- Location: LCFF_X21_Y8_N21
\estadoSiguiente.activar_leer_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_data~regout\);

-- Location: LCCOMB_X19_Y7_N22
\estadoSiguiente~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~66_combout\ = (\control~combout\(2) & (\estadoSiguiente.activar_leer_data~regout\ & !\op_a_cargar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datac => \estadoSiguiente.activar_leer_data~regout\,
	datad => \op_a_cargar~regout\,
	combout => \estadoSiguiente~66_combout\);

-- Location: LCFF_X19_Y7_N23
\estadoSiguiente.activar_esc_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_op1~regout\);

-- Location: LCCOMB_X21_Y7_N18
\estadoSiguiente~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~60_combout\ = (\estadoSiguiente.activar_esc_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_esc_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~60_combout\);

-- Location: LCFF_X21_Y7_N19
\estadoSiguiente.escribir_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_op1~regout\);

-- Location: LCCOMB_X21_Y7_N30
\WideOr43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr43~0_combout\ = (\estadoSiguiente.escribir_op2~regout\) # ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_op1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op2~regout\,
	datab => \estadoSiguiente.leer_ram~regout\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \WideOr43~0_combout\);

-- Location: CLKCTRL_G5
\WideOr43~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr43~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr43~0clkctrl_outclk\);

-- Location: LCCOMB_X25_Y7_N0
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & (!\estadoSiguiente.escribir_op2~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op1~regout\,
	datab => \estadoSiguiente.escribir_op2~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X25_Y7_N8
\in_ri[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(4) = (GLOBAL(\WideOr43~0clkctrl_outclk\) & ((\Selector24~0_combout\))) # (!GLOBAL(\WideOr43~0clkctrl_outclk\) & (in_ri(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(4),
	datac => \WideOr43~0clkctrl_outclk\,
	datad => \Selector24~0_combout\,
	combout => in_ri(4));

-- Location: LCFF_X25_Y7_N1
\r_ri|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_ri(4),
	sload => VCC,
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(4));

-- Location: LCFF_X26_Y7_N23
\r_ri|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X26_Y7_N16
\mostrar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mostrar~0_combout\ = (\r_ri|data_out[5]~reg0_regout\ & (!\r_ri|data_out[4]~reg0_regout\ & \r_ri|data_out[6]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[5]~reg0_regout\,
	datab => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \mostrar~0_combout\);

-- Location: LCCOMB_X21_Y7_N0
\mostrar~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mostrar~1_combout\ = (\Selector0~0_combout\ & (\control~combout\(2) & (\mostrar~0_combout\ & \estadoSiguiente.incrementar_pc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \control~combout\(2),
	datac => \mostrar~0_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \mostrar~1_combout\);

-- Location: LCFF_X21_Y7_N1
\estadoSiguiente.activar_esc_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \mostrar~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_salida~regout\);

-- Location: LCCOMB_X20_Y8_N2
\estadoSiguiente~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~46_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datac => \estadoSiguiente.activar_esc_salida~regout\,
	combout => \estadoSiguiente~46_combout\);

-- Location: LCFF_X20_Y8_N3
\estadoSiguiente.escribir_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_salida~regout\);

-- Location: CLKCTRL_G3
\estadoSiguiente.escribir_salida~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estadoSiguiente.escribir_salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estadoSiguiente.escribir_salida~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\estadoSiguiente.escribir_op1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estadoSiguiente.escribir_op1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estadoSiguiente.escribir_op1~clkctrl_outclk\);

-- Location: LCFF_X22_Y8_N31
\donde_leer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \r_ri|data_out[5]~reg0_regout\,
	sload => VCC,
	ena => \op_a_cargar~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => donde_leer(1));

-- Location: LCCOMB_X22_Y8_N6
\in_data[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_data[5]~0_combout\ = (\estadoSiguiente.escribir_data~regout\ & ((!donde_leer(1)) # (!donde_leer(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => donde_leer(0),
	datac => \estadoSiguiente.escribir_data~regout\,
	datad => donde_leer(1),
	combout => \in_data[5]~0_combout\);

-- Location: CLKCTRL_G1
\in_data[5]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \in_data[5]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \in_data[5]~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y9_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\r_ri|data_out[5]~reg0_regout\ & \r_ri|data_out[6]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ri|data_out[5]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux6~0_combout\);

-- Location: LCFF_X22_Y9_N17
\donde_leer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \Mux6~0_combout\,
	ena => \op_a_cargar~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => donde_leer(0));

-- Location: LCCOMB_X24_Y8_N26
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[0]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_resultado|data_out[0]~reg0_regout\,
	datab => donde_leer(1),
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => donde_leer(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X24_Y8_N24
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\) # ((\data_in~combout\(0) & donde_leer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(0),
	datac => donde_leer(1),
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X21_Y8_N16
\in_data[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(0) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux15~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(0),
	datac => \in_data[5]~0clkctrl_outclk\,
	datad => \Mux15~1_combout\,
	combout => in_data(0));

-- Location: LCCOMB_X21_Y8_N8
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\estadoSiguiente.activar_esc_data~regout\) # ((!\estadoSiguiente.activar_leer_data~regout\ & (\Selector10~1_combout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_data~regout\,
	datab => \Selector10~1_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X21_Y8_N10
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\estadoSiguiente.activar_esc_data~regout\) # ((\estadoSiguiente.activar_leer_data~regout\) # ((\Selector9~1_combout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \estadoSiguiente.activar_esc_data~regout\,
	datac => \estadoSiguiente.activar_leer_data~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X21_Y8_N18
\r_data|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|registro[7]~0_combout\ = (\Selector10~1_combout\ & \Selector9~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector10~1_combout\,
	datad => \Selector9~1_combout\,
	combout => \r_data|registro[7]~0_combout\);

-- Location: LCFF_X21_Y8_N17
\r_data|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(0),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(0));

-- Location: LCFF_X18_Y11_N29
\r_data|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X17_Y11_N30
\in_op1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(0) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[0]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(0),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[0]~reg0_regout\,
	combout => in_op1(0));

-- Location: LCCOMB_X19_Y7_N26
\estadoSiguiente~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~69_combout\ = (\estadoSiguiente.escribir_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~69_combout\);

-- Location: LCFF_X19_Y7_N27
\estadoSiguiente.activar_leer_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_op1~regout\);

-- Location: LCCOMB_X19_Y7_N14
\estadoSiguiente~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~64_combout\ = (\estadoSiguiente.activar_leer_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~64_combout\);

-- Location: LCFF_X19_Y7_N15
\estadoSiguiente.leer_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_op1~regout\);

-- Location: LCCOMB_X26_Y7_N18
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\r_ri|data_out[5]~reg0_regout\ & (((!\r_ri|data_out[6]~reg0_regout\)))) # (!\r_ri|data_out[5]~reg0_regout\ & (\r_ri|data_out[6]~reg0_regout\ & ((!\r_ri|data_out[3]~reg0_regout\) # (!\r_ri|data_out[4]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[5]~reg0_regout\,
	datab => \r_ri|data_out[4]~reg0_regout\,
	datac => \r_ri|data_out[3]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X19_Y7_N20
\estadoSiguiente~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~59_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & (\control~combout\(2) & (\Selector0~0_combout\ & \Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \control~combout\(2),
	datac => \Selector0~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \estadoSiguiente~59_combout\);

-- Location: LCFF_X19_Y7_N21
\estadoSiguiente.activar_carga_alu\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_carga_alu~regout\);

-- Location: LCCOMB_X19_Y7_N30
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (!\estadoSiguiente.leer_op1~regout\ & (!\estadoSiguiente.activar_carga_alu~regout\ & !\estadoSiguiente.activar_leer_op1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_op1~regout\,
	datac => \estadoSiguiente.activar_carga_alu~regout\,
	datad => \estadoSiguiente.activar_leer_op1~regout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X19_Y7_N28
\Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\estadoSiguiente.activar_esc_op1~regout\) # ((\Selector14~2_combout\ & (!\estadoSiguiente.espera~regout\ & \Selector14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~2_combout\,
	datab => \estadoSiguiente.activar_esc_op1~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector14~1_combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X17_Y11_N22
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ((\estadoSiguiente.activar_esc_op1~regout\) # ((\Selector13~1_combout\ & !\estadoSiguiente.espera~regout\))) # (!\Selector14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~1_combout\,
	datab => \Selector13~1_combout\,
	datac => \estadoSiguiente.activar_esc_op1~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X17_Y11_N28
\r_operador1|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador1|registro[7]~0_combout\ = (\Selector14~2_combout\ & \Selector13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector14~2_combout\,
	datad => \Selector13~1_combout\,
	combout => \r_operador1|registro[7]~0_combout\);

-- Location: LCFF_X17_Y11_N31
\r_operador1|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(0),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(0));

-- Location: LCCOMB_X13_Y11_N2
\r_operador1|data_out[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador1|data_out[0]~reg0feeder_combout\ = \r_operador1|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_operador1|registro\(0),
	combout => \r_operador1|data_out[0]~reg0feeder_combout\);

-- Location: LCFF_X13_Y11_N3
\r_operador1|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador1|data_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X22_Y9_N10
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\r_ri|data_out[6]~reg0_regout\ & ((\r_ri|data_out[4]~reg0_regout\))) # (!\r_ri|data_out[6]~reg0_regout\ & (\r_ri|data_out[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[3]~reg0_regout\,
	datac => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X22_Y9_N26
\codigo_operacion_alu[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \codigo_operacion_alu[2]~1_combout\ = (\codigo_operacion_alu[2]~0_combout\ & (\control~combout\(2) & (\Selector0~0_combout\ & \estadoSiguiente.incrementar_pc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_operacion_alu[2]~0_combout\,
	datab => \control~combout\(2),
	datac => \Selector0~0_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \codigo_operacion_alu[2]~1_combout\);

-- Location: LCFF_X22_Y9_N11
\codigo_operacion_alu[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \Mux8~0_combout\,
	ena => \codigo_operacion_alu[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => codigo_operacion_alu(1));

-- Location: LCFF_X21_Y11_N17
\codigo_operacion_alu[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|data_out[6]~reg0_regout\,
	sload => VCC,
	ena => \codigo_operacion_alu[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => codigo_operacion_alu(2));

-- Location: LCCOMB_X12_Y11_N14
\modulo_alu|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux10~2_combout\ = (codigo_operacion_alu(1) & ((codigo_operacion_alu(0)) # (\r_operador1|data_out[0]~reg0_regout\ $ (!codigo_operacion_alu(2))))) # (!codigo_operacion_alu(1) & (((codigo_operacion_alu(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => \r_operador1|data_out[0]~reg0_regout\,
	datac => codigo_operacion_alu(1),
	datad => codigo_operacion_alu(2),
	combout => \modulo_alu|Mux10~2_combout\);

-- Location: CLKCTRL_G6
\estadoSiguiente.escribir_op2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estadoSiguiente.escribir_op2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estadoSiguiente.escribir_op2~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y11_N4
\in_op2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(0) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[0]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(0),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[0]~reg0_regout\,
	combout => in_op2(0));

-- Location: LCCOMB_X19_Y7_N10
\Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (!\estadoSiguiente.leer_op2~regout\ & (!\estadoSiguiente.activar_leer_op2~regout\ & !\estadoSiguiente.activar_carga_alu~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_op2~regout\,
	datac => \estadoSiguiente.activar_leer_op2~regout\,
	datad => \estadoSiguiente.activar_carga_alu~regout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X19_Y7_N18
\Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\estadoSiguiente.activar_esc_op2~regout\) # ((\Selector16~2_combout\ & (!\estadoSiguiente.espera~regout\ & \Selector16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_op2~regout\,
	datab => \Selector16~2_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector16~1_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X19_Y7_N24
\Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\estadoSiguiente.activar_esc_op2~regout\) # (((\Selector15~1_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_op2~regout\,
	datab => \Selector15~1_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector16~1_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X18_Y11_N20
\r_operador2|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador2|registro[7]~0_combout\ = (\Selector16~2_combout\ & \Selector15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector16~2_combout\,
	datad => \Selector15~1_combout\,
	combout => \r_operador2|registro[7]~0_combout\);

-- Location: LCFF_X18_Y11_N5
\r_operador2|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(0),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(0));

-- Location: LCFF_X15_Y11_N15
\r_operador2|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X14_Y11_N12
\modulo_alu|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~0_combout\ = (\r_operador1|data_out[0]~reg0_regout\ & (\r_operador2|data_out[0]~reg0_regout\ $ (VCC))) # (!\r_operador1|data_out[0]~reg0_regout\ & (\r_operador2|data_out[0]~reg0_regout\ & VCC))
-- \modulo_alu|Add2~1\ = CARRY((\r_operador1|data_out[0]~reg0_regout\ & \r_operador2|data_out[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[0]~reg0_regout\,
	datab => \r_operador2|data_out[0]~reg0_regout\,
	datad => VCC,
	combout => \modulo_alu|Add2~0_combout\,
	cout => \modulo_alu|Add2~1\);

-- Location: LCCOMB_X22_Y9_N30
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\r_ri|data_out[3]~reg0_regout\ & (!\r_ri|data_out[4]~reg0_regout\)) # (!\r_ri|data_out[3]~reg0_regout\ & (\r_ri|data_out[4]~reg0_regout\ & !\r_ri|data_out[6]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[3]~reg0_regout\,
	datac => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[6]~reg0_regout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X21_Y9_N4
\codigo_operacion_alu[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \codigo_operacion_alu[0]~feeder_combout\ = \Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~0_combout\,
	combout => \codigo_operacion_alu[0]~feeder_combout\);

-- Location: LCFF_X21_Y9_N5
\codigo_operacion_alu[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \codigo_operacion_alu[0]~feeder_combout\,
	ena => \codigo_operacion_alu[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => codigo_operacion_alu(0));

-- Location: LCCOMB_X13_Y11_N0
\modulo_alu|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux10~1_combout\ = (codigo_operacion_alu(0) & ((\modulo_alu|Add2~0_combout\))) # (!codigo_operacion_alu(0) & (\modulo_alu|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Add0~0_combout\,
	datab => \modulo_alu|Add2~0_combout\,
	datad => codigo_operacion_alu(0),
	combout => \modulo_alu|Mux10~1_combout\);

-- Location: LCCOMB_X12_Y11_N0
\modulo_alu|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux10~3_combout\ = (codigo_operacion_alu(1) & ((codigo_operacion_alu(2)) # (codigo_operacion_alu(0) $ (\r_operador1|data_out[0]~reg0_regout\)))) # (!codigo_operacion_alu(1) & (!codigo_operacion_alu(0) & ((codigo_operacion_alu(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => \r_operador1|data_out[0]~reg0_regout\,
	datac => codigo_operacion_alu(1),
	datad => codigo_operacion_alu(2),
	combout => \modulo_alu|Mux10~3_combout\);

-- Location: LCCOMB_X12_Y11_N20
\modulo_alu|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux10~4_combout\ = (\modulo_alu|Mux10~2_combout\ & (\modulo_alu|Mux10~0_combout\ & ((!\modulo_alu|Mux10~3_combout\)))) # (!\modulo_alu|Mux10~2_combout\ & (((\modulo_alu|Mux10~1_combout\) # (\modulo_alu|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Mux10~0_combout\,
	datab => \modulo_alu|Mux10~2_combout\,
	datac => \modulo_alu|Mux10~1_combout\,
	datad => \modulo_alu|Mux10~3_combout\,
	combout => \modulo_alu|Mux10~4_combout\);

-- Location: LCFF_X12_Y11_N21
\modulo_alu|resultado[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[0]~reg0_regout\);

-- Location: LCCOMB_X19_Y8_N24
\r_resultado|registro[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|registro[0]~feeder_combout\ = \modulo_alu|resultado[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \modulo_alu|resultado[0]~reg0_regout\,
	combout => \r_resultado|registro[0]~feeder_combout\);

-- Location: LCCOMB_X20_Y8_N22
\Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (!\estadoSiguiente.activar_leer_resultado~regout\ & !\estadoSiguiente.activar_esc_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_resultado~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X21_Y8_N22
\estadoSiguiente~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~52_combout\ = (\estadoSiguiente.activar_esc_resultado~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_resultado~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~52_combout\);

-- Location: LCFF_X20_Y8_N17
\estadoSiguiente.escribir_resultado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \estadoSiguiente~52_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_resultado~regout\);

-- Location: LCCOMB_X20_Y8_N0
\estadoSiguiente~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~51_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_carga_alu~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.activar_carga_alu~regout\,
	combout => \estadoSiguiente~51_combout\);

-- Location: LCFF_X20_Y8_N1
\estadoSiguiente.activar_esc_resultado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_resultado~regout\);

-- Location: LCCOMB_X20_Y8_N24
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!\estadoSiguiente.escribir_resultado~regout\ & !\estadoSiguiente.activar_esc_resultado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_resultado~regout\,
	datad => \estadoSiguiente.activar_esc_resultado~regout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X20_Y8_N14
\Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = ((\Selector12~2_combout\ & (\Selector12~1_combout\ & !\estadoSiguiente.espera~regout\))) # (!\Selector11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~2_combout\,
	datab => \Selector12~1_combout\,
	datac => \Selector11~1_combout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X19_Y8_N12
\Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (((\Selector11~2_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector12~1_combout\)) # (!\Selector11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~2_combout\,
	datab => \Selector11~1_combout\,
	datac => \Selector12~1_combout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X19_Y8_N18
\r_resultado|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|registro[0]~0_combout\ = (\Selector12~2_combout\ & \Selector11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~2_combout\,
	datad => \Selector11~2_combout\,
	combout => \r_resultado|registro[0]~0_combout\);

-- Location: LCFF_X19_Y8_N25
\r_resultado|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|registro[0]~feeder_combout\,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(0));

-- Location: LCCOMB_X24_Y8_N20
\r_resultado|data_out[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|data_out[0]~reg0feeder_combout\ = \r_resultado|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_resultado|registro\(0),
	combout => \r_resultado|data_out[0]~reg0feeder_combout\);

-- Location: LCFF_X24_Y8_N21
\r_resultado|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|data_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N30
\mostrar~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mostrar~2_combout\ = (\mostrar~1_combout\ & (\r_ri|data_out[3]~reg0_regout\)) # (!\mostrar~1_combout\ & ((\mostrar~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[3]~reg0_regout\,
	datac => \mostrar~regout\,
	datad => \mostrar~1_combout\,
	combout => \mostrar~2_combout\);

-- Location: LCFF_X25_Y8_N31
mostrar : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \mostrar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mostrar~regout\);

-- Location: LCCOMB_X24_Y8_N10
\in_salida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~0_combout\ = (\r_resultado|data_out[0]~reg0_regout\ & !\mostrar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_resultado|data_out[0]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~0_combout\);

-- Location: LCCOMB_X24_Y8_N14
\in_salida[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(0) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~0_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_salida(0),
	datac => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	datad => \in_salida~0_combout\,
	combout => in_salida(0));

-- Location: LCCOMB_X20_Y8_N6
\estadoSiguiente~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~45_combout\ = (\estadoSiguiente.escribir_salida~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_salida~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~45_combout\);

-- Location: LCFF_X20_Y8_N7
\estadoSiguiente.activar_leer_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_salida~regout\);

-- Location: LCCOMB_X20_Y8_N26
\estadoSiguiente~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~43_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_leer_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.activar_leer_salida~regout\,
	combout => \estadoSiguiente~43_combout\);

-- Location: LCFF_X20_Y8_N27
\estadoSiguiente.leer_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	datain => \estadoSiguiente~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_salida~regout\);

-- Location: LCCOMB_X20_Y8_N28
\Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\estadoSiguiente.activar_leer_salida~regout\) # ((\estadoSiguiente.leer_salida~regout\) # ((\estadoSiguiente.activar_esc_salida~regout\) # (\estadoSiguiente.escribir_salida~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_salida~regout\,
	datab => \estadoSiguiente.leer_salida~regout\,
	datac => \estadoSiguiente.activar_esc_salida~regout\,
	datad => \estadoSiguiente.escribir_salida~regout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X20_Y8_N20
\estadoSiguiente~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~44_combout\ = (\control~combout\(2) & \estadoSiguiente.leer_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.leer_salida~regout\,
	combout => \estadoSiguiente~44_combout\);

-- Location: LCFF_X20_Y8_N21
\estadoSiguiente.desactivar_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.desactivar_salida~regout\);

-- Location: LCCOMB_X20_Y8_N4
\Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Selector3~3_combout\) # ((\Selector3~5_combout\ & (!\estadoSiguiente.desactivar_salida~regout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~5_combout\,
	datab => \Selector3~3_combout\,
	datac => \estadoSiguiente.desactivar_salida~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X20_Y8_N30
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\estadoSiguiente.activar_leer_salida~regout\ & (!\estadoSiguiente.leer_salida~regout\ & (!\estadoSiguiente.desactivar_salida~regout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_salida~regout\,
	datab => \estadoSiguiente.leer_salida~regout\,
	datac => \estadoSiguiente.desactivar_salida~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X20_Y8_N12
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\estadoSiguiente.activar_esc_salida~regout\) # ((\estadoSiguiente.escribir_salida~regout\) # ((\Selector4~2_combout\ & \Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector4~1_combout\,
	datac => \estadoSiguiente.activar_esc_salida~regout\,
	datad => \estadoSiguiente.escribir_salida~regout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X20_Y8_N10
\r_salida|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_salida|registro[0]~0_combout\ = (\Selector3~5_combout\ & \Selector4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector3~5_combout\,
	datad => \Selector4~2_combout\,
	combout => \r_salida|registro[0]~0_combout\);

-- Location: LCFF_X24_Y8_N15
\r_salida|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_salida(0),
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(0));

-- Location: LCFF_X24_Y8_N19
\r_salida|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X20_Y8_N18
\salida~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida~0_combout\ = (\estadoSiguiente.desactivar_salida~regout\) # (\estadoSiguiente.leer_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.desactivar_salida~regout\,
	datad => \estadoSiguiente.leer_salida~regout\,
	combout => \salida~0_combout\);

-- Location: CLKCTRL_G0
\salida~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \salida~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \salida~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y8_N18
\salida[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[0]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[0]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[0]$latch~combout\,
	datac => \r_salida|data_out[0]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[0]$latch~combout\);

-- Location: LCCOMB_X22_Y8_N10
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[2]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_resultado|data_out[2]~reg0_regout\,
	datab => donde_leer(1),
	datac => donde_leer(0),
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\) # ((\data_in~combout\(2) & donde_leer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(2),
	datab => donde_leer(1),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X21_Y8_N14
\in_data[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(2) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux13~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(2),
	datac => \in_data[5]~0clkctrl_outclk\,
	datad => \Mux13~1_combout\,
	combout => in_data(2));

-- Location: LCFF_X21_Y8_N15
\r_data|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(2),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(2));

-- Location: LCCOMB_X18_Y11_N6
\r_data|data_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[2]~reg0feeder_combout\ = \r_data|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(2),
	combout => \r_data|data_out[2]~reg0feeder_combout\);

-- Location: LCFF_X18_Y11_N7
\r_data|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X17_Y11_N20
\in_op1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(2) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[2]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(2),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[2]~reg0_regout\,
	combout => in_op1(2));

-- Location: LCFF_X17_Y11_N21
\r_operador1|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(2),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(2));

-- Location: LCFF_X13_Y11_N1
\r_operador1|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X19_Y11_N16
\modulo_alu|resultado[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|resultado[1]~0_combout\ = (codigo_operacion_alu(2) & ((codigo_operacion_alu(1)) # (codigo_operacion_alu(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => codigo_operacion_alu(2),
	datac => codigo_operacion_alu(1),
	datad => codigo_operacion_alu(0),
	combout => \modulo_alu|resultado[1]~0_combout\);

-- Location: LCCOMB_X22_Y8_N18
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[1]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_resultado|data_out[1]~reg0_regout\,
	datab => donde_leer(1),
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => donde_leer(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X22_Y8_N8
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\) # ((donde_leer(1) & \data_in~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => donde_leer(1),
	datac => \data_in~combout\(1),
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X21_Y8_N6
\in_data[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(1) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux14~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(1),
	datac => \Mux14~1_combout\,
	datad => \in_data[5]~0clkctrl_outclk\,
	combout => in_data(1));

-- Location: LCFF_X21_Y8_N7
\r_data|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(1),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(1));

-- Location: LCFF_X18_Y11_N3
\r_data|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X18_Y11_N22
\in_op2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(1) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[1]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(1),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[1]~reg0_regout\,
	combout => in_op2(1));

-- Location: LCFF_X18_Y11_N23
\r_operador2|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(1),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(1));

-- Location: LCFF_X15_Y11_N5
\r_operador2|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X15_Y11_N16
\modulo_alu|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~1_cout\ = CARRY(!\r_operador2|data_out[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_operador2|data_out[0]~reg0_regout\,
	datad => VCC,
	cout => \modulo_alu|Add1~1_cout\);

-- Location: LCCOMB_X15_Y11_N18
\modulo_alu|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~2_combout\ = (\r_operador2|data_out[1]~reg0_regout\ & ((\modulo_alu|Add1~1_cout\) # (GND))) # (!\r_operador2|data_out[1]~reg0_regout\ & (!\modulo_alu|Add1~1_cout\))
-- \modulo_alu|Add1~3\ = CARRY((\r_operador2|data_out[1]~reg0_regout\) # (!\modulo_alu|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_operador2|data_out[1]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add1~1_cout\,
	combout => \modulo_alu|Add1~2_combout\,
	cout => \modulo_alu|Add1~3\);

-- Location: LCCOMB_X14_Y11_N14
\modulo_alu|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~2_combout\ = (\r_operador1|data_out[1]~reg0_regout\ & ((\modulo_alu|Add1~2_combout\ & (\modulo_alu|Add2~1\ & VCC)) # (!\modulo_alu|Add1~2_combout\ & (!\modulo_alu|Add2~1\)))) # (!\r_operador1|data_out[1]~reg0_regout\ & 
-- ((\modulo_alu|Add1~2_combout\ & (!\modulo_alu|Add2~1\)) # (!\modulo_alu|Add1~2_combout\ & ((\modulo_alu|Add2~1\) # (GND)))))
-- \modulo_alu|Add2~3\ = CARRY((\r_operador1|data_out[1]~reg0_regout\ & (!\modulo_alu|Add1~2_combout\ & !\modulo_alu|Add2~1\)) # (!\r_operador1|data_out[1]~reg0_regout\ & ((!\modulo_alu|Add2~1\) # (!\modulo_alu|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[1]~reg0_regout\,
	datab => \modulo_alu|Add1~2_combout\,
	datad => VCC,
	cin => \modulo_alu|Add2~1\,
	combout => \modulo_alu|Add2~2_combout\,
	cout => \modulo_alu|Add2~3\);

-- Location: LCCOMB_X17_Y11_N8
\in_op1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(1) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[1]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(1),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[1]~reg0_regout\,
	combout => in_op1(1));

-- Location: LCFF_X17_Y11_N9
\r_operador1|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(1),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(1));

-- Location: LCFF_X14_Y11_N15
\r_operador1|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X13_Y11_N12
\modulo_alu|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~2_combout\ = (\r_operador2|data_out[1]~reg0_regout\ & ((\r_operador1|data_out[1]~reg0_regout\ & (\modulo_alu|Add0~1\ & VCC)) # (!\r_operador1|data_out[1]~reg0_regout\ & (!\modulo_alu|Add0~1\)))) # (!\r_operador2|data_out[1]~reg0_regout\ & 
-- ((\r_operador1|data_out[1]~reg0_regout\ & (!\modulo_alu|Add0~1\)) # (!\r_operador1|data_out[1]~reg0_regout\ & ((\modulo_alu|Add0~1\) # (GND)))))
-- \modulo_alu|Add0~3\ = CARRY((\r_operador2|data_out[1]~reg0_regout\ & (!\r_operador1|data_out[1]~reg0_regout\ & !\modulo_alu|Add0~1\)) # (!\r_operador2|data_out[1]~reg0_regout\ & ((!\modulo_alu|Add0~1\) # (!\r_operador1|data_out[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[1]~reg0_regout\,
	datab => \r_operador1|data_out[1]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~1\,
	combout => \modulo_alu|Add0~2_combout\,
	cout => \modulo_alu|Add0~3\);

-- Location: LCCOMB_X14_Y11_N8
\modulo_alu|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux9~0_combout\ = (codigo_operacion_alu(0) & ((codigo_operacion_alu(1)) # ((\modulo_alu|Add2~2_combout\)))) # (!codigo_operacion_alu(0) & (!codigo_operacion_alu(1) & ((\modulo_alu|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => codigo_operacion_alu(1),
	datac => \modulo_alu|Add2~2_combout\,
	datad => \modulo_alu|Add0~2_combout\,
	combout => \modulo_alu|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y11_N4
\modulo_alu|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux9~1_combout\ = (codigo_operacion_alu(1) & ((\r_operador1|data_out[1]~reg0_regout\ & ((\r_operador2|data_out[1]~reg0_regout\) # (!\modulo_alu|Mux9~0_combout\))) # (!\r_operador1|data_out[1]~reg0_regout\ & 
-- (\r_operador2|data_out[1]~reg0_regout\ & !\modulo_alu|Mux9~0_combout\)))) # (!codigo_operacion_alu(1) & (((\modulo_alu|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[1]~reg0_regout\,
	datab => codigo_operacion_alu(1),
	datac => \r_operador2|data_out[1]~reg0_regout\,
	datad => \modulo_alu|Mux9~0_combout\,
	combout => \modulo_alu|Mux9~1_combout\);

-- Location: LCCOMB_X15_Y11_N6
\modulo_alu|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux9~2_combout\ = (\modulo_alu|resultado[1]~1_combout\ & (((\modulo_alu|resultado[1]~0_combout\) # (\modulo_alu|Mux9~1_combout\)))) # (!\modulo_alu|resultado[1]~1_combout\ & (\r_operador1|data_out[0]~reg0_regout\ & 
-- (!\modulo_alu|resultado[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~1_combout\,
	datab => \r_operador1|data_out[0]~reg0_regout\,
	datac => \modulo_alu|resultado[1]~0_combout\,
	datad => \modulo_alu|Mux9~1_combout\,
	combout => \modulo_alu|Mux9~2_combout\);

-- Location: LCCOMB_X15_Y11_N12
\modulo_alu|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux9~3_combout\ = (\modulo_alu|resultado[1]~0_combout\ & ((\modulo_alu|Mux9~2_combout\ & (!\r_operador1|data_out[1]~reg0_regout\)) # (!\modulo_alu|Mux9~2_combout\ & ((\r_operador1|data_out[2]~reg0_regout\))))) # 
-- (!\modulo_alu|resultado[1]~0_combout\ & (((\modulo_alu|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[1]~reg0_regout\,
	datab => \r_operador1|data_out[2]~reg0_regout\,
	datac => \modulo_alu|resultado[1]~0_combout\,
	datad => \modulo_alu|Mux9~2_combout\,
	combout => \modulo_alu|Mux9~3_combout\);

-- Location: LCFF_X15_Y11_N13
\modulo_alu|resultado[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[1]~reg0_regout\);

-- Location: LCFF_X19_Y8_N19
\r_resultado|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \modulo_alu|resultado[1]~reg0_regout\,
	sload => VCC,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(1));

-- Location: LCCOMB_X24_Y8_N30
\r_resultado|data_out[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|data_out[1]~reg0feeder_combout\ = \r_resultado|registro\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_resultado|registro\(1),
	combout => \r_resultado|data_out[1]~reg0feeder_combout\);

-- Location: LCFF_X24_Y8_N31
\r_resultado|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|data_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X17_Y11_N18
\in_op1[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(7) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[7]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(7),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[7]~reg0_regout\,
	combout => in_op1(7));

-- Location: LCFF_X17_Y11_N19
\r_operador1|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(7),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(7));

-- Location: LCFF_X13_Y11_N25
\r_operador1|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X22_Y9_N2
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[5]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_resultado|data_out[5]~reg0_regout\,
	datab => donde_leer(1),
	datac => donde_leer(0),
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X22_Y9_N18
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\) # ((\data_in~combout\(5) & donde_leer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => donde_leer(1),
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X21_Y8_N24
\in_data[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(5) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux18~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(5),
	datac => \in_data[5]~0clkctrl_outclk\,
	datad => \Mux18~1_combout\,
	combout => in_data(5));

-- Location: LCFF_X21_Y8_N25
\r_data|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(5),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(5));

-- Location: LCFF_X18_Y11_N21
\r_data|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X18_Y11_N10
\in_op2[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(5) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[5]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op2(5),
	datac => \r_data|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	combout => in_op2(5));

-- Location: LCFF_X18_Y11_N11
\r_operador2|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(5),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(5));

-- Location: LCFF_X15_Y11_N11
\r_operador2|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X22_Y8_N22
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[4]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_resultado|data_out[4]~reg0_regout\,
	datab => donde_leer(1),
	datac => donde_leer(0),
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X22_Y8_N2
\Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\) # ((donde_leer(1) & \data_in~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => donde_leer(1),
	datac => \data_in~combout\(4),
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X21_Y8_N12
\in_data[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(4) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux16~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(4),
	datac => \in_data[5]~0clkctrl_outclk\,
	datad => \Mux16~1_combout\,
	combout => in_data(4));

-- Location: LCFF_X21_Y8_N13
\r_data|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(4),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(4));

-- Location: LCCOMB_X18_Y11_N30
\r_data|data_out[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[4]~reg0feeder_combout\ = \r_data|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(4),
	combout => \r_data|data_out[4]~reg0feeder_combout\);

-- Location: LCFF_X18_Y11_N31
\r_data|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X17_Y11_N16
\in_op1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(4) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[4]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(4),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[4]~reg0_regout\,
	combout => in_op1(4));

-- Location: LCFF_X17_Y11_N17
\r_operador1|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(4),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(4));

-- Location: LCFF_X13_Y11_N13
\r_operador1|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[4]~reg0_regout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: LCCOMB_X13_Y11_N14
\modulo_alu|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~4_combout\ = ((\r_operador2|data_out[2]~reg0_regout\ $ (\r_operador1|data_out[2]~reg0_regout\ $ (!\modulo_alu|Add0~3\)))) # (GND)
-- \modulo_alu|Add0~5\ = CARRY((\r_operador2|data_out[2]~reg0_regout\ & ((\r_operador1|data_out[2]~reg0_regout\) # (!\modulo_alu|Add0~3\))) # (!\r_operador2|data_out[2]~reg0_regout\ & (\r_operador1|data_out[2]~reg0_regout\ & !\modulo_alu|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[2]~reg0_regout\,
	datab => \r_operador1|data_out[2]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~3\,
	combout => \modulo_alu|Add0~4_combout\,
	cout => \modulo_alu|Add0~5\);

-- Location: LCCOMB_X13_Y11_N16
\modulo_alu|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~6_combout\ = (\r_operador2|data_out[3]~reg0_regout\ & ((\r_operador1|data_out[3]~reg0_regout\ & (\modulo_alu|Add0~5\ & VCC)) # (!\r_operador1|data_out[3]~reg0_regout\ & (!\modulo_alu|Add0~5\)))) # (!\r_operador2|data_out[3]~reg0_regout\ & 
-- ((\r_operador1|data_out[3]~reg0_regout\ & (!\modulo_alu|Add0~5\)) # (!\r_operador1|data_out[3]~reg0_regout\ & ((\modulo_alu|Add0~5\) # (GND)))))
-- \modulo_alu|Add0~7\ = CARRY((\r_operador2|data_out[3]~reg0_regout\ & (!\r_operador1|data_out[3]~reg0_regout\ & !\modulo_alu|Add0~5\)) # (!\r_operador2|data_out[3]~reg0_regout\ & ((!\modulo_alu|Add0~5\) # (!\r_operador1|data_out[3]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[3]~reg0_regout\,
	datab => \r_operador1|data_out[3]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~5\,
	combout => \modulo_alu|Add0~6_combout\,
	cout => \modulo_alu|Add0~7\);

-- Location: LCCOMB_X18_Y11_N14
\in_op2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(3) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[3]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(3),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[3]~reg0_regout\,
	combout => in_op2(3));

-- Location: LCFF_X18_Y11_N15
\r_operador2|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(3),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(3));

-- Location: LCCOMB_X15_Y11_N2
\r_operador2|data_out[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador2|data_out[3]~reg0feeder_combout\ = \r_operador2|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_operador2|registro\(3),
	combout => \r_operador2|data_out[3]~reg0feeder_combout\);

-- Location: LCFF_X15_Y11_N3
\r_operador2|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador2|data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X18_Y11_N24
\in_op2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(2) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[2]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op2(2),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[2]~reg0_regout\,
	combout => in_op2(2));

-- Location: LCFF_X18_Y11_N25
\r_operador2|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(2),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(2));

-- Location: LCCOMB_X15_Y11_N8
\r_operador2|data_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador2|data_out[2]~reg0feeder_combout\ = \r_operador2|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_operador2|registro\(2),
	combout => \r_operador2|data_out[2]~reg0feeder_combout\);

-- Location: LCFF_X15_Y11_N9
\r_operador2|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador2|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X15_Y11_N20
\modulo_alu|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~4_combout\ = (\r_operador2|data_out[2]~reg0_regout\ & (!\modulo_alu|Add1~3\ & VCC)) # (!\r_operador2|data_out[2]~reg0_regout\ & (\modulo_alu|Add1~3\ $ (GND)))
-- \modulo_alu|Add1~5\ = CARRY((!\r_operador2|data_out[2]~reg0_regout\ & !\modulo_alu|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_operador2|data_out[2]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add1~3\,
	combout => \modulo_alu|Add1~4_combout\,
	cout => \modulo_alu|Add1~5\);

-- Location: LCCOMB_X15_Y11_N22
\modulo_alu|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~6_combout\ = (\r_operador2|data_out[3]~reg0_regout\ & ((\modulo_alu|Add1~5\) # (GND))) # (!\r_operador2|data_out[3]~reg0_regout\ & (!\modulo_alu|Add1~5\))
-- \modulo_alu|Add1~7\ = CARRY((\r_operador2|data_out[3]~reg0_regout\) # (!\modulo_alu|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_operador2|data_out[3]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add1~5\,
	combout => \modulo_alu|Add1~6_combout\,
	cout => \modulo_alu|Add1~7\);

-- Location: LCCOMB_X14_Y11_N16
\modulo_alu|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~4_combout\ = ((\r_operador1|data_out[2]~reg0_regout\ $ (\modulo_alu|Add1~4_combout\ $ (!\modulo_alu|Add2~3\)))) # (GND)
-- \modulo_alu|Add2~5\ = CARRY((\r_operador1|data_out[2]~reg0_regout\ & ((\modulo_alu|Add1~4_combout\) # (!\modulo_alu|Add2~3\))) # (!\r_operador1|data_out[2]~reg0_regout\ & (\modulo_alu|Add1~4_combout\ & !\modulo_alu|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[2]~reg0_regout\,
	datab => \modulo_alu|Add1~4_combout\,
	datad => VCC,
	cin => \modulo_alu|Add2~3\,
	combout => \modulo_alu|Add2~4_combout\,
	cout => \modulo_alu|Add2~5\);

-- Location: LCCOMB_X14_Y11_N18
\modulo_alu|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~6_combout\ = (\r_operador1|data_out[3]~reg0_regout\ & ((\modulo_alu|Add1~6_combout\ & (\modulo_alu|Add2~5\ & VCC)) # (!\modulo_alu|Add1~6_combout\ & (!\modulo_alu|Add2~5\)))) # (!\r_operador1|data_out[3]~reg0_regout\ & 
-- ((\modulo_alu|Add1~6_combout\ & (!\modulo_alu|Add2~5\)) # (!\modulo_alu|Add1~6_combout\ & ((\modulo_alu|Add2~5\) # (GND)))))
-- \modulo_alu|Add2~7\ = CARRY((\r_operador1|data_out[3]~reg0_regout\ & (!\modulo_alu|Add1~6_combout\ & !\modulo_alu|Add2~5\)) # (!\r_operador1|data_out[3]~reg0_regout\ & ((!\modulo_alu|Add2~5\) # (!\modulo_alu|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[3]~reg0_regout\,
	datab => \modulo_alu|Add1~6_combout\,
	datad => VCC,
	cin => \modulo_alu|Add2~5\,
	combout => \modulo_alu|Add2~6_combout\,
	cout => \modulo_alu|Add2~7\);

-- Location: LCCOMB_X13_Y11_N30
\modulo_alu|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux7~1_combout\ = (\modulo_alu|Mux7~0_combout\ & ((codigo_operacion_alu(1)) # ((\modulo_alu|Add2~6_combout\)))) # (!\modulo_alu|Mux7~0_combout\ & (!codigo_operacion_alu(1) & (\modulo_alu|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Mux7~0_combout\,
	datab => codigo_operacion_alu(1),
	datac => \modulo_alu|Add0~6_combout\,
	datad => \modulo_alu|Add2~6_combout\,
	combout => \modulo_alu|Mux7~1_combout\);

-- Location: LCCOMB_X12_Y11_N28
\modulo_alu|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux7~2_combout\ = (\modulo_alu|resultado[1]~1_combout\ & ((\modulo_alu|resultado[1]~0_combout\) # ((\modulo_alu|Mux7~1_combout\)))) # (!\modulo_alu|resultado[1]~1_combout\ & (!\modulo_alu|resultado[1]~0_combout\ & 
-- (\r_operador1|data_out[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~1_combout\,
	datab => \modulo_alu|resultado[1]~0_combout\,
	datac => \r_operador1|data_out[2]~reg0_regout\,
	datad => \modulo_alu|Mux7~1_combout\,
	combout => \modulo_alu|Mux7~2_combout\);

-- Location: LCCOMB_X12_Y11_N22
\modulo_alu|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux7~3_combout\ = (\modulo_alu|resultado[1]~0_combout\ & ((\modulo_alu|Mux7~2_combout\ & ((!\r_operador1|data_out[3]~reg0_regout\))) # (!\modulo_alu|Mux7~2_combout\ & (\r_operador1|data_out[4]~reg0_regout\)))) # 
-- (!\modulo_alu|resultado[1]~0_combout\ & (((\modulo_alu|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[4]~reg0_regout\,
	datab => \modulo_alu|resultado[1]~0_combout\,
	datac => \r_operador1|data_out[3]~reg0_regout\,
	datad => \modulo_alu|Mux7~2_combout\,
	combout => \modulo_alu|Mux7~3_combout\);

-- Location: LCFF_X12_Y11_N23
\modulo_alu|resultado[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[3]~reg0_regout\);

-- Location: LCFF_X19_Y8_N23
\r_resultado|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \modulo_alu|resultado[3]~reg0_regout\,
	sload => VCC,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(3));

-- Location: LCFF_X25_Y8_N25
\r_resultado|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_resultado|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X22_Y8_N26
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & ((\r_resultado|data_out[3]~reg0_regout\))) # (!donde_leer(0) & (\r_ram|ram_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \r_resultado|data_out[3]~reg0_regout\,
	datac => donde_leer(1),
	datad => donde_leer(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y8_N14
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\) # ((donde_leer(1) & \data_in~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => donde_leer(1),
	datac => \data_in~combout\(3),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X21_Y8_N28
\in_data[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(3) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux11~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(3),
	datac => \Mux11~1_combout\,
	datad => \in_data[5]~0clkctrl_outclk\,
	combout => in_data(3));

-- Location: LCFF_X21_Y8_N29
\r_data|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(3),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(3));

-- Location: LCCOMB_X18_Y11_N0
\r_data|data_out[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[3]~reg0feeder_combout\ = \r_data|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(3),
	combout => \r_data|data_out[3]~reg0feeder_combout\);

-- Location: LCFF_X18_Y11_N1
\r_data|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X17_Y11_N26
\in_op1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(3) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[3]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(3),
	datac => \r_data|data_out[3]~reg0_regout\,
	datad => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	combout => in_op1(3));

-- Location: LCFF_X17_Y11_N27
\r_operador1|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(3),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(3));

-- Location: LCFF_X13_Y11_N7
\r_operador1|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X13_Y11_N18
\modulo_alu|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~8_combout\ = ((\r_operador2|data_out[4]~reg0_regout\ $ (\r_operador1|data_out[4]~reg0_regout\ $ (!\modulo_alu|Add0~7\)))) # (GND)
-- \modulo_alu|Add0~9\ = CARRY((\r_operador2|data_out[4]~reg0_regout\ & ((\r_operador1|data_out[4]~reg0_regout\) # (!\modulo_alu|Add0~7\))) # (!\r_operador2|data_out[4]~reg0_regout\ & (\r_operador1|data_out[4]~reg0_regout\ & !\modulo_alu|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[4]~reg0_regout\,
	datab => \r_operador1|data_out[4]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~7\,
	combout => \modulo_alu|Add0~8_combout\,
	cout => \modulo_alu|Add0~9\);

-- Location: LCCOMB_X13_Y11_N22
\modulo_alu|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~12_combout\ = ((\r_operador2|data_out[6]~reg0_regout\ $ (\r_operador1|data_out[6]~reg0_regout\ $ (!\modulo_alu|Add0~11\)))) # (GND)
-- \modulo_alu|Add0~13\ = CARRY((\r_operador2|data_out[6]~reg0_regout\ & ((\r_operador1|data_out[6]~reg0_regout\) # (!\modulo_alu|Add0~11\))) # (!\r_operador2|data_out[6]~reg0_regout\ & (\r_operador1|data_out[6]~reg0_regout\ & !\modulo_alu|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[6]~reg0_regout\,
	datab => \r_operador1|data_out[6]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~11\,
	combout => \modulo_alu|Add0~12_combout\,
	cout => \modulo_alu|Add0~13\);

-- Location: LCCOMB_X18_Y11_N16
\in_op2[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(6) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[6]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op2(6),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[6]~reg0_regout\,
	combout => in_op2(6));

-- Location: LCFF_X18_Y11_N17
\r_operador2|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(6),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(6));

-- Location: LCFF_X15_Y11_N29
\r_operador2|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X15_Y11_N24
\modulo_alu|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~8_combout\ = (\r_operador2|data_out[4]~reg0_regout\ & (!\modulo_alu|Add1~7\ & VCC)) # (!\r_operador2|data_out[4]~reg0_regout\ & (\modulo_alu|Add1~7\ $ (GND)))
-- \modulo_alu|Add1~9\ = CARRY((!\r_operador2|data_out[4]~reg0_regout\ & !\modulo_alu|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[4]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add1~7\,
	combout => \modulo_alu|Add1~8_combout\,
	cout => \modulo_alu|Add1~9\);

-- Location: LCCOMB_X15_Y11_N28
\modulo_alu|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~12_combout\ = (\r_operador2|data_out[6]~reg0_regout\ & (!\modulo_alu|Add1~11\ & VCC)) # (!\r_operador2|data_out[6]~reg0_regout\ & (\modulo_alu|Add1~11\ $ (GND)))
-- \modulo_alu|Add1~13\ = CARRY((!\r_operador2|data_out[6]~reg0_regout\ & !\modulo_alu|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_operador2|data_out[6]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add1~11\,
	combout => \modulo_alu|Add1~12_combout\,
	cout => \modulo_alu|Add1~13\);

-- Location: LCCOMB_X17_Y11_N14
\in_op1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(5) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[5]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(5),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[5]~reg0_regout\,
	combout => in_op1(5));

-- Location: LCFF_X17_Y11_N15
\r_operador1|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(5),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(5));

-- Location: LCFF_X13_Y11_N21
\r_operador1|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X14_Y11_N22
\modulo_alu|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~10_combout\ = (\modulo_alu|Add1~10_combout\ & ((\r_operador1|data_out[5]~reg0_regout\ & (\modulo_alu|Add2~9\ & VCC)) # (!\r_operador1|data_out[5]~reg0_regout\ & (!\modulo_alu|Add2~9\)))) # (!\modulo_alu|Add1~10_combout\ & 
-- ((\r_operador1|data_out[5]~reg0_regout\ & (!\modulo_alu|Add2~9\)) # (!\r_operador1|data_out[5]~reg0_regout\ & ((\modulo_alu|Add2~9\) # (GND)))))
-- \modulo_alu|Add2~11\ = CARRY((\modulo_alu|Add1~10_combout\ & (!\r_operador1|data_out[5]~reg0_regout\ & !\modulo_alu|Add2~9\)) # (!\modulo_alu|Add1~10_combout\ & ((!\modulo_alu|Add2~9\) # (!\r_operador1|data_out[5]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Add1~10_combout\,
	datab => \r_operador1|data_out[5]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add2~9\,
	combout => \modulo_alu|Add2~10_combout\,
	cout => \modulo_alu|Add2~11\);

-- Location: LCCOMB_X14_Y11_N24
\modulo_alu|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~12_combout\ = ((\r_operador1|data_out[6]~reg0_regout\ $ (\modulo_alu|Add1~12_combout\ $ (!\modulo_alu|Add2~11\)))) # (GND)
-- \modulo_alu|Add2~13\ = CARRY((\r_operador1|data_out[6]~reg0_regout\ & ((\modulo_alu|Add1~12_combout\) # (!\modulo_alu|Add2~11\))) # (!\r_operador1|data_out[6]~reg0_regout\ & (\modulo_alu|Add1~12_combout\ & !\modulo_alu|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[6]~reg0_regout\,
	datab => \modulo_alu|Add1~12_combout\,
	datad => VCC,
	cin => \modulo_alu|Add2~11\,
	combout => \modulo_alu|Add2~12_combout\,
	cout => \modulo_alu|Add2~13\);

-- Location: LCCOMB_X19_Y11_N24
\modulo_alu|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux4~1_combout\ = (\modulo_alu|Mux4~0_combout\ & ((codigo_operacion_alu(1)) # ((\modulo_alu|Add2~12_combout\)))) # (!\modulo_alu|Mux4~0_combout\ & (!codigo_operacion_alu(1) & (\modulo_alu|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Mux4~0_combout\,
	datab => codigo_operacion_alu(1),
	datac => \modulo_alu|Add0~12_combout\,
	datad => \modulo_alu|Add2~12_combout\,
	combout => \modulo_alu|Mux4~1_combout\);

-- Location: LCCOMB_X15_Y11_N14
\modulo_alu|resultado[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|resultado[1]~1_combout\ = (codigo_operacion_alu(1)) # (!codigo_operacion_alu(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => codigo_operacion_alu(1),
	datad => codigo_operacion_alu(2),
	combout => \modulo_alu|resultado[1]~1_combout\);

-- Location: LCCOMB_X19_Y11_N30
\modulo_alu|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux4~2_combout\ = (\modulo_alu|resultado[1]~0_combout\ & (((\r_operador1|data_out[7]~reg0_regout\) # (\modulo_alu|resultado[1]~1_combout\)))) # (!\modulo_alu|resultado[1]~0_combout\ & (\r_operador1|data_out[5]~reg0_regout\ & 
-- ((!\modulo_alu|resultado[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[5]~reg0_regout\,
	datab => \r_operador1|data_out[7]~reg0_regout\,
	datac => \modulo_alu|resultado[1]~0_combout\,
	datad => \modulo_alu|resultado[1]~1_combout\,
	combout => \modulo_alu|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y11_N26
\modulo_alu|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux4~3_combout\ = (\modulo_alu|resultado[1]~1_combout\ & ((\modulo_alu|Mux4~2_combout\ & (!\r_operador1|data_out[6]~reg0_regout\)) # (!\modulo_alu|Mux4~2_combout\ & ((\modulo_alu|Mux4~1_combout\))))) # (!\modulo_alu|resultado[1]~1_combout\ & 
-- (((\modulo_alu|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~1_combout\,
	datab => \r_operador1|data_out[6]~reg0_regout\,
	datac => \modulo_alu|Mux4~1_combout\,
	datad => \modulo_alu|Mux4~2_combout\,
	combout => \modulo_alu|Mux4~3_combout\);

-- Location: LCFF_X19_Y11_N27
\modulo_alu|resultado[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[6]~reg0_regout\);

-- Location: LCCOMB_X19_Y8_N4
\r_resultado|registro[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|registro[6]~feeder_combout\ = \modulo_alu|resultado[6]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \modulo_alu|resultado[6]~reg0_regout\,
	combout => \r_resultado|registro[6]~feeder_combout\);

-- Location: LCFF_X19_Y8_N5
\r_resultado|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|registro[6]~feeder_combout\,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(6));

-- Location: LCFF_X25_Y8_N5
\r_resultado|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_resultado|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X22_Y8_N0
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[6]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => donde_leer(0),
	datab => donde_leer(1),
	datac => \r_resultado|data_out[6]~reg0_regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\) # ((donde_leer(1) & \data_in~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => donde_leer(1),
	datac => \data_in~combout\(6),
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X21_Y8_N26
\in_data[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(6) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux20~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(6),
	datac => \in_data[5]~0clkctrl_outclk\,
	datad => \Mux20~1_combout\,
	combout => in_data(6));

-- Location: LCFF_X21_Y8_N27
\r_data|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(6),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(6));

-- Location: LCCOMB_X18_Y11_N12
\r_data|data_out[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[6]~reg0feeder_combout\ = \r_data|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(6),
	combout => \r_data|data_out[6]~reg0feeder_combout\);

-- Location: LCFF_X18_Y11_N13
\r_data|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X17_Y11_N24
\in_op1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(6) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[6]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(6),
	datac => \r_data|data_out[6]~reg0_regout\,
	datad => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	combout => in_op1(6));

-- Location: LCFF_X17_Y11_N25
\r_operador1|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(6),
	ena => \r_operador1|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(6));

-- Location: LCFF_X13_Y11_N23
\r_operador1|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X13_Y11_N24
\modulo_alu|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~14_combout\ = (\r_operador2|data_out[7]~reg0_regout\ & ((\r_operador1|data_out[7]~reg0_regout\ & (\modulo_alu|Add0~13\ & VCC)) # (!\r_operador1|data_out[7]~reg0_regout\ & (!\modulo_alu|Add0~13\)))) # 
-- (!\r_operador2|data_out[7]~reg0_regout\ & ((\r_operador1|data_out[7]~reg0_regout\ & (!\modulo_alu|Add0~13\)) # (!\r_operador1|data_out[7]~reg0_regout\ & ((\modulo_alu|Add0~13\) # (GND)))))
-- \modulo_alu|Add0~15\ = CARRY((\r_operador2|data_out[7]~reg0_regout\ & (!\r_operador1|data_out[7]~reg0_regout\ & !\modulo_alu|Add0~13\)) # (!\r_operador2|data_out[7]~reg0_regout\ & ((!\modulo_alu|Add0~13\) # (!\r_operador1|data_out[7]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[7]~reg0_regout\,
	datab => \r_operador1|data_out[7]~reg0_regout\,
	datad => VCC,
	cin => \modulo_alu|Add0~13\,
	combout => \modulo_alu|Add0~14_combout\,
	cout => \modulo_alu|Add0~15\);

-- Location: LCCOMB_X14_Y11_N26
\modulo_alu|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~14_combout\ = (\r_operador1|data_out[7]~reg0_regout\ & ((\modulo_alu|Add1~14_combout\ & (\modulo_alu|Add2~13\ & VCC)) # (!\modulo_alu|Add1~14_combout\ & (!\modulo_alu|Add2~13\)))) # (!\r_operador1|data_out[7]~reg0_regout\ & 
-- ((\modulo_alu|Add1~14_combout\ & (!\modulo_alu|Add2~13\)) # (!\modulo_alu|Add1~14_combout\ & ((\modulo_alu|Add2~13\) # (GND)))))
-- \modulo_alu|Add2~15\ = CARRY((\r_operador1|data_out[7]~reg0_regout\ & (!\modulo_alu|Add1~14_combout\ & !\modulo_alu|Add2~13\)) # (!\r_operador1|data_out[7]~reg0_regout\ & ((!\modulo_alu|Add2~13\) # (!\modulo_alu|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[7]~reg0_regout\,
	datab => \modulo_alu|Add1~14_combout\,
	datad => VCC,
	cin => \modulo_alu|Add2~13\,
	combout => \modulo_alu|Add2~14_combout\,
	cout => \modulo_alu|Add2~15\);

-- Location: LCCOMB_X19_Y11_N10
\modulo_alu|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux3~1_combout\ = (\modulo_alu|Mux3~0_combout\ & ((codigo_operacion_alu(1)) # ((\modulo_alu|Add2~14_combout\)))) # (!\modulo_alu|Mux3~0_combout\ & (!codigo_operacion_alu(1) & (\modulo_alu|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Mux3~0_combout\,
	datab => codigo_operacion_alu(1),
	datac => \modulo_alu|Add0~14_combout\,
	datad => \modulo_alu|Add2~14_combout\,
	combout => \modulo_alu|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y11_N0
\modulo_alu|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux3~2_combout\ = (\modulo_alu|resultado[1]~1_combout\ & (((\modulo_alu|resultado[1]~0_combout\) # (\modulo_alu|Mux3~1_combout\)))) # (!\modulo_alu|resultado[1]~1_combout\ & (\r_operador1|data_out[6]~reg0_regout\ & 
-- (!\modulo_alu|resultado[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~1_combout\,
	datab => \r_operador1|data_out[6]~reg0_regout\,
	datac => \modulo_alu|resultado[1]~0_combout\,
	datad => \modulo_alu|Mux3~1_combout\,
	combout => \modulo_alu|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y11_N4
\modulo_alu|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux3~3_combout\ = (\modulo_alu|resultado[1]~0_combout\ & ((\modulo_alu|Mux3~2_combout\ & ((!\r_operador1|data_out[7]~reg0_regout\))) # (!\modulo_alu|Mux3~2_combout\ & (\r_operador1|data_out[0]~reg0_regout\)))) # 
-- (!\modulo_alu|resultado[1]~0_combout\ & (((\modulo_alu|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~0_combout\,
	datab => \r_operador1|data_out[0]~reg0_regout\,
	datac => \r_operador1|data_out[7]~reg0_regout\,
	datad => \modulo_alu|Mux3~2_combout\,
	combout => \modulo_alu|Mux3~3_combout\);

-- Location: LCFF_X19_Y11_N5
\modulo_alu|resultado[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[7]~reg0_regout\);

-- Location: LCFF_X19_Y8_N11
\r_resultado|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \modulo_alu|resultado[7]~reg0_regout\,
	sload => VCC,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(7));

-- Location: LCFF_X25_Y8_N15
\r_resultado|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_resultado|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X22_Y8_N12
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!donde_leer(1) & ((donde_leer(0) & (\r_resultado|data_out[7]~reg0_regout\)) # (!donde_leer(0) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => donde_leer(0),
	datab => donde_leer(1),
	datac => \r_resultado|data_out[7]~reg0_regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\) # ((donde_leer(1) & \data_in~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => donde_leer(1),
	datac => \data_in~combout\(7),
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X21_Y8_N4
\in_data[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(7) = (GLOBAL(\in_data[5]~0clkctrl_outclk\) & ((\Mux21~1_combout\))) # (!GLOBAL(\in_data[5]~0clkctrl_outclk\) & (in_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(7),
	datac => \in_data[5]~0clkctrl_outclk\,
	datad => \Mux21~1_combout\,
	combout => in_data(7));

-- Location: LCFF_X21_Y8_N5
\r_data|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(7),
	ena => \r_data|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(7));

-- Location: LCCOMB_X18_Y11_N18
\r_data|data_out[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[7]~reg0feeder_combout\ = \r_data|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(7),
	combout => \r_data|data_out[7]~reg0feeder_combout\);

-- Location: LCFF_X18_Y11_N19
\r_data|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X18_Y11_N26
\in_op2[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(7) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[7]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(7),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[7]~reg0_regout\,
	combout => in_op2(7));

-- Location: LCFF_X18_Y11_N27
\r_operador2|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(7),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(7));

-- Location: LCFF_X15_Y11_N31
\r_operador2|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X15_Y11_N30
\modulo_alu|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add1~14_combout\ = \modulo_alu|Add1~13\ $ (!\r_operador2|data_out[7]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \r_operador2|data_out[7]~reg0_regout\,
	cin => \modulo_alu|Add1~13\,
	combout => \modulo_alu|Add1~14_combout\);

-- Location: LCCOMB_X19_Y11_N18
\modulo_alu|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux0~0_combout\ = (codigo_operacion_alu(0) & (((\r_operador1|data_out[7]~reg0_regout\)))) # (!codigo_operacion_alu(0) & ((\r_operador2|data_out[7]~reg0_regout\ & (!\modulo_alu|Add0~14_combout\ & \r_operador1|data_out[7]~reg0_regout\)) # 
-- (!\r_operador2|data_out[7]~reg0_regout\ & (\modulo_alu|Add0~14_combout\ & !\r_operador1|data_out[7]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => \r_operador2|data_out[7]~reg0_regout\,
	datac => \modulo_alu|Add0~14_combout\,
	datad => \r_operador1|data_out[7]~reg0_regout\,
	combout => \modulo_alu|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\modulo_alu|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux0~1_combout\ = (codigo_operacion_alu(0) & ((\modulo_alu|Add1~14_combout\ & (!\modulo_alu|Add2~14_combout\ & \modulo_alu|Mux0~0_combout\)) # (!\modulo_alu|Add1~14_combout\ & (\modulo_alu|Add2~14_combout\ & !\modulo_alu|Mux0~0_combout\)))) # 
-- (!codigo_operacion_alu(0) & (((\modulo_alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => \modulo_alu|Add1~14_combout\,
	datac => \modulo_alu|Add2~14_combout\,
	datad => \modulo_alu|Mux0~0_combout\,
	combout => \modulo_alu|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y11_N12
\modulo_alu|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux0~2_combout\ = (!codigo_operacion_alu(2) & !codigo_operacion_alu(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => codigo_operacion_alu(2),
	datac => codigo_operacion_alu(1),
	combout => \modulo_alu|Mux0~2_combout\);

-- Location: LCFF_X19_Y11_N15
\modulo_alu|ov\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux0~1_combout\,
	ena => \modulo_alu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|ov~regout\);

-- Location: LCCOMB_X20_Y11_N20
\in_status[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_status(1) = (\estadoSiguiente.escribir_status~regout\ & ((\modulo_alu|ov~regout\))) # (!\estadoSiguiente.escribir_status~regout\ & (in_status(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_status(1),
	datac => \estadoSiguiente.escribir_status~regout\,
	datad => \modulo_alu|ov~regout\,
	combout => in_status(1));

-- Location: LCCOMB_X20_Y11_N26
\estadoSiguiente~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~58_combout\ = (\control~combout\(2) & \estadoSiguiente.escribir_resultado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datac => \estadoSiguiente.escribir_resultado~regout\,
	combout => \estadoSiguiente~58_combout\);

-- Location: LCFF_X20_Y11_N27
\estadoSiguiente.activar_esc_status\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_status~regout\);

-- Location: LCCOMB_X20_Y11_N18
\Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (!\estadoSiguiente.escribir_status~regout\ & !\estadoSiguiente.activar_esc_status~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_status~regout\,
	datad => \estadoSiguiente.activar_esc_status~regout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X20_Y11_N22
\Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ((!\estadoSiguiente.activar_leer_status~regout\ & (\Selector18~1_combout\ & !\estadoSiguiente.espera~regout\))) # (!\Selector17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_status~regout\,
	datab => \Selector18~1_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector17~1_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X20_Y11_N30
\Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\estadoSiguiente.activar_leer_status~regout\) # (((\Selector17~2_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~2_combout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \estadoSiguiente.activar_leer_status~regout\,
	datad => \Selector17~1_combout\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X20_Y11_N14
\r_status|registro[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_status|registro[1]~0_combout\ = (\Selector18~1_combout\ & \Selector17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector18~1_combout\,
	datad => \Selector17~2_combout\,
	combout => \r_status|registro[1]~0_combout\);

-- Location: LCFF_X20_Y11_N21
\r_status|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_status(1),
	ena => \r_status|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_status|registro\(1));

-- Location: LCFF_X24_Y8_N7
\r_status|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_status|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_status|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N6
\in_salida~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~1_combout\ = (\mostrar~regout\ & ((\r_status|data_out[1]~reg0_regout\))) # (!\mostrar~regout\ & (\r_resultado|data_out[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_resultado|data_out[1]~reg0_regout\,
	datac => \r_status|data_out[1]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~1_combout\);

-- Location: LCCOMB_X24_Y8_N4
\in_salida[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(1) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~1_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_salida(1),
	datac => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	datad => \in_salida~1_combout\,
	combout => in_salida(1));

-- Location: LCFF_X24_Y8_N5
\r_salida|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_salida(1),
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(1));

-- Location: LCFF_X24_Y8_N29
\r_salida|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N28
\salida[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[1]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[1]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[1]$latch~combout\,
	datac => \r_salida|data_out[1]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[1]$latch~combout\);

-- Location: LCCOMB_X12_Y11_N30
\modulo_alu|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux8~0_combout\ = (\modulo_alu|resultado[1]~0_combout\ & (((\r_operador1|data_out[3]~reg0_regout\) # (\modulo_alu|resultado[1]~1_combout\)))) # (!\modulo_alu|resultado[1]~0_combout\ & (\r_operador1|data_out[1]~reg0_regout\ & 
-- ((!\modulo_alu|resultado[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[1]~reg0_regout\,
	datab => \modulo_alu|resultado[1]~0_combout\,
	datac => \r_operador1|data_out[3]~reg0_regout\,
	datad => \modulo_alu|resultado[1]~1_combout\,
	combout => \modulo_alu|Mux8~0_combout\);

-- Location: LCCOMB_X13_Y11_N4
\modulo_alu|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux8~1_combout\ = (codigo_operacion_alu(0) & (((\modulo_alu|Add2~4_combout\) # (codigo_operacion_alu(1))))) # (!codigo_operacion_alu(0) & (\modulo_alu|Add0~4_combout\ & ((!codigo_operacion_alu(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => \modulo_alu|Add0~4_combout\,
	datac => \modulo_alu|Add2~4_combout\,
	datad => codigo_operacion_alu(1),
	combout => \modulo_alu|Mux8~1_combout\);

-- Location: LCCOMB_X13_Y11_N28
\modulo_alu|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux8~2_combout\ = (\modulo_alu|Mux8~1_combout\ & (((\r_operador2|data_out[2]~reg0_regout\ & \r_operador1|data_out[2]~reg0_regout\)) # (!codigo_operacion_alu(1)))) # (!\modulo_alu|Mux8~1_combout\ & (codigo_operacion_alu(1) & 
-- ((\r_operador2|data_out[2]~reg0_regout\) # (\r_operador1|data_out[2]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[2]~reg0_regout\,
	datab => \r_operador1|data_out[2]~reg0_regout\,
	datac => \modulo_alu|Mux8~1_combout\,
	datad => codigo_operacion_alu(1),
	combout => \modulo_alu|Mux8~2_combout\);

-- Location: LCCOMB_X13_Y11_N8
\modulo_alu|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux8~3_combout\ = (\modulo_alu|resultado[1]~1_combout\ & ((\modulo_alu|Mux8~0_combout\ & (!\r_operador1|data_out[2]~reg0_regout\)) # (!\modulo_alu|Mux8~0_combout\ & ((\modulo_alu|Mux8~2_combout\))))) # (!\modulo_alu|resultado[1]~1_combout\ & 
-- (((\modulo_alu|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[2]~reg0_regout\,
	datab => \modulo_alu|resultado[1]~1_combout\,
	datac => \modulo_alu|Mux8~0_combout\,
	datad => \modulo_alu|Mux8~2_combout\,
	combout => \modulo_alu|Mux8~3_combout\);

-- Location: LCFF_X13_Y11_N9
\modulo_alu|resultado[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[2]~reg0_regout\);

-- Location: LCCOMB_X19_Y8_N20
\r_resultado|registro[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|registro[2]~feeder_combout\ = \modulo_alu|resultado[2]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \modulo_alu|resultado[2]~reg0_regout\,
	combout => \r_resultado|registro[2]~feeder_combout\);

-- Location: LCFF_X19_Y8_N21
\r_resultado|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|registro[2]~feeder_combout\,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(2));

-- Location: LCCOMB_X24_Y8_N22
\r_resultado|data_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|data_out[2]~reg0feeder_combout\ = \r_resultado|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_resultado|registro\(2),
	combout => \r_resultado|data_out[2]~reg0feeder_combout\);

-- Location: LCFF_X24_Y8_N23
\r_resultado|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X14_Y11_N28
\modulo_alu|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add2~16_combout\ = !\modulo_alu|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \modulo_alu|Add2~15\,
	combout => \modulo_alu|Add2~16_combout\);

-- Location: LCCOMB_X19_Y11_N28
\modulo_alu|carry~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|carry~0_combout\ = (\modulo_alu|carry~regout\) # (\modulo_alu|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modulo_alu|carry~regout\,
	datad => \modulo_alu|Add2~16_combout\,
	combout => \modulo_alu|carry~0_combout\);

-- Location: LCCOMB_X13_Y11_N26
\modulo_alu|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Add0~16_combout\ = !\modulo_alu|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \modulo_alu|Add0~15\,
	combout => \modulo_alu|Add0~16_combout\);

-- Location: LCFF_X19_Y11_N29
\modulo_alu|carry\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|carry~0_combout\,
	sdata => \modulo_alu|Add0~16_combout\,
	sload => ALT_INV_codigo_operacion_alu(0),
	ena => \modulo_alu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|carry~regout\);

-- Location: LCCOMB_X20_Y11_N28
\in_status[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_status(2) = (\estadoSiguiente.escribir_status~regout\ & ((\modulo_alu|carry~regout\))) # (!\estadoSiguiente.escribir_status~regout\ & (in_status(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_status(2),
	datac => \estadoSiguiente.escribir_status~regout\,
	datad => \modulo_alu|carry~regout\,
	combout => in_status(2));

-- Location: LCFF_X20_Y11_N29
\r_status|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_status(2),
	ena => \r_status|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_status|registro\(2));

-- Location: LCFF_X24_Y8_N13
\r_status|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_status|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_status|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N12
\in_salida~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~2_combout\ = (\mostrar~regout\ & ((\r_status|data_out[2]~reg0_regout\))) # (!\mostrar~regout\ & (\r_resultado|data_out[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_resultado|data_out[2]~reg0_regout\,
	datac => \r_status|data_out[2]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~2_combout\);

-- Location: LCCOMB_X24_Y8_N8
\in_salida[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(2) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~2_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_salida(2),
	datac => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	datad => \in_salida~2_combout\,
	combout => in_salida(2));

-- Location: LCFF_X24_Y8_N9
\r_salida|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_salida(2),
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(2));

-- Location: LCFF_X24_Y8_N3
\r_salida|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N2
\salida[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[2]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[2]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[2]$latch~combout\,
	datac => \r_salida|data_out[2]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[2]$latch~combout\);

-- Location: LCCOMB_X25_Y8_N24
\in_salida~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~3_combout\ = (\r_resultado|data_out[3]~reg0_regout\ & !\mostrar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_resultado|data_out[3]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~3_combout\);

-- Location: LCCOMB_X25_Y8_N8
\in_salida[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(3) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~3_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	datab => in_salida(3),
	datad => \in_salida~3_combout\,
	combout => in_salida(3));

-- Location: LCFF_X25_Y8_N17
\r_salida|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_salida(3),
	sload => VCC,
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(3));

-- Location: LCFF_X25_Y8_N1
\r_salida|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N0
\salida[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[3]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[3]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[3]$latch~combout\,
	datac => \r_salida|data_out[3]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[3]$latch~combout\);

-- Location: LCCOMB_X15_Y11_N0
\modulo_alu|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux6~0_combout\ = (\modulo_alu|resultado[1]~0_combout\ & (((\r_operador1|data_out[5]~reg0_regout\) # (\modulo_alu|resultado[1]~1_combout\)))) # (!\modulo_alu|resultado[1]~0_combout\ & (\r_operador1|data_out[3]~reg0_regout\ & 
-- ((!\modulo_alu|resultado[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[3]~reg0_regout\,
	datab => \r_operador1|data_out[5]~reg0_regout\,
	datac => \modulo_alu|resultado[1]~0_combout\,
	datad => \modulo_alu|resultado[1]~1_combout\,
	combout => \modulo_alu|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y11_N8
\in_op2[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(4) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[4]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(4),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[4]~reg0_regout\,
	combout => in_op2(4));

-- Location: LCFF_X18_Y11_N9
\r_operador2|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(4),
	ena => \r_operador2|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(4));

-- Location: LCFF_X15_Y11_N25
\r_operador2|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X14_Y11_N30
\modulo_alu|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux6~1_combout\ = (codigo_operacion_alu(1) & (((codigo_operacion_alu(0))))) # (!codigo_operacion_alu(1) & ((codigo_operacion_alu(0) & (\modulo_alu|Add2~8_combout\)) # (!codigo_operacion_alu(0) & ((\modulo_alu|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Add2~8_combout\,
	datab => codigo_operacion_alu(1),
	datac => codigo_operacion_alu(0),
	datad => \modulo_alu|Add0~8_combout\,
	combout => \modulo_alu|Mux6~1_combout\);

-- Location: LCCOMB_X14_Y11_N0
\modulo_alu|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux6~2_combout\ = (codigo_operacion_alu(1) & ((\r_operador1|data_out[4]~reg0_regout\ & ((\r_operador2|data_out[4]~reg0_regout\) # (!\modulo_alu|Mux6~1_combout\))) # (!\r_operador1|data_out[4]~reg0_regout\ & 
-- (\r_operador2|data_out[4]~reg0_regout\ & !\modulo_alu|Mux6~1_combout\)))) # (!codigo_operacion_alu(1) & (((\modulo_alu|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[4]~reg0_regout\,
	datab => \r_operador2|data_out[4]~reg0_regout\,
	datac => codigo_operacion_alu(1),
	datad => \modulo_alu|Mux6~1_combout\,
	combout => \modulo_alu|Mux6~2_combout\);

-- Location: LCCOMB_X14_Y11_N4
\modulo_alu|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux6~3_combout\ = (\modulo_alu|resultado[1]~1_combout\ & ((\modulo_alu|Mux6~0_combout\ & (!\r_operador1|data_out[4]~reg0_regout\)) # (!\modulo_alu|Mux6~0_combout\ & ((\modulo_alu|Mux6~2_combout\))))) # (!\modulo_alu|resultado[1]~1_combout\ & 
-- (\modulo_alu|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~1_combout\,
	datab => \modulo_alu|Mux6~0_combout\,
	datac => \r_operador1|data_out[4]~reg0_regout\,
	datad => \modulo_alu|Mux6~2_combout\,
	combout => \modulo_alu|Mux6~3_combout\);

-- Location: LCFF_X14_Y11_N5
\modulo_alu|resultado[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[4]~reg0_regout\);

-- Location: LCCOMB_X19_Y8_N16
\r_resultado|registro[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|registro[4]~feeder_combout\ = \modulo_alu|resultado[4]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \modulo_alu|resultado[4]~reg0_regout\,
	combout => \r_resultado|registro[4]~feeder_combout\);

-- Location: LCFF_X19_Y8_N17
\r_resultado|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|registro[4]~feeder_combout\,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(4));

-- Location: LCFF_X25_Y8_N21
\r_resultado|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_resultado|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N20
\in_salida~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~4_combout\ = (\r_resultado|data_out[4]~reg0_regout\ & !\mostrar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_resultado|data_out[4]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~4_combout\);

-- Location: LCCOMB_X25_Y8_N26
\in_salida[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(4) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~4_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_salida(4),
	datac => \in_salida~4_combout\,
	datad => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	combout => in_salida(4));

-- Location: LCFF_X25_Y8_N27
\r_salida|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_salida(4),
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(4));

-- Location: LCFF_X25_Y8_N23
\r_salida|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N22
\salida[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[4]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[4]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[4]$latch~combout\,
	datac => \r_salida|data_out[4]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[4]$latch~combout\);

-- Location: LCCOMB_X15_Y11_N10
\modulo_alu|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux5~0_combout\ = (codigo_operacion_alu(0) & (((\r_operador2|data_out[5]~reg0_regout\ & \r_operador1|data_out[5]~reg0_regout\)) # (!codigo_operacion_alu(1)))) # (!codigo_operacion_alu(0) & (codigo_operacion_alu(1) & 
-- ((\r_operador2|data_out[5]~reg0_regout\) # (\r_operador1|data_out[5]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => codigo_operacion_alu(0),
	datab => codigo_operacion_alu(1),
	datac => \r_operador2|data_out[5]~reg0_regout\,
	datad => \r_operador1|data_out[5]~reg0_regout\,
	combout => \modulo_alu|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y11_N2
\modulo_alu|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux5~1_combout\ = (codigo_operacion_alu(1) & (((\modulo_alu|Mux5~0_combout\)))) # (!codigo_operacion_alu(1) & ((\modulo_alu|Mux5~0_combout\ & ((\modulo_alu|Add2~10_combout\))) # (!\modulo_alu|Mux5~0_combout\ & (\modulo_alu|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|Add0~10_combout\,
	datab => codigo_operacion_alu(1),
	datac => \modulo_alu|Mux5~0_combout\,
	datad => \modulo_alu|Add2~10_combout\,
	combout => \modulo_alu|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y11_N6
\modulo_alu|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux5~2_combout\ = (\modulo_alu|resultado[1]~0_combout\ & (((\modulo_alu|resultado[1]~1_combout\)))) # (!\modulo_alu|resultado[1]~0_combout\ & ((\modulo_alu|resultado[1]~1_combout\ & (\modulo_alu|Mux5~1_combout\)) # 
-- (!\modulo_alu|resultado[1]~1_combout\ & ((\r_operador1|data_out[4]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modulo_alu|resultado[1]~0_combout\,
	datab => \modulo_alu|Mux5~1_combout\,
	datac => \modulo_alu|resultado[1]~1_combout\,
	datad => \r_operador1|data_out[4]~reg0_regout\,
	combout => \modulo_alu|Mux5~2_combout\);

-- Location: LCCOMB_X14_Y11_N10
\modulo_alu|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modulo_alu|Mux5~3_combout\ = (\modulo_alu|resultado[1]~0_combout\ & ((\modulo_alu|Mux5~2_combout\ & ((!\r_operador1|data_out[5]~reg0_regout\))) # (!\modulo_alu|Mux5~2_combout\ & (\r_operador1|data_out[6]~reg0_regout\)))) # 
-- (!\modulo_alu|resultado[1]~0_combout\ & (((\modulo_alu|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[6]~reg0_regout\,
	datab => \r_operador1|data_out[5]~reg0_regout\,
	datac => \modulo_alu|resultado[1]~0_combout\,
	datad => \modulo_alu|Mux5~2_combout\,
	combout => \modulo_alu|Mux5~3_combout\);

-- Location: LCFF_X14_Y11_N11
\modulo_alu|resultado[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \modulo_alu|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modulo_alu|resultado[5]~reg0_regout\);

-- Location: LCCOMB_X19_Y8_N14
\r_resultado|registro[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_resultado|registro[5]~feeder_combout\ = \modulo_alu|resultado[5]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \modulo_alu|resultado[5]~reg0_regout\,
	combout => \r_resultado|registro[5]~feeder_combout\);

-- Location: LCFF_X19_Y8_N15
\r_resultado|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_resultado|registro[5]~feeder_combout\,
	ena => \r_resultado|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|registro\(5));

-- Location: LCFF_X25_Y8_N9
\r_resultado|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_resultado|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_resultado|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N10
\in_salida~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~5_combout\ = (!\mostrar~regout\ & \r_resultado|data_out[5]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mostrar~regout\,
	datad => \r_resultado|data_out[5]~reg0_regout\,
	combout => \in_salida~5_combout\);

-- Location: LCCOMB_X25_Y8_N16
\in_salida[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(5) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~5_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_salida(5),
	datab => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	datad => \in_salida~5_combout\,
	combout => in_salida(5));

-- Location: LCFF_X25_Y8_N11
\r_salida|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_salida(5),
	sload => VCC,
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(5));

-- Location: LCFF_X25_Y8_N13
\r_salida|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N12
\salida[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[5]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[5]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[5]$latch~combout\,
	datac => \r_salida|data_out[5]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[5]$latch~combout\);

-- Location: LCCOMB_X25_Y8_N4
\in_salida~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~6_combout\ = (\r_resultado|data_out[6]~reg0_regout\ & !\mostrar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_resultado|data_out[6]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~6_combout\);

-- Location: LCCOMB_X25_Y8_N6
\in_salida[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(6) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~6_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_salida(6),
	datac => \in_salida~6_combout\,
	datad => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	combout => in_salida(6));

-- Location: LCFF_X25_Y8_N7
\r_salida|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_salida(6),
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(6));

-- Location: LCFF_X25_Y8_N19
\r_salida|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N18
\salida[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[6]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[6]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[6]$latch~combout\,
	datac => \r_salida|data_out[6]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[6]$latch~combout\);

-- Location: LCCOMB_X25_Y8_N14
\in_salida~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \in_salida~7_combout\ = (\r_resultado|data_out[7]~reg0_regout\ & !\mostrar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_resultado|data_out[7]~reg0_regout\,
	datad => \mostrar~regout\,
	combout => \in_salida~7_combout\);

-- Location: LCCOMB_X25_Y8_N2
\in_salida[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_salida(7) = (GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & ((\in_salida~7_combout\))) # (!GLOBAL(\estadoSiguiente.escribir_salida~clkctrl_outclk\) & (in_salida(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_salida(7),
	datac => \in_salida~7_combout\,
	datad => \estadoSiguiente.escribir_salida~clkctrl_outclk\,
	combout => in_salida(7));

-- Location: LCFF_X25_Y8_N3
\r_salida|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_salida(7),
	ena => \r_salida|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|registro\(7));

-- Location: LCFF_X25_Y8_N29
\r_salida|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_salida|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_salida|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N28
\salida[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[7]$latch~combout\ = (GLOBAL(\salida~0clkctrl_outclk\) & ((\r_salida|data_out[7]~reg0_regout\))) # (!GLOBAL(\salida~0clkctrl_outclk\) & (\salida[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[7]$latch~combout\,
	datac => \r_salida|data_out[7]~reg0_regout\,
	datad => \salida~0clkctrl_outclk\,
	combout => \salida[7]$latch~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[2]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[3]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(3));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[4]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(4));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[5]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[6]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(6));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \salida[7]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida(7));
END structure;


