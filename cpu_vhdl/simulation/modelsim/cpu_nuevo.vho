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

-- DATE "01/30/2024 18:36:33"

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
-- salida[0]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[2]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[3]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[4]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[5]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[6]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[7]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[2]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[1]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \estadoSiguiente.escribir_op1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoSiguiente.escribir_op2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoSiguiente.escribir_data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr31~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr30~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr29~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \r_operador2|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \op_a_cargar~0_combout\ : std_logic;
SIGNAL \estadoSiguiente.inicio~regout\ : std_logic;
SIGNAL \r_ram|ram~15_combout\ : std_logic;
SIGNAL \estadoSiguiente~45_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \r_pc|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \r_operador2|data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_operador1|data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \estadoSiguiente~40_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_op2~regout\ : std_logic;
SIGNAL \estadoSiguiente~39_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op2~regout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~36_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~30_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ri~feeder_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ri~regout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \estadoSiguiente.incrementar_pc~regout\ : std_logic;
SIGNAL \WideOr32~0_combout\ : std_logic;
SIGNAL \control[0]~clkctrl_outclk\ : std_logic;
SIGNAL \WideOr31~0_combout\ : std_logic;
SIGNAL \WideOr31~0clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~0_combout\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~regout\ : std_logic;
SIGNAL \WideOr30~0_combout\ : std_logic;
SIGNAL \WideOr30~0clkctrl_outclk\ : std_logic;
SIGNAL \WideOr29~0_combout\ : std_logic;
SIGNAL \WideOr29~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \r_pc|registro[0]~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \r_ri|registro[5]~feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estadoSiguiente.espera~regout\ : std_logic;
SIGNAL \estadoSiguiente~42_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_pc~regout\ : std_logic;
SIGNAL \estadoSiguiente~46_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~43_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~37_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~33_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_ri~regout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \r_ri|registro[7]~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \op_a_cargar~1_combout\ : std_logic;
SIGNAL \op_a_cargar~2_combout\ : std_logic;
SIGNAL \op_a_cargar~regout\ : std_logic;
SIGNAL \estadoSiguiente~41_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~38_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~34_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~31_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~35_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_op2~regout\ : std_logic;
SIGNAL \estadoSiguiente~32_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_op2~regout\ : std_logic;
SIGNAL \estadoSiguiente~29_combout\ : std_logic;
SIGNAL \estadoSiguiente.mostrar_salida~regout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~0clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op1~clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente~48_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~47_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~feeder_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~regout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~clkctrl_outclk\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \estadoSiguiente~44_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_data~regout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \r_data|registro[0]~0_combout\ : std_logic;
SIGNAL \r_data|data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \r_operador1|registro[0]~0_combout\ : std_logic;
SIGNAL \r_operador1|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \salida[0]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \r_data|data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op2~clkctrl_outclk\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \r_operador2|registro[0]~0_combout\ : std_logic;
SIGNAL \r_operador2|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \salida[1]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r_data|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_operador2|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \salida[2]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \salida[3]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \salida[4]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \salida[5]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \salida[6]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_data|registro[7]~feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_operador1|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_operador2|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \salida[7]$latch~combout\ : std_logic;
SIGNAL posicion_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL posicion_actual : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ri : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL in_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL in_op2 : std_logic_vector(7 DOWNTO 0);
SIGNAL in_op1 : std_logic_vector(7 DOWNTO 0);
SIGNAL in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_operador1|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \control~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \r_data|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_pc|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_operador2|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_ri|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_control~combout\ : std_logic_vector(2 DOWNTO 2);

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

\estadoSiguiente.escribir_op1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_op1~regout\);

\estadoSiguiente.escribir_op2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_op2~regout\);

\estadoSiguiente.escribir_data~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_data~regout\);

\control[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \control~combout\(0));

\WideOr31~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr31~0_combout\);

\WideOr30~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr30~0_combout\);

\WideOr2~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr2~0_combout\);

\WideOr29~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr29~0_combout\);
\ALT_INV_control~combout\(2) <= NOT \control~combout\(2);

-- Location: LCCOMB_X12_Y7_N20
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

-- Location: LCCOMB_X12_Y7_N28
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (posicion_actual(6) & (\Add0~11\ $ (GND))) # (!posicion_actual(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((posicion_actual(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCFF_X13_Y5_N23
\r_operador2|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[0]~reg0_regout\);

-- Location: LCFF_X9_Y5_N11
\r_operador1|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[1]~reg0_regout\);

-- Location: LCFF_X9_Y5_N7
\r_operador2|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador2|data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[3]~reg0_regout\);

-- Location: LCFF_X9_Y5_N17
\r_operador1|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador1|data_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[4]~reg0_regout\);

-- Location: LCFF_X13_Y5_N13
\r_operador2|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[6]~reg0_regout\);

-- Location: LCFF_X12_Y5_N31
\r_operador2|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(0),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(0));

-- Location: LCCOMB_X10_Y5_N24
\op_a_cargar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_a_cargar~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & ((\op_a_cargar~regout\ & ((\r_ri|data_out[4]~reg0_regout\) # (!\r_ri|data_out[3]~reg0_regout\))) # (!\op_a_cargar~regout\ & (\r_ri|data_out[4]~reg0_regout\ & 
-- !\r_ri|data_out[3]~reg0_regout\)))) # (!\estadoSiguiente.incrementar_pc~regout\ & (\op_a_cargar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \op_a_cargar~regout\,
	datac => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[3]~reg0_regout\,
	combout => \op_a_cargar~0_combout\);

-- Location: LCFF_X13_Y5_N21
\r_operador1|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(1),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(1));

-- Location: LCFF_X12_Y5_N21
\r_operador2|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(3),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(3));

-- Location: LCFF_X13_Y5_N7
\r_operador1|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(4),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(4));

-- Location: LCFF_X14_Y5_N17
\r_operador2|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(6),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(6));

-- Location: LCFF_X13_Y6_N11
\estadoSiguiente.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.inicio~regout\);

-- Location: LCCOMB_X15_Y6_N24
\r_ram|ram~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ram|ram~15_combout\ = (\Selector9~2_combout\ & \Selector8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~2_combout\,
	datad => \Selector8~2_combout\,
	combout => \r_ram|ram~15_combout\);

-- Location: LCCOMB_X13_Y6_N10
\estadoSiguiente~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~45_combout\ = (!\estadoSiguiente.reset_pc~regout\) # (!\control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \estadoSiguiente~45_combout\);

-- Location: LCCOMB_X14_Y6_N22
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((!\estadoSiguiente.incrementar_pc~regout\ & (\Selector8~2_combout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \Selector8~2_combout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X15_Y6_N30
\Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\Selector8~1_combout\) # ((\estadoSiguiente.activar_leer_ram~regout\) # (\estadoSiguiente.activar_esc_data~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~1_combout\,
	datac => \estadoSiguiente.activar_leer_ram~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X14_Y6_N24
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (!\estadoSiguiente.activar_esc_data~regout\ & (!\estadoSiguiente.incrementar_pc~regout\ & (!\estadoSiguiente.espera~regout\ & !\estadoSiguiente.activar_leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_data~regout\,
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X14_Y6_N26
\Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((\Selector9~2_combout\ & \Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~2_combout\,
	datac => \Selector9~1_combout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector9~2_combout\);

-- Location: LCFF_X12_Y6_N7
\r_pc|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N6
\Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\r_pc|data_out[2]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[2]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector45~0_combout\);

-- Location: LCFF_X12_Y7_N11
\r_pc|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(2),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(2));

-- Location: LCCOMB_X12_Y7_N6
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!posicion_ram(2) & (!posicion_ram(4) & (!posicion_ram(3) & !posicion_ram(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(2),
	datab => posicion_ram(4),
	datac => posicion_ram(3),
	datad => posicion_ram(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y7_N2
\Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\Add0~4_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector54~0_combout\);

-- Location: LCFF_X12_Y6_N1
\r_pc|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N0
\Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\r_pc|data_out[6]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[6]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector49~0_combout\);

-- Location: LCFF_X12_Y7_N5
\r_pc|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(6),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(6));

-- Location: LCCOMB_X12_Y7_N14
\Selector58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & (\Add0~12_combout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~12_combout\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X12_Y5_N30
\in_op2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(0) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[0]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(0),
	datac => \r_data|data_out[0]~reg0_regout\,
	datad => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	combout => in_op2(0));

-- Location: LCCOMB_X13_Y5_N20
\in_op1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(1) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[1]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(1),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[1]~reg0_regout\,
	combout => in_op1(1));

-- Location: LCCOMB_X12_Y5_N20
\in_op2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(3) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[3]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op2(3),
	datac => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	datad => \r_data|data_out[3]~reg0_regout\,
	combout => in_op2(3));

-- Location: LCCOMB_X13_Y5_N6
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

-- Location: LCCOMB_X14_Y5_N16
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

-- Location: LCCOMB_X12_Y7_N10
\in_pc[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(2) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(2))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(2),
	datab => \Selector54~0_combout\,
	datad => \WideOr29~0clkctrl_outclk\,
	combout => in_pc(2));

-- Location: LCCOMB_X12_Y6_N30
\posicion_actual[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(6) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & ((\Selector49~0_combout\))) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & (posicion_actual(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(6),
	datab => \Selector49~0_combout\,
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_actual(6));

-- Location: LCCOMB_X12_Y7_N4
\in_pc[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(6) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(6))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(6),
	datac => \Selector58~0_combout\,
	datad => \WideOr29~0clkctrl_outclk\,
	combout => in_pc(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y5_N6
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

-- Location: LCCOMB_X9_Y5_N16
\r_operador1|data_out[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador1|data_out[4]~reg0feeder_combout\ = \r_operador1|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_operador1|registro\(4),
	combout => \r_operador1|data_out[4]~reg0feeder_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X12_Y5_N18
\estadoSiguiente~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~40_combout\ = (\estadoSiguiente.activar_leer_data~regout\ & (\control~combout\(2) & \op_a_cargar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_data~regout\,
	datab => \control~combout\(2),
	datad => \op_a_cargar~regout\,
	combout => \estadoSiguiente~40_combout\);

-- Location: LCFF_X12_Y5_N19
\estadoSiguiente.activar_esc_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_op2~regout\);

-- Location: LCCOMB_X9_Y6_N24
\estadoSiguiente~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~39_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_op2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datad => \estadoSiguiente.activar_esc_op2~regout\,
	combout => \estadoSiguiente~39_combout\);

-- Location: LCFF_X9_Y6_N25
\estadoSiguiente.escribir_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_op2~regout\);

-- Location: LCCOMB_X10_Y6_N12
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (!\estadoSiguiente.escribir_op1~regout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X10_Y6_N8
\in_ri[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(0) = (\WideOr32~0_combout\ & ((\Selector23~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr32~0_combout\,
	datac => in_ri(0),
	datad => \Selector23~0_combout\,
	combout => in_ri(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y6_N20
\estadoSiguiente~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~36_combout\ = (\control~combout\(2) & (\estadoSiguiente.activar_leer_pc~regout\ & \control~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	datad => \control~combout\(1),
	combout => \estadoSiguiente~36_combout\);

-- Location: LCFF_X14_Y6_N21
\estadoSiguiente.escribir_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_ram~regout\);

-- Location: LCCOMB_X9_Y6_N16
\estadoSiguiente~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~30_combout\ = (\estadoSiguiente.activar_leer_ri~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_leer_ri~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~30_combout\);

-- Location: LCCOMB_X5_Y6_N10
\estadoSiguiente.leer_ri~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente.leer_ri~feeder_combout\ = \estadoSiguiente~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoSiguiente~30_combout\,
	combout => \estadoSiguiente.leer_ri~feeder_combout\);

-- Location: LCFF_X5_Y6_N11
\estadoSiguiente.leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente.leer_ri~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ri~regout\);

-- Location: LCCOMB_X14_Y6_N10
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\estadoSiguiente.mostrar_salida~regout\) # ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ri~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \estadoSiguiente.leer_ri~regout\,
	combout => \WideOr2~combout\);

-- Location: LCFF_X14_Y6_N11
\estadoSiguiente.incrementar_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \WideOr2~combout\,
	sclr => \ALT_INV_control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.incrementar_pc~regout\);

-- Location: LCCOMB_X10_Y6_N16
\WideOr32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr32~0_combout\ = (\estadoSiguiente.leer_ram~regout\) # ((\estadoSiguiente.escribir_op2~regout\) # (\estadoSiguiente.escribir_op1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.leer_ram~regout\,
	datab => \estadoSiguiente.escribir_op2~regout\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \WideOr32~0_combout\);

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

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X14_Y6_N18
\WideOr31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr31~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\) # (\estadoSiguiente.escribir_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	combout => \WideOr31~0_combout\);

-- Location: CLKCTRL_G6
\WideOr31~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr31~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr31~0clkctrl_outclk\);

-- Location: LCCOMB_X10_Y7_N16
\in_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(0) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(0))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(0),
	datac => in_ram(0),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(0));

-- Location: LCCOMB_X14_Y7_N12
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

-- Location: LCFF_X14_Y7_N13
\estadoSiguiente.reset_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	datain => \estadoSiguiente.reset_pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.reset_pc~regout\);

-- Location: LCCOMB_X13_Y6_N14
\WideOr30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr30~0_combout\ = (\estadoSiguiente.reset_pc~regout\) # ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.reset_pc~regout\,
	datac => \estadoSiguiente.leer_ram~regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \WideOr30~0_combout\);

-- Location: CLKCTRL_G5
\WideOr30~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr30~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr30~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y7_N30
\WideOr29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr29~0_combout\ = (!\estadoSiguiente.incrementar_pc~regout\ & !\estadoSiguiente.reset_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \WideOr29~0_combout\);

-- Location: CLKCTRL_G7
\WideOr29~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr29~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr29~0clkctrl_outclk\);

-- Location: LCCOMB_X12_Y6_N4
\posicion_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(2) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & (\Selector45~0_combout\)) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & ((posicion_ram(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~0_combout\,
	datac => posicion_ram(2),
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_ram(2));

-- Location: LCCOMB_X12_Y7_N16
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = posicion_ram(0) $ (VCC)
-- \Add0~1\ = CARRY(posicion_ram(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X12_Y7_N18
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

-- Location: LCCOMB_X13_Y7_N14
\Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~2_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X13_Y7_N22
\in_pc[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(1) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(1))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(1),
	datac => \Selector53~0_combout\,
	datad => \WideOr29~0clkctrl_outclk\,
	combout => in_pc(1));

-- Location: LCCOMB_X13_Y7_N24
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ((\Selector7~1_combout\ & (!\estadoSiguiente.activar_leer_pc~regout\ & !\estadoSiguiente.espera~regout\))) # (!\WideOr29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \estadoSiguiente.activar_leer_pc~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \WideOr29~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X13_Y7_N12
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\estadoSiguiente.activar_leer_pc~regout\) # (((\Selector6~1_combout\ & !\estadoSiguiente.espera~regout\)) # (!\WideOr29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \estadoSiguiente.activar_leer_pc~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \WideOr29~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X13_Y7_N30
\r_pc|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_pc|registro[0]~0_combout\ = (\Selector7~1_combout\ & \Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector7~1_combout\,
	datad => \Selector6~1_combout\,
	combout => \r_pc|registro[0]~0_combout\);

-- Location: LCFF_X13_Y7_N23
\r_pc|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(1),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(1));

-- Location: LCFF_X12_Y6_N19
\r_pc|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N18
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\r_pc|data_out[1]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[1]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X12_Y6_N12
\posicion_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(1) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & ((\Selector44~0_combout\))) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & (posicion_ram(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(1),
	datab => \Selector44~0_combout\,
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_ram(1));

-- Location: LCCOMB_X12_Y7_N22
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (posicion_ram(3) & (!\Add0~5\)) # (!posicion_ram(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!posicion_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X13_Y7_N28
\Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~6_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X13_Y7_N20
\in_pc[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(3) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(3))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(3),
	datac => \WideOr29~0clkctrl_outclk\,
	datad => \Selector55~0_combout\,
	combout => in_pc(3));

-- Location: LCFF_X13_Y7_N21
\r_pc|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(3),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(3));

-- Location: LCFF_X12_Y6_N9
\r_pc|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N8
\Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\r_pc|data_out[3]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[3]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X12_Y6_N22
\posicion_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(3) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & ((\Selector46~0_combout\))) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & (posicion_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(3),
	datac => \Selector46~0_combout\,
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_ram(3));

-- Location: LCCOMB_X12_Y7_N24
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (posicion_ram(4) & (\Add0~7\ $ (GND))) # (!posicion_ram(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((posicion_ram(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X12_Y7_N26
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (posicion_ram(5) & (!\Add0~9\)) # (!posicion_ram(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!posicion_ram(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X12_Y7_N30
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = posicion_actual(7) $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X13_Y7_N2
\Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Add0~14_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X13_Y7_N26
\in_pc[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(7) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(7))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector59~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(7),
	datac => \WideOr29~0clkctrl_outclk\,
	datad => \Selector59~0_combout\,
	combout => in_pc(7));

-- Location: LCFF_X13_Y7_N27
\r_pc|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(7),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(7));

-- Location: LCFF_X13_Y7_N7
\r_pc|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X13_Y7_N6
\Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\r_pc|data_out[7]~reg0_regout\ & ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_ram~regout\,
	datac => \r_pc|data_out[7]~reg0_regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X13_Y7_N0
\posicion_actual[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(7) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & ((\Selector50~0_combout\))) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & (posicion_actual(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(7),
	datac => \WideOr30~0clkctrl_outclk\,
	datad => \Selector50~0_combout\,
	combout => posicion_actual(7));

-- Location: LCCOMB_X12_Y7_N0
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (posicion_actual(6) & (!posicion_ram(0) & (!posicion_actual(7) & !posicion_ram(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(6),
	datab => posicion_ram(0),
	datac => posicion_actual(7),
	datad => posicion_ram(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y7_N8
\Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Add0~0_combout\ & (\estadoSiguiente.incrementar_pc~regout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~0_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X12_Y7_N12
\in_pc[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(0) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(0))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(0),
	datac => \Selector51~0_combout\,
	datad => \WideOr29~0clkctrl_outclk\,
	combout => in_pc(0));

-- Location: LCFF_X12_Y7_N13
\r_pc|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(0),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(0));

-- Location: LCFF_X12_Y6_N25
\r_pc|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N24
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\r_pc|data_out[0]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[0]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X12_Y6_N2
\posicion_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(0) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & ((\Selector42~0_combout\))) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & (posicion_ram(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(0),
	datac => \Selector42~0_combout\,
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_ram(0));

-- Location: LCCOMB_X13_Y7_N10
\Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~8_combout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X13_Y7_N18
\in_pc[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(4) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(4))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(4),
	datac => \WideOr29~0clkctrl_outclk\,
	datad => \Selector56~0_combout\,
	combout => in_pc(4));

-- Location: LCFF_X13_Y7_N19
\r_pc|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(4),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(4));

-- Location: LCFF_X12_Y6_N27
\r_pc|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N26
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\r_pc|data_out[4]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[4]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X12_Y6_N16
\posicion_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(4) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & (\Selector47~0_combout\)) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & ((posicion_ram(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector47~0_combout\,
	datac => posicion_ram(4),
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_ram(4));

-- Location: LCCOMB_X13_Y7_N16
\Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~10_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X13_Y7_N8
\in_pc[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(5) = (GLOBAL(\WideOr29~0clkctrl_outclk\) & (in_pc(5))) # (!GLOBAL(\WideOr29~0clkctrl_outclk\) & ((\Selector57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(5),
	datac => \Selector57~0_combout\,
	datad => \WideOr29~0clkctrl_outclk\,
	combout => in_pc(5));

-- Location: LCFF_X13_Y7_N9
\r_pc|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(5),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(5));

-- Location: LCFF_X12_Y6_N29
\r_pc|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N28
\Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\r_pc|data_out[5]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X12_Y6_N10
\posicion_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(5) = (GLOBAL(\WideOr30~0clkctrl_outclk\) & (\Selector48~0_combout\)) # (!GLOBAL(\WideOr30~0clkctrl_outclk\) & ((posicion_ram(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector48~0_combout\,
	datac => posicion_ram(5),
	datad => \WideOr30~0clkctrl_outclk\,
	combout => posicion_ram(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X7_Y6_N16
\in_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(1) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(1))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(1),
	datac => in_ram(1),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(1));

-- Location: LCCOMB_X12_Y4_N24
\in_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(2) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(2))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(2),
	datac => in_ram(2),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(2));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X10_Y6_N26
\in_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(3) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & ((\data_in~combout\(3)))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & (in_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ram(3),
	datac => \data_in~combout\(3),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(3));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X9_Y6_N22
\in_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(4) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(4))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(4),
	datac => \WideOr31~0clkctrl_outclk\,
	datad => in_ram(4),
	combout => in_ram(4));

-- Location: LCCOMB_X12_Y4_N22
\in_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(5) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(5))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => in_ram(5),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(5));

-- Location: LCCOMB_X12_Y6_N20
\in_ram[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(6) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(6))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datab => in_ram(6),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(6));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X15_Y6_N20
\in_ram[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(7) = (GLOBAL(\WideOr31~0clkctrl_outclk\) & (\data_in~combout\(7))) # (!GLOBAL(\WideOr31~0clkctrl_outclk\) & ((in_ram(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(7),
	datac => in_ram(7),
	datad => \WideOr31~0clkctrl_outclk\,
	combout => in_ram(7));

-- Location: M4K_X11_Y6
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

-- Location: LCCOMB_X9_Y6_N18
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & (!\estadoSiguiente.escribir_op2~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_op1~regout\,
	datac => \estadoSiguiente.escribir_op2~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X9_Y6_N2
\in_ri[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(5) = (\WideOr32~0_combout\ & ((\Selector29~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(5),
	datac => \WideOr32~0_combout\,
	datad => \Selector29~0_combout\,
	combout => in_ri(5));

-- Location: LCCOMB_X9_Y6_N0
\r_ri|registro[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|registro[5]~feeder_combout\ = in_ri(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => in_ri(5),
	combout => \r_ri|registro[5]~feeder_combout\);

-- Location: LCFF_X9_Y6_N1
\r_ri|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|registro[5]~feeder_combout\,
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(5));

-- Location: LCFF_X10_Y5_N7
\r_ri|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X9_Y6_N6
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & (!\estadoSiguiente.escribir_op2~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_op1~regout\,
	datac => \estadoSiguiente.escribir_op2~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X9_Y6_N20
\in_ri[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(6) = (\WideOr32~0_combout\ & ((\Selector30~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(6),
	datac => \WideOr32~0_combout\,
	datad => \Selector30~0_combout\,
	combout => in_ri(6));

-- Location: LCFF_X9_Y6_N9
\r_ri|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_ri(6),
	sload => VCC,
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(6));

-- Location: LCFF_X10_Y5_N23
\r_ri|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X10_Y6_N10
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a2\ & (!\estadoSiguiente.escribir_op1~regout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X10_Y6_N4
\in_ri[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(2) = (\WideOr32~0_combout\ & ((\Selector26~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr32~0_combout\,
	datac => in_ri(2),
	datad => \Selector26~0_combout\,
	combout => in_ri(2));

-- Location: LCFF_X10_Y6_N5
\r_ri|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(2),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(2));

-- Location: LCFF_X10_Y5_N19
\r_ri|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X10_Y5_N22
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\r_ri|data_out[7]~reg0_regout\ & (!\r_ri|data_out[5]~reg0_regout\ & (!\r_ri|data_out[6]~reg0_regout\ & !\r_ri|data_out[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[7]~reg0_regout\,
	datab => \r_ri|data_out[5]~reg0_regout\,
	datac => \r_ri|data_out[6]~reg0_regout\,
	datad => \r_ri|data_out[2]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X10_Y6_N22
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a3\ & (!\estadoSiguiente.escribir_op1~regout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X10_Y6_N0
\in_ri[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(3) = (\WideOr32~0_combout\ & ((\Selector27~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr32~0_combout\,
	datab => in_ri(3),
	datad => \Selector27~0_combout\,
	combout => in_ri(3));

-- Location: LCFF_X10_Y6_N1
\r_ri|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(3),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(3));

-- Location: LCCOMB_X9_Y5_N18
\r_ri|data_out[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[3]~reg0feeder_combout\ = \r_ri|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(3),
	combout => \r_ri|data_out[3]~reg0feeder_combout\);

-- Location: LCFF_X9_Y5_N19
\r_ri|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X10_Y6_N30
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a4\ & (!\estadoSiguiente.escribir_op1~regout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X10_Y6_N20
\in_ri[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(4) = (\WideOr32~0_combout\ & ((\Selector28~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr32~0_combout\,
	datac => in_ri(4),
	datad => \Selector28~0_combout\,
	combout => in_ri(4));

-- Location: LCFF_X10_Y6_N21
\r_ri|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(4),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(4));

-- Location: LCFF_X10_Y5_N25
\r_ri|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X10_Y5_N2
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\r_ri|data_out[1]~reg0_regout\ & (!\r_ri|data_out[0]~reg0_regout\ & (\r_ri|data_out[3]~reg0_regout\ $ (\r_ri|data_out[4]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[1]~reg0_regout\,
	datab => \r_ri|data_out[3]~reg0_regout\,
	datac => \r_ri|data_out[0]~reg0_regout\,
	datad => \r_ri|data_out[4]~reg0_regout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X13_Y6_N16
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\estadoSiguiente.incrementar_pc~regout\ & ((!\Mux0~1_combout\) # (!\Mux0~0_combout\)))) # (!\estadoSiguiente.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.inicio~regout\,
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datac => \Mux0~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X13_Y6_N17
\estadoSiguiente.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	sclr => \ALT_INV_control~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.espera~regout\);

-- Location: LCCOMB_X13_Y7_N4
\estadoSiguiente~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~42_combout\ = (\control~combout\(2) & \estadoSiguiente.espera~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.espera~regout\,
	combout => \estadoSiguiente~42_combout\);

-- Location: LCFF_X13_Y7_N5
\estadoSiguiente.activar_leer_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_pc~regout\);

-- Location: LCCOMB_X14_Y6_N30
\estadoSiguiente~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~46_combout\ = (\control~combout\(2) & (\estadoSiguiente.activar_leer_pc~regout\ & !\control~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	datad => \control~combout\(1),
	combout => \estadoSiguiente~46_combout\);

-- Location: LCFF_X14_Y6_N31
\estadoSiguiente.activar_leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_ram~regout\);

-- Location: LCCOMB_X14_Y6_N16
\estadoSiguiente~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~43_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_leer_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \estadoSiguiente~43_combout\);

-- Location: LCFF_X12_Y6_N31
\estadoSiguiente.leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \estadoSiguiente~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ram~regout\);

-- Location: LCCOMB_X9_Y6_N12
\estadoSiguiente~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~37_combout\ = (\control~combout\(2) & \estadoSiguiente.leer_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \estadoSiguiente~37_combout\);

-- Location: LCFF_X9_Y6_N13
\estadoSiguiente.activar_esc_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_ri~regout\);

-- Location: LCCOMB_X9_Y6_N14
\estadoSiguiente~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~33_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_ri~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.activar_esc_ri~regout\,
	combout => \estadoSiguiente~33_combout\);

-- Location: LCFF_X9_Y6_N15
\estadoSiguiente.activar_leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_ri~regout\);

-- Location: LCCOMB_X9_Y6_N4
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\estadoSiguiente.activar_leer_ri~regout\ & !\estadoSiguiente.mostrar_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_leer_ri~regout\,
	datac => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X9_Y6_N26
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\estadoSiguiente.activar_esc_ri~regout\ & (!\estadoSiguiente.escribir_op2~regout\ & !\estadoSiguiente.escribir_op1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_esc_ri~regout\,
	datac => \estadoSiguiente.escribir_op2~regout\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X9_Y6_N28
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = ((!\estadoSiguiente.espera~regout\ & (\Selector4~2_combout\ & \Selector4~1_combout\))) # (!\Selector3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.espera~regout\,
	datab => \Selector4~2_combout\,
	datac => \Selector4~1_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X10_Y6_N6
\Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (((\Selector3~2_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector3~1_combout\)) # (!\Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \Selector4~1_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X10_Y6_N14
\r_ri|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|registro[7]~0_combout\ = (\Selector4~2_combout\ & \Selector3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~2_combout\,
	datad => \Selector3~2_combout\,
	combout => \r_ri|registro[7]~0_combout\);

-- Location: LCFF_X10_Y6_N9
\r_ri|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(0),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(0));

-- Location: LCFF_X10_Y5_N3
\r_ri|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X10_Y5_N4
\op_a_cargar~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_a_cargar~1_combout\ = (\r_ri|data_out[1]~reg0_regout\) # ((\r_ri|data_out[0]~reg0_regout\) # (!\control~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[1]~reg0_regout\,
	datab => \control~combout\(2),
	datad => \r_ri|data_out[0]~reg0_regout\,
	combout => \op_a_cargar~1_combout\);

-- Location: LCCOMB_X10_Y5_N20
\op_a_cargar~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_a_cargar~2_combout\ = (\op_a_cargar~1_combout\ & (((\op_a_cargar~regout\)))) # (!\op_a_cargar~1_combout\ & ((\Mux0~0_combout\ & (\op_a_cargar~0_combout\)) # (!\Mux0~0_combout\ & ((\op_a_cargar~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_a_cargar~0_combout\,
	datab => \op_a_cargar~1_combout\,
	datac => \op_a_cargar~regout\,
	datad => \Mux0~0_combout\,
	combout => \op_a_cargar~2_combout\);

-- Location: LCFF_X10_Y5_N21
op_a_cargar : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \op_a_cargar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \op_a_cargar~regout\);

-- Location: LCCOMB_X14_Y5_N22
\estadoSiguiente~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~41_combout\ = (\estadoSiguiente.activar_leer_data~regout\ & (\control~combout\(2) & !\op_a_cargar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_data~regout\,
	datab => \control~combout\(2),
	datac => \op_a_cargar~regout\,
	combout => \estadoSiguiente~41_combout\);

-- Location: LCFF_X14_Y5_N23
\estadoSiguiente.activar_esc_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_op1~regout\);

-- Location: LCCOMB_X9_Y6_N30
\estadoSiguiente~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~38_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.activar_esc_op1~regout\,
	combout => \estadoSiguiente~38_combout\);

-- Location: LCFF_X9_Y6_N31
\estadoSiguiente.escribir_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_op1~regout\);

-- Location: LCCOMB_X14_Y5_N20
\estadoSiguiente~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~34_combout\ = (\control~combout\(2) & \estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \estadoSiguiente~34_combout\);

-- Location: LCFF_X14_Y5_N21
\estadoSiguiente.activar_leer_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_op1~regout\);

-- Location: LCCOMB_X14_Y5_N28
\estadoSiguiente~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~31_combout\ = (\estadoSiguiente.activar_leer_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~31_combout\);

-- Location: LCFF_X14_Y5_N29
\estadoSiguiente.leer_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_op1~regout\);

-- Location: LCCOMB_X12_Y5_N12
\estadoSiguiente~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~35_combout\ = (\estadoSiguiente.escribir_op2~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_op2~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~35_combout\);

-- Location: LCFF_X12_Y5_N13
\estadoSiguiente.activar_leer_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_op2~regout\);

-- Location: LCCOMB_X12_Y5_N4
\estadoSiguiente~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~32_combout\ = (\estadoSiguiente.activar_leer_op2~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_op2~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~32_combout\);

-- Location: LCFF_X12_Y5_N5
\estadoSiguiente.leer_op2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_op2~regout\);

-- Location: LCCOMB_X14_Y6_N8
\estadoSiguiente~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~29_combout\ = (\estadoSiguiente.leer_op1~regout\) # (\estadoSiguiente.leer_op2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.leer_op1~regout\,
	datad => \estadoSiguiente.leer_op2~regout\,
	combout => \estadoSiguiente~29_combout\);

-- Location: LCFF_X10_Y6_N17
\estadoSiguiente.mostrar_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \estadoSiguiente~29_combout\,
	sclr => \ALT_INV_control~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.mostrar_salida~regout\);

-- Location: LCCOMB_X5_Y6_N2
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\estadoSiguiente.mostrar_salida~regout\ & !\estadoSiguiente.leer_ri~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.mostrar_salida~regout\,
	datad => \estadoSiguiente.leer_ri~regout\,
	combout => \WideOr2~0_combout\);

-- Location: CLKCTRL_G3
\WideOr2~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr2~0clkctrl_outclk\);

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X13_Y6_N12
\estadoSiguiente~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~48_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & (\control~combout\(2) & (\Mux0~0_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \control~combout\(2),
	datac => \Mux0~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \estadoSiguiente~48_combout\);

-- Location: LCFF_X13_Y6_N13
\estadoSiguiente.activar_esc_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_data~regout\);

-- Location: LCCOMB_X14_Y6_N28
\estadoSiguiente~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~47_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(2),
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \estadoSiguiente~47_combout\);

-- Location: LCCOMB_X27_Y7_N6
\estadoSiguiente.escribir_data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente.escribir_data~feeder_combout\ = \estadoSiguiente~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoSiguiente~47_combout\,
	combout => \estadoSiguiente.escribir_data~feeder_combout\);

-- Location: LCFF_X27_Y7_N7
\estadoSiguiente.escribir_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente.escribir_data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_data~regout\);

-- Location: CLKCTRL_G4
\estadoSiguiente.escribir_data~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estadoSiguiente.escribir_data~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estadoSiguiente.escribir_data~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y6_N20
\in_data[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(0) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(0),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => in_data(0));

-- Location: LCCOMB_X13_Y6_N26
\estadoSiguiente~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~44_combout\ = (\control~combout\(2) & \estadoSiguiente.escribir_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.escribir_data~regout\,
	combout => \estadoSiguiente~44_combout\);

-- Location: LCFF_X13_Y6_N27
\estadoSiguiente.activar_leer_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_data~regout\);

-- Location: LCCOMB_X13_Y6_N24
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\estadoSiguiente.activar_esc_data~regout\) # ((\Selector11~1_combout\ & (!\estadoSiguiente.activar_leer_data~regout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \estadoSiguiente.activar_leer_data~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X13_Y6_N18
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\estadoSiguiente.activar_leer_data~regout\) # ((\estadoSiguiente.activar_esc_data~regout\) # ((!\estadoSiguiente.espera~regout\ & \Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.espera~regout\,
	datab => \Selector10~1_combout\,
	datac => \estadoSiguiente.activar_leer_data~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X13_Y6_N22
\r_data|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|registro[0]~0_combout\ = (\Selector11~1_combout\ & \Selector10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector11~1_combout\,
	datad => \Selector10~1_combout\,
	combout => \r_data|registro[0]~0_combout\);

-- Location: LCFF_X13_Y6_N21
\r_data|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(0),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(0));

-- Location: LCCOMB_X12_Y5_N8
\r_data|data_out[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[0]~reg0feeder_combout\ = \r_data|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(0),
	combout => \r_data|data_out[0]~reg0feeder_combout\);

-- Location: LCFF_X12_Y5_N9
\r_data|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N26
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

-- Location: LCCOMB_X14_Y5_N12
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (!\estadoSiguiente.activar_leer_op1~regout\ & !\estadoSiguiente.leer_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_leer_op1~regout\,
	datad => \estadoSiguiente.leer_op1~regout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X14_Y5_N18
\Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\estadoSiguiente.activar_esc_op1~regout\) # ((\Selector13~2_combout\ & (!\estadoSiguiente.espera~regout\ & \Selector13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~2_combout\,
	datab => \estadoSiguiente.activar_esc_op1~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X13_Y5_N10
\Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = ((\estadoSiguiente.activar_esc_op1~regout\) # ((!\estadoSiguiente.espera~regout\ & \Selector12~1_combout\))) # (!\Selector13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.espera~regout\,
	datab => \Selector12~1_combout\,
	datac => \Selector13~1_combout\,
	datad => \estadoSiguiente.activar_esc_op1~regout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X13_Y5_N30
\r_operador1|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador1|registro[0]~0_combout\ = (\Selector13~2_combout\ & \Selector12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector13~2_combout\,
	datad => \Selector12~1_combout\,
	combout => \r_operador1|registro[0]~0_combout\);

-- Location: LCFF_X13_Y5_N27
\r_operador1|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(0),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(0));

-- Location: LCFF_X13_Y5_N1
\r_operador1|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N0
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & (\r_operador2|data_out[0]~reg0_regout\)) # (!\op_a_cargar~regout\ & ((\r_operador1|data_out[0]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[0]~reg0_regout\,
	datab => \op_a_cargar~regout\,
	datac => \r_operador1|data_out[0]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X13_Y5_N22
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\r_ri|data_out[0]~reg0_regout\ & !\estadoSiguiente.mostrar_salida~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[0]~reg0_regout\,
	datab => \estadoSiguiente.mostrar_salida~regout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X13_Y5_N16
\salida[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[0]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[0]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[0]$latch~combout\,
	datac => \WideOr2~0clkctrl_outclk\,
	datad => \Selector1~1_combout\,
	combout => \salida[0]$latch~combout\);

-- Location: LCCOMB_X10_Y6_N28
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a1\ & (!\estadoSiguiente.escribir_op1~regout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X10_Y6_N2
\in_ri[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(1) = (\WideOr32~0_combout\ & ((\Selector25~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr32~0_combout\,
	datac => in_ri(1),
	datad => \Selector25~0_combout\,
	combout => in_ri(1));

-- Location: LCFF_X10_Y6_N3
\r_ri|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(1),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(1));

-- Location: LCFF_X10_Y5_N1
\r_ri|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X13_Y6_N0
\in_data[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(1) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a1\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(1),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => in_data(1));

-- Location: LCFF_X13_Y6_N1
\r_data|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(1),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(1));

-- Location: LCCOMB_X12_Y5_N14
\r_data|data_out[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[1]~reg0feeder_combout\ = \r_data|registro\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(1),
	combout => \r_data|data_out[1]~reg0feeder_combout\);

-- Location: LCFF_X12_Y5_N15
\r_data|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[1]~reg0_regout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X12_Y5_N16
\in_op2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op2(1) = (GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & ((\r_data|data_out[1]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op2~clkctrl_outclk\) & (in_op2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op2(1),
	datac => \r_data|data_out[1]~reg0_regout\,
	datad => \estadoSiguiente.escribir_op2~clkctrl_outclk\,
	combout => in_op2(1));

-- Location: LCCOMB_X12_Y5_N28
\Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (!\estadoSiguiente.leer_op2~regout\ & !\estadoSiguiente.activar_leer_op2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.leer_op2~regout\,
	datad => \estadoSiguiente.activar_leer_op2~regout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X12_Y5_N24
\Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\estadoSiguiente.activar_esc_op2~regout\) # ((\Selector15~2_combout\ & (!\estadoSiguiente.espera~regout\ & \Selector15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~2_combout\,
	datab => \estadoSiguiente.activar_esc_op2~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector15~1_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X12_Y5_N6
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\estadoSiguiente.activar_esc_op2~regout\) # (((\Selector14~1_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~1_combout\,
	datab => \estadoSiguiente.activar_esc_op2~regout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector15~1_combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X12_Y5_N2
\r_operador2|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador2|registro[0]~0_combout\ = (\Selector15~2_combout\ & \Selector14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector15~2_combout\,
	datad => \Selector14~1_combout\,
	combout => \r_operador2|registro[0]~0_combout\);

-- Location: LCFF_X12_Y5_N17
\r_operador2|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(1),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(1));

-- Location: LCFF_X9_Y5_N13
\r_operador2|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X9_Y5_N12
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & ((\r_operador2|data_out[1]~reg0_regout\))) # (!\op_a_cargar~regout\ & (\r_operador1|data_out[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[1]~reg0_regout\,
	datab => \estadoSiguiente.mostrar_salida~regout\,
	datac => \r_operador2|data_out[1]~reg0_regout\,
	datad => \op_a_cargar~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X9_Y5_N20
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\r_ri|data_out[1]~reg0_regout\ & !\estadoSiguiente.mostrar_salida~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[1]~reg0_regout\,
	datac => \estadoSiguiente.mostrar_salida~regout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X9_Y5_N4
\salida[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[1]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[1]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[1]$latch~combout\,
	datac => \Selector0~1_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[1]$latch~combout\);

-- Location: LCCOMB_X13_Y6_N8
\in_data[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(2) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a2\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(2),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => in_data(2));

-- Location: LCFF_X13_Y6_N9
\r_data|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(2),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(2));

-- Location: LCFF_X12_Y5_N1
\r_data|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X12_Y5_N10
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

-- Location: LCFF_X12_Y5_N11
\r_operador2|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(2),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(2));

-- Location: LCCOMB_X10_Y5_N30
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

-- Location: LCFF_X10_Y5_N31
\r_operador2|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador2|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N18
\in_op1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(2) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[2]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(2),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[2]~reg0_regout\,
	combout => in_op1(2));

-- Location: LCFF_X13_Y5_N19
\r_operador1|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(2),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(2));

-- Location: LCFF_X10_Y5_N29
\r_operador1|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X10_Y5_N28
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & (\r_operador2|data_out[2]~reg0_regout\)) # (!\op_a_cargar~regout\ & ((\r_operador1|data_out[2]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_a_cargar~regout\,
	datab => \r_operador2|data_out[2]~reg0_regout\,
	datac => \r_operador1|data_out[2]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X10_Y5_N0
\Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Selector16~0_combout\) # ((!\estadoSiguiente.mostrar_salida~regout\ & \r_ri|data_out[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datab => \r_ri|data_out[2]~reg0_regout\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X10_Y5_N18
\salida[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[2]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[2]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[2]$latch~combout\,
	datab => \Selector16~1_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[2]$latch~combout\);

-- Location: LCCOMB_X13_Y6_N2
\in_data[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(3) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a3\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(3),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => in_data(3));

-- Location: LCFF_X13_Y6_N3
\r_data|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(3),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(3));

-- Location: LCFF_X12_Y5_N23
\r_data|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N14
\in_op1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(3) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[3]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(3),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[3]~reg0_regout\,
	combout => in_op1(3));

-- Location: LCFF_X13_Y5_N15
\r_operador1|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(3),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(3));

-- Location: LCFF_X9_Y5_N29
\r_operador1|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X9_Y5_N28
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & (\r_operador2|data_out[3]~reg0_regout\)) # (!\op_a_cargar~regout\ & ((\r_operador1|data_out[3]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[3]~reg0_regout\,
	datab => \estadoSiguiente.mostrar_salida~regout\,
	datac => \r_operador1|data_out[3]~reg0_regout\,
	datad => \op_a_cargar~regout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X9_Y5_N24
\Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\) # ((\r_ri|data_out[3]~reg0_regout\ & !\estadoSiguiente.mostrar_salida~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[3]~reg0_regout\,
	datac => \estadoSiguiente.mostrar_salida~regout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X9_Y5_N30
\salida[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[3]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[3]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[3]$latch~combout\,
	datac => \Selector17~1_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[3]$latch~combout\);

-- Location: LCCOMB_X13_Y6_N30
\in_data[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(4) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a4\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(4),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => in_data(4));

-- Location: LCFF_X13_Y6_N31
\r_data|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(4),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(4));

-- Location: LCFF_X13_Y5_N31
\r_data|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X12_Y5_N26
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

-- Location: LCFF_X12_Y5_N27
\r_operador2|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(4),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(4));

-- Location: LCFF_X9_Y5_N23
\r_operador2|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X9_Y5_N22
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & ((\r_operador2|data_out[4]~reg0_regout\))) # (!\op_a_cargar~regout\ & (\r_operador1|data_out[4]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador1|data_out[4]~reg0_regout\,
	datab => \op_a_cargar~regout\,
	datac => \r_operador2|data_out[4]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X9_Y5_N14
\Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\) # ((\r_ri|data_out[4]~reg0_regout\ & !\estadoSiguiente.mostrar_salida~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[4]~reg0_regout\,
	datac => \estadoSiguiente.mostrar_salida~regout\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X9_Y5_N0
\salida[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[4]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[4]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[4]$latch~combout\,
	datac => \Selector18~1_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[4]$latch~combout\);

-- Location: LCCOMB_X13_Y6_N28
\in_data[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(5) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a5\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(5),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => in_data(5));

-- Location: LCFF_X13_Y6_N29
\r_data|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(5),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(5));

-- Location: LCCOMB_X14_Y5_N24
\r_data|data_out[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|data_out[5]~reg0feeder_combout\ = \r_data|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_data|registro\(5),
	combout => \r_data|data_out[5]~reg0feeder_combout\);

-- Location: LCFF_X14_Y5_N25
\r_data|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N8
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

-- Location: LCFF_X13_Y5_N9
\r_operador1|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(5),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(5));

-- Location: LCFF_X10_Y5_N5
\r_operador1|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X14_Y5_N10
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

-- Location: LCFF_X14_Y5_N11
\r_operador2|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(5),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(5));

-- Location: LCFF_X10_Y5_N11
\r_operador2|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X10_Y5_N10
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & ((\r_operador2|data_out[5]~reg0_regout\))) # (!\op_a_cargar~regout\ & (\r_operador1|data_out[5]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_a_cargar~regout\,
	datab => \r_operador1|data_out[5]~reg0_regout\,
	datac => \r_operador2|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X10_Y5_N16
\Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector19~0_combout\) # ((!\estadoSiguiente.mostrar_salida~regout\ & \r_ri|data_out[5]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datab => \r_ri|data_out[5]~reg0_regout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X10_Y5_N14
\salida[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[5]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[5]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[5]$latch~combout\,
	datac => \Selector19~1_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[5]$latch~combout\);

-- Location: LCCOMB_X13_Y6_N6
\in_data[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(6) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a6\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(6),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => in_data(6));

-- Location: LCFF_X13_Y6_N7
\r_data|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(6),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(6));

-- Location: LCCOMB_X14_Y5_N30
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

-- Location: LCFF_X14_Y5_N31
\r_data|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N4
\in_op1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(6) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[6]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(6),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[6]~reg0_regout\,
	combout => in_op1(6));

-- Location: LCFF_X13_Y5_N5
\r_operador1|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(6),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(6));

-- Location: LCFF_X13_Y5_N3
\r_operador1|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N2
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & (\r_operador2|data_out[6]~reg0_regout\)) # (!\op_a_cargar~regout\ & ((\r_operador1|data_out[6]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_operador2|data_out[6]~reg0_regout\,
	datab => \op_a_cargar~regout\,
	datac => \r_operador1|data_out[6]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X13_Y5_N12
\Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector20~0_combout\) # ((\r_ri|data_out[6]~reg0_regout\ & !\estadoSiguiente.mostrar_salida~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[6]~reg0_regout\,
	datab => \estadoSiguiente.mostrar_salida~regout\,
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: LCCOMB_X13_Y5_N28
\salida[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[6]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[6]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[6]$latch~combout\,
	datac => \WideOr2~0clkctrl_outclk\,
	datad => \Selector20~1_combout\,
	combout => \salida[6]$latch~combout\);

-- Location: LCCOMB_X10_Y6_N18
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a7\ & (!\estadoSiguiente.escribir_op1~regout\ & !\estadoSiguiente.escribir_op2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \estadoSiguiente.escribir_op1~regout\,
	datad => \estadoSiguiente.escribir_op2~regout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X10_Y6_N24
\in_ri[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(7) = (\WideOr32~0_combout\ & ((\Selector31~0_combout\))) # (!\WideOr32~0_combout\ & (in_ri(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr32~0_combout\,
	datac => in_ri(7),
	datad => \Selector31~0_combout\,
	combout => in_ri(7));

-- Location: LCFF_X10_Y6_N25
\r_ri|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(7),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(7));

-- Location: LCFF_X10_Y5_N9
\r_ri|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X12_Y6_N14
\in_data[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(7) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a7\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(7),
	datac => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => in_data(7));

-- Location: LCCOMB_X13_Y6_N4
\r_data|registro[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|registro[7]~feeder_combout\ = in_data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => in_data(7),
	combout => \r_data|registro[7]~feeder_combout\);

-- Location: LCFF_X13_Y6_N5
\r_data|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|registro[7]~feeder_combout\,
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(7));

-- Location: LCCOMB_X14_Y5_N0
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

-- Location: LCFF_X14_Y5_N1
\r_data|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X13_Y5_N24
\in_op1[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(7) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[7]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(7),
	datab => \r_data|data_out[7]~reg0_regout\,
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	combout => in_op1(7));

-- Location: LCFF_X13_Y5_N25
\r_operador1|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(7),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(7));

-- Location: LCCOMB_X10_Y5_N26
\r_operador1|data_out[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador1|data_out[7]~reg0feeder_combout\ = \r_operador1|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_operador1|registro\(7),
	combout => \r_operador1|data_out[7]~reg0feeder_combout\);

-- Location: LCFF_X10_Y5_N27
\r_operador1|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_operador1|data_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X14_Y5_N26
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

-- Location: LCFF_X14_Y5_N27
\r_operador2|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op2(7),
	ena => \r_operador2|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|registro\(7));

-- Location: LCFF_X10_Y5_N13
\r_operador2|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador2|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador2|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X10_Y5_N12
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\op_a_cargar~regout\ & ((\r_operador2|data_out[7]~reg0_regout\))) # (!\op_a_cargar~regout\ & (\r_operador1|data_out[7]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_a_cargar~regout\,
	datab => \r_operador1|data_out[7]~reg0_regout\,
	datac => \r_operador2|data_out[7]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X10_Y5_N8
\Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\Selector21~0_combout\) # ((!\estadoSiguiente.mostrar_salida~regout\ & \r_ri|data_out[7]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datac => \r_ri|data_out[7]~reg0_regout\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X10_Y5_N6
\salida[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[7]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[7]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[7]$latch~combout\,
	datab => \Selector21~1_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[7]$latch~combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


