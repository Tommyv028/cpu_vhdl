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

-- DATE "01/29/2024 18:15:14"

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
-- salida[0]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[1]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[2]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[4]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[5]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[6]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[7]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[2]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \WideOr24~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoSiguiente.escribir_data~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr27~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr26~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr25~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \estadoSiguiente.inicio~regout\ : std_logic;
SIGNAL \r_ram|ram~15_combout\ : std_logic;
SIGNAL \estadoSiguiente~36_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \r_pc|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~30_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~28_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~26_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~37_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~33_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ram~regout\ : std_logic;
SIGNAL \WideOr27~0_combout\ : std_logic;
SIGNAL \WideOr27~0clkctrl_outclk\ : std_logic;
SIGNAL \control[0]~clkctrl_outclk\ : std_logic;
SIGNAL \WideOr26~0_combout\ : std_logic;
SIGNAL \WideOr26~0clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~0_combout\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~regout\ : std_logic;
SIGNAL \WideOr25~0_combout\ : std_logic;
SIGNAL \WideOr25~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \WideOr24~0_combout\ : std_logic;
SIGNAL \WideOr24~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \r_pc|registro[0]~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \estadoSiguiente~27_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~25_combout\ : std_logic;
SIGNAL \estadoSiguiente.mostrar_salida~regout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \r_ri|registro[7]~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estadoSiguiente.espera~regout\ : std_logic;
SIGNAL \estadoSiguiente~40_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_pc~regout\ : std_logic;
SIGNAL \estadoSiguiente~39_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_ram~regout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \estadoSiguiente.incrementar_pc~regout\ : std_logic;
SIGNAL \estadoSiguiente~38_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~35_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~feeder_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~32_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_esc_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente~34_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_data~regout\ : std_logic;
SIGNAL \estadoSiguiente~31_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op1~regout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_op1~clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.escribir_data~clkctrl_outclk\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \r_data|registro[0]~0_combout\ : std_logic;
SIGNAL \r_data|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \estadoSiguiente~29_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_leer_op1~regout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \r_operador1|registro[0]~0_combout\ : std_logic;
SIGNAL \r_operador1|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~0clkctrl_outclk\ : std_logic;
SIGNAL \salida[0]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \salida[1]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \r_data|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \salida[2]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \salida[3]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \salida[4]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \salida[5]$latch~combout\ : std_logic;
SIGNAL \r_data|data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \salida[6]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_data|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_operador1|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \salida[7]$latch~combout\ : std_logic;
SIGNAL posicion_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL posicion_actual : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ri : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL in_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL in_op1 : std_logic_vector(7 DOWNTO 0);
SIGNAL in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_operador1|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \control~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \r_ri|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_data|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_pc|registro\ : std_logic_vector(7 DOWNTO 0);
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

\WideOr24~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr24~0_combout\);

\estadoSiguiente.escribir_data~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.escribir_data~regout\);

\control[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \control~combout\(0));

\WideOr2~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr2~0_combout\);

\WideOr27~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr27~0_combout\);

\WideOr26~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr26~0_combout\);

\WideOr25~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr25~0_combout\);
\ALT_INV_control~combout\(2) <= NOT \control~combout\(2);

-- Location: LCCOMB_X25_Y9_N12
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

-- Location: LCCOMB_X25_Y9_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (posicion_actual(6) & (\Add0~11\ $ (GND))) # (!posicion_actual(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((posicion_actual(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y9_N26
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (posicion_actual(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => posicion_actual(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCFF_X21_Y9_N21
\estadoSiguiente.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.inicio~regout\);

-- Location: LCCOMB_X22_Y9_N16
\r_ram|ram~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ram|ram~15_combout\ = (\Selector11~2_combout\ & \Selector10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector11~2_combout\,
	datad => \Selector10~2_combout\,
	combout => \r_ram|ram~15_combout\);

-- Location: LCCOMB_X21_Y9_N20
\estadoSiguiente~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~36_combout\ = (!\estadoSiguiente.reset_pc~regout\) # (!\control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \estadoSiguiente~36_combout\);

-- Location: LCCOMB_X22_Y9_N30
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((!\estadoSiguiente.incrementar_pc~regout\ & (\Selector10~2_combout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \Selector10~2_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X21_Y9_N18
\Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector10~1_combout\) # ((\estadoSiguiente.activar_esc_data~regout\) # (\estadoSiguiente.activar_leer_ram~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datac => \estadoSiguiente.activar_esc_data~regout\,
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X21_Y9_N2
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!\estadoSiguiente.espera~regout\ & (!\estadoSiguiente.activar_esc_data~regout\ & (!\estadoSiguiente.incrementar_pc~regout\ & !\estadoSiguiente.activar_leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.espera~regout\,
	datab => \estadoSiguiente.activar_esc_data~regout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X21_Y9_N6
\Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((\Selector11~2_combout\ & \Selector11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~2_combout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCFF_X24_Y9_N7
\r_pc|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X24_Y9_N6
\Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\r_pc|data_out[7]~reg0_regout\ & ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_ram~regout\,
	datac => \r_pc|data_out[7]~reg0_regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \Selector48~0_combout\);

-- Location: LCFF_X26_Y9_N5
\r_pc|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(7),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(7));

-- Location: LCCOMB_X25_Y9_N28
\Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~14_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X24_Y9_N16
\posicion_actual[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(7) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector48~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_actual(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr25~0clkctrl_outclk\,
	datab => posicion_actual(7),
	datad => \Selector48~0_combout\,
	combout => posicion_actual(7));

-- Location: LCCOMB_X26_Y9_N4
\in_pc[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(7) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(7))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector57~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr24~0clkctrl_outclk\,
	datac => in_pc(7),
	datad => \Selector57~0_combout\,
	combout => in_pc(7));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X25_Y8_N20
\estadoSiguiente~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~30_combout\ = (\estadoSiguiente.leer_ram~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.leer_ram~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~30_combout\);

-- Location: LCFF_X25_Y8_N21
\estadoSiguiente.activar_esc_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_ri~regout\);

-- Location: LCCOMB_X25_Y8_N18
\estadoSiguiente~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~28_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_ri~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.activar_esc_ri~regout\,
	combout => \estadoSiguiente~28_combout\);

-- Location: LCFF_X25_Y8_N19
\estadoSiguiente.activar_leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_ri~regout\);

-- Location: LCCOMB_X21_Y9_N8
\estadoSiguiente~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~26_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_leer_ri~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datac => \estadoSiguiente.activar_leer_ri~regout\,
	combout => \estadoSiguiente~26_combout\);

-- Location: LCFF_X21_Y9_N9
\estadoSiguiente.leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ri~regout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y9_N12
\estadoSiguiente~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~37_combout\ = (\control~combout\(2) & (!\control~combout\(1) & \estadoSiguiente.activar_leer_pc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \control~combout\(1),
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	combout => \estadoSiguiente~37_combout\);

-- Location: LCFF_X21_Y9_N13
\estadoSiguiente.activar_leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_ram~regout\);

-- Location: LCCOMB_X21_Y9_N22
\estadoSiguiente~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~33_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_leer_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datad => \estadoSiguiente.activar_leer_ram~regout\,
	combout => \estadoSiguiente~33_combout\);

-- Location: LCFF_X24_Y9_N17
\estadoSiguiente.leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \estadoSiguiente~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ram~regout\);

-- Location: LCCOMB_X25_Y8_N16
\WideOr27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr27~0_combout\ = (\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.leer_ram~regout\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \WideOr27~0_combout\);

-- Location: CLKCTRL_G6
\WideOr27~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr27~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr27~0clkctrl_outclk\);

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

-- Location: LCCOMB_X27_Y9_N16
\WideOr26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr26~0_combout\ = (\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \WideOr26~0_combout\);

-- Location: CLKCTRL_G7
\WideOr26~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr26~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr26~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y9_N0
\in_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(0) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(0))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(0),
	datab => in_ram(0),
	datad => \WideOr26~0clkctrl_outclk\,
	combout => in_ram(0));

-- Location: LCCOMB_X22_Y10_N16
\estadoSiguiente.reset_pc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente.reset_pc~0_combout\ = !\control~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control~combout\(2),
	combout => \estadoSiguiente.reset_pc~0_combout\);

-- Location: LCFF_X21_Y9_N23
\estadoSiguiente.reset_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \estadoSiguiente.reset_pc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.reset_pc~regout\);

-- Location: LCCOMB_X21_Y9_N16
\WideOr25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr25~0_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.reset_pc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_ram~regout\,
	datac => \estadoSiguiente.leer_ram~regout\,
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \WideOr25~0_combout\);

-- Location: CLKCTRL_G5
\WideOr25~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr25~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr25~0clkctrl_outclk\);

-- Location: LCCOMB_X25_Y9_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (posicion_ram(1) & (!\Add0~1\)) # (!posicion_ram(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!posicion_ram(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y9_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (posicion_ram(2) & (\Add0~3\ $ (GND))) # (!posicion_ram(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((posicion_ram(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y9_N18
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

-- Location: LCCOMB_X26_Y9_N8
\Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~6_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
\WideOr24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr24~0_combout\ = (!\estadoSiguiente.incrementar_pc~regout\ & !\estadoSiguiente.reset_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.reset_pc~regout\,
	combout => \WideOr24~0_combout\);

-- Location: CLKCTRL_G0
\WideOr24~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr24~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr24~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y9_N0
\in_pc[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(3) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(3))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector53~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(3),
	datac => \Selector53~0_combout\,
	datad => \WideOr24~0clkctrl_outclk\,
	combout => in_pc(3));

-- Location: LCCOMB_X26_Y9_N16
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ((\Selector9~1_combout\ & (!\estadoSiguiente.activar_leer_pc~regout\ & !\estadoSiguiente.espera~regout\))) # (!\WideOr24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr24~0_combout\,
	datab => \Selector9~1_combout\,
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X26_Y9_N2
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\estadoSiguiente.activar_leer_pc~regout\) # (((\Selector8~1_combout\ & !\estadoSiguiente.espera~regout\)) # (!\WideOr24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_pc~regout\,
	datab => \Selector8~1_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \WideOr24~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X26_Y9_N14
\r_pc|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_pc|registro[0]~0_combout\ = (\Selector9~1_combout\ & \Selector8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector9~1_combout\,
	datad => \Selector8~1_combout\,
	combout => \r_pc|registro[0]~0_combout\);

-- Location: LCFF_X26_Y9_N1
\r_pc|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(3),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(3));

-- Location: LCFF_X24_Y9_N25
\r_pc|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y9_N24
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\r_pc|data_out[3]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[3]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\posicion_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(3) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector44~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(3),
	datac => \Selector44~0_combout\,
	datad => \WideOr25~0clkctrl_outclk\,
	combout => posicion_ram(3));

-- Location: LCCOMB_X25_Y9_N20
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

-- Location: LCCOMB_X26_Y9_N28
\Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\Add0~8_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X26_Y9_N18
\in_pc[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(4) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(4))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector54~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr24~0clkctrl_outclk\,
	datac => in_pc(4),
	datad => \Selector54~0_combout\,
	combout => in_pc(4));

-- Location: LCFF_X26_Y9_N19
\r_pc|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(4),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(4));

-- Location: LCFF_X24_Y9_N3
\r_pc|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X24_Y9_N2
\Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\r_pc|data_out[4]~reg0_regout\ & ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_ram~regout\,
	datac => \r_pc|data_out[4]~reg0_regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X24_Y9_N28
\posicion_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(4) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & (\Selector45~0_combout\)) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & ((posicion_ram(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector45~0_combout\,
	datac => posicion_ram(4),
	datad => \WideOr25~0clkctrl_outclk\,
	combout => posicion_ram(4));

-- Location: LCCOMB_X25_Y9_N30
\Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\Add0~4_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X26_Y9_N26
\in_pc[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(2) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(2))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(2),
	datac => \Selector52~0_combout\,
	datad => \WideOr24~0clkctrl_outclk\,
	combout => in_pc(2));

-- Location: LCFF_X26_Y9_N27
\r_pc|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(2),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(2));

-- Location: LCFF_X24_Y9_N15
\r_pc|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y9_N14
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\r_pc|data_out[2]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[2]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X24_Y9_N0
\posicion_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(2) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector43~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_ram(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(2),
	datac => \Selector43~0_combout\,
	datad => \WideOr25~0clkctrl_outclk\,
	combout => posicion_ram(2));

-- Location: LCCOMB_X24_Y9_N26
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!posicion_ram(5) & (!posicion_ram(3) & (!posicion_ram(4) & !posicion_ram(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(5),
	datab => posicion_ram(3),
	datac => posicion_ram(4),
	datad => posicion_ram(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y9_N22
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

-- Location: LCCOMB_X25_Y9_N2
\Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\Add0~12_combout\ & (\estadoSiguiente.incrementar_pc~regout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add0~12_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\in_pc[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(6) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(6))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector56~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(6),
	datac => \WideOr24~0clkctrl_outclk\,
	datad => \Selector56~0_combout\,
	combout => in_pc(6));

-- Location: LCFF_X25_Y9_N5
\r_pc|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(6),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(6));

-- Location: LCFF_X24_Y9_N5
\r_pc|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X24_Y9_N4
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\r_pc|data_out[6]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[6]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X24_Y9_N18
\posicion_actual[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(6) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector47~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_actual(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(6),
	datac => \Selector47~0_combout\,
	datad => \WideOr25~0clkctrl_outclk\,
	combout => posicion_actual(6));

-- Location: LCCOMB_X25_Y9_N0
\Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Add0~2_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X26_Y9_N20
\in_pc[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(1) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(1))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(1),
	datac => \Selector51~0_combout\,
	datad => \WideOr24~0clkctrl_outclk\,
	combout => in_pc(1));

-- Location: LCFF_X26_Y9_N21
\r_pc|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(1),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(1));

-- Location: LCFF_X26_Y9_N13
\r_pc|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X26_Y9_N12
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\r_pc|data_out[1]~reg0_regout\ & ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_ram~regout\,
	datac => \r_pc|data_out[1]~reg0_regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X26_Y9_N6
\posicion_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(1) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector42~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_ram(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(1),
	datac => \WideOr25~0clkctrl_outclk\,
	datad => \Selector42~0_combout\,
	combout => posicion_ram(1));

-- Location: LCCOMB_X24_Y9_N10
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!posicion_actual(7) & (posicion_actual(6) & (!posicion_ram(0) & !posicion_ram(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(7),
	datab => posicion_actual(6),
	datac => posicion_ram(0),
	datad => posicion_ram(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X25_Y9_N6
\Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Add0~0_combout\ & (\estadoSiguiente.incrementar_pc~regout\ & ((!\Equal0~0_combout\) # (!\Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Equal0~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X26_Y9_N22
\in_pc[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(0) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(0))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector49~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(0),
	datac => \Selector49~0_combout\,
	datad => \WideOr24~0clkctrl_outclk\,
	combout => in_pc(0));

-- Location: LCFF_X26_Y9_N23
\r_pc|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(0),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(0));

-- Location: LCFF_X26_Y9_N11
\r_pc|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y9_N10
\Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\r_pc|data_out[0]~reg0_regout\ & ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.leer_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_ram~regout\,
	datac => \r_pc|data_out[0]~reg0_regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X26_Y9_N30
\posicion_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(0) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector40~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_ram(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(0),
	datac => \WideOr25~0clkctrl_outclk\,
	datad => \Selector40~0_combout\,
	combout => posicion_ram(0));

-- Location: LCCOMB_X25_Y9_N8
\Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~10_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X25_Y9_N10
\in_pc[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(5) = (GLOBAL(\WideOr24~0clkctrl_outclk\) & (in_pc(5))) # (!GLOBAL(\WideOr24~0clkctrl_outclk\) & ((\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(5),
	datac => \WideOr24~0clkctrl_outclk\,
	datad => \Selector55~0_combout\,
	combout => in_pc(5));

-- Location: LCFF_X25_Y9_N11
\r_pc|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(5),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(5));

-- Location: LCFF_X24_Y9_N9
\r_pc|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X24_Y9_N8
\Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\r_pc|data_out[5]~reg0_regout\ & ((\estadoSiguiente.leer_ram~regout\) # (\estadoSiguiente.escribir_ram~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ram~regout\,
	datac => \r_pc|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X24_Y9_N12
\posicion_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(5) = (GLOBAL(\WideOr25~0clkctrl_outclk\) & ((\Selector46~0_combout\))) # (!GLOBAL(\WideOr25~0clkctrl_outclk\) & (posicion_ram(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(5),
	datac => \Selector46~0_combout\,
	datad => \WideOr25~0clkctrl_outclk\,
	combout => posicion_ram(5));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X19_Y9_N16
\in_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(1) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(1))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(1),
	datac => in_ram(1),
	datad => \WideOr26~0clkctrl_outclk\,
	combout => in_ram(1));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y9_N24
\in_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(2) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(2))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(2),
	datac => \WideOr26~0clkctrl_outclk\,
	datad => in_ram(2),
	combout => in_ram(2));

-- Location: LCCOMB_X24_Y9_N20
\in_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(3) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(3))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => \WideOr26~0clkctrl_outclk\,
	datad => in_ram(3),
	combout => in_ram(3));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y10_N14
\in_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(4) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(4))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(4),
	datac => in_ram(4),
	datad => \WideOr26~0clkctrl_outclk\,
	combout => in_ram(4));

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

-- Location: LCCOMB_X24_Y9_N22
\in_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(5) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(5))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(5),
	datac => \WideOr26~0clkctrl_outclk\,
	datad => in_ram(5),
	combout => in_ram(5));

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

-- Location: LCCOMB_X24_Y7_N24
\in_ram[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(6) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(6))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(6),
	datac => in_ram(6),
	datad => \WideOr26~0clkctrl_outclk\,
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

-- Location: LCCOMB_X24_Y7_N14
\in_ram[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(7) = (GLOBAL(\WideOr26~0clkctrl_outclk\) & (\data_in~combout\(7))) # (!GLOBAL(\WideOr26~0clkctrl_outclk\) & ((in_ram(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(7),
	datac => in_ram(7),
	datad => \WideOr26~0clkctrl_outclk\,
	combout => in_ram(7));

-- Location: M4K_X23_Y9
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

-- Location: LCCOMB_X24_Y8_N0
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X24_Y8_N16
\in_ri[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(0) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector21~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(0),
	datac => \WideOr27~0clkctrl_outclk\,
	datad => \Selector21~0_combout\,
	combout => in_ri(0));

-- Location: LCCOMB_X25_Y8_N14
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\estadoSiguiente.activar_esc_ri~regout\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.activar_esc_ri~regout\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X20_Y9_N22
\estadoSiguiente~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~27_combout\ = (\estadoSiguiente.activar_leer_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_leer_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~27_combout\);

-- Location: LCFF_X20_Y9_N23
\estadoSiguiente.leer_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_op1~regout\);

-- Location: LCCOMB_X25_Y8_N0
\estadoSiguiente~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~25_combout\ = (\control~combout\(2) & \estadoSiguiente.leer_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.leer_op1~regout\,
	combout => \estadoSiguiente~25_combout\);

-- Location: LCFF_X25_Y8_N1
\estadoSiguiente.mostrar_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	datain => \estadoSiguiente~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.mostrar_salida~regout\);

-- Location: LCCOMB_X25_Y8_N2
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (!\estadoSiguiente.activar_leer_ri~regout\ & !\estadoSiguiente.mostrar_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_leer_ri~regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X25_Y8_N8
\Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ((\Selector6~2_combout\ & (!\estadoSiguiente.espera~regout\ & \Selector6~1_combout\))) # (!\Selector5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~2_combout\,
	datab => \Selector5~1_combout\,
	datac => \estadoSiguiente.espera~regout\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X25_Y8_N12
\Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (((\Selector5~2_combout\ & !\estadoSiguiente.espera~regout\)) # (!\Selector5~1_combout\)) # (!\Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \Selector6~1_combout\,
	datac => \Selector5~1_combout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X25_Y8_N30
\r_ri|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|registro[7]~0_combout\ = (\Selector6~2_combout\ & \Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~2_combout\,
	datad => \Selector5~2_combout\,
	combout => \r_ri|registro[7]~0_combout\);

-- Location: LCFF_X24_Y8_N17
\r_ri|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(0),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(0));

-- Location: LCCOMB_X25_Y8_N26
\r_ri|data_out[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[0]~reg0feeder_combout\ = \r_ri|registro\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(0),
	combout => \r_ri|data_out[0]~reg0feeder_combout\);

-- Location: LCFF_X25_Y8_N27
\r_ri|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N18
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a1\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X24_Y8_N30
\in_ri[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(1) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector23~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(1),
	datac => \WideOr27~0clkctrl_outclk\,
	datad => \Selector23~0_combout\,
	combout => in_ri(1));

-- Location: LCFF_X24_Y8_N31
\r_ri|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(1),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(1));

-- Location: LCFF_X25_Y8_N5
\r_ri|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N10
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a3\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\in_ri[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(3) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector25~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(3),
	datac => \WideOr27~0clkctrl_outclk\,
	datad => \Selector25~0_combout\,
	combout => in_ri(3));

-- Location: LCFF_X24_Y8_N7
\r_ri|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(3),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(3));

-- Location: LCCOMB_X25_Y8_N28
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

-- Location: LCFF_X25_Y8_N29
\r_ri|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N4
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\r_ri|data_out[2]~reg0_regout\ & (!\r_ri|data_out[0]~reg0_regout\ & (!\r_ri|data_out[1]~reg0_regout\ & \r_ri|data_out[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[2]~reg0_regout\,
	datab => \r_ri|data_out[0]~reg0_regout\,
	datac => \r_ri|data_out[1]~reg0_regout\,
	datad => \r_ri|data_out[3]~reg0_regout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X24_Y8_N28
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\estadoSiguiente.escribir_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X24_Y8_N14
\in_ri[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(6) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector28~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(6),
	datac => \WideOr27~0clkctrl_outclk\,
	datad => \Selector28~0_combout\,
	combout => in_ri(6));

-- Location: LCFF_X24_Y8_N29
\r_ri|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_ri(6),
	sload => VCC,
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(6));

-- Location: LCCOMB_X21_Y8_N30
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

-- Location: LCFF_X21_Y8_N31
\r_ri|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N12
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a4\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X24_Y8_N20
\in_ri[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(4) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector26~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(4),
	datac => \WideOr27~0clkctrl_outclk\,
	datad => \Selector26~0_combout\,
	combout => in_ri(4));

-- Location: LCFF_X24_Y8_N21
\r_ri|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(4),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(4));

-- Location: LCFF_X25_Y8_N31
\r_ri|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N2
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a5\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X24_Y8_N22
\in_ri[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(5) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector27~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(5),
	datac => \WideOr27~0clkctrl_outclk\,
	datad => \Selector27~0_combout\,
	combout => in_ri(5));

-- Location: LCFF_X24_Y8_N23
\r_ri|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(5),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(5));

-- Location: LCCOMB_X21_Y8_N26
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

-- Location: LCFF_X21_Y8_N27
\r_ri|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X21_Y8_N8
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\r_ri|data_out[7]~reg0_regout\ & (!\r_ri|data_out[6]~reg0_regout\ & (!\r_ri|data_out[4]~reg0_regout\ & !\r_ri|data_out[5]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[7]~reg0_regout\,
	datab => \r_ri|data_out[6]~reg0_regout\,
	datac => \r_ri|data_out[4]~reg0_regout\,
	datad => \r_ri|data_out[5]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y9_N0
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ((\estadoSiguiente.incrementar_pc~regout\ & ((!\Mux0~0_combout\) # (!\Mux0~1_combout\)))) # (!\estadoSiguiente.inicio~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.inicio~regout\,
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X22_Y9_N31
\estadoSiguiente.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \Selector4~0_combout\,
	sclr => \ALT_INV_control~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.espera~regout\);

-- Location: LCCOMB_X26_Y9_N24
\estadoSiguiente~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~40_combout\ = (\estadoSiguiente.espera~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.espera~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~40_combout\);

-- Location: LCFF_X26_Y9_N25
\estadoSiguiente.activar_leer_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_pc~regout\);

-- Location: LCCOMB_X22_Y9_N12
\estadoSiguiente~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~39_combout\ = (\control~combout\(1) & (\estadoSiguiente.activar_leer_pc~regout\ & \control~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control~combout\(1),
	datac => \estadoSiguiente.activar_leer_pc~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~39_combout\);

-- Location: LCFF_X22_Y9_N13
\estadoSiguiente.escribir_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_ram~regout\);

-- Location: LCCOMB_X21_Y9_N4
WideOr2 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\estadoSiguiente.leer_ri~regout\) # ((\estadoSiguiente.escribir_ram~regout\) # (\estadoSiguiente.mostrar_salida~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ri~regout\,
	datac => \estadoSiguiente.escribir_ram~regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \WideOr2~combout\);

-- Location: LCFF_X25_Y9_N7
\estadoSiguiente.incrementar_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \WideOr2~combout\,
	sclr => \ALT_INV_control~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.incrementar_pc~regout\);

-- Location: LCCOMB_X21_Y9_N14
\estadoSiguiente~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~38_combout\ = (\control~combout\(2) & (\estadoSiguiente.incrementar_pc~regout\ & (\Mux0~1_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \estadoSiguiente.incrementar_pc~regout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \estadoSiguiente~38_combout\);

-- Location: LCFF_X21_Y9_N15
\estadoSiguiente.activar_esc_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_data~regout\);

-- Location: LCCOMB_X21_Y9_N26
\estadoSiguiente~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~35_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_esc_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datac => \estadoSiguiente.activar_esc_data~regout\,
	combout => \estadoSiguiente~35_combout\);

-- Location: LCCOMB_X1_Y6_N22
\estadoSiguiente.escribir_data~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente.escribir_data~feeder_combout\ = \estadoSiguiente~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoSiguiente~35_combout\,
	combout => \estadoSiguiente.escribir_data~feeder_combout\);

-- Location: LCFF_X1_Y6_N23
\estadoSiguiente.escribir_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente.escribir_data~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_data~regout\);

-- Location: LCCOMB_X21_Y9_N10
\estadoSiguiente~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~32_combout\ = (\control~combout\(2) & \estadoSiguiente.escribir_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.escribir_data~regout\,
	combout => \estadoSiguiente~32_combout\);

-- Location: LCFF_X21_Y9_N11
\estadoSiguiente.activar_esc_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_esc_op1~regout\);

-- Location: LCCOMB_X22_Y9_N14
\estadoSiguiente~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~34_combout\ = (\estadoSiguiente.activar_esc_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_esc_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~34_combout\);

-- Location: LCFF_X22_Y9_N15
\estadoSiguiente.activar_leer_data\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_data~regout\);

-- Location: LCCOMB_X25_Y8_N6
\estadoSiguiente~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~31_combout\ = (\control~combout\(2) & \estadoSiguiente.activar_leer_data~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.activar_leer_data~regout\,
	combout => \estadoSiguiente~31_combout\);

-- Location: LCFF_X25_Y8_N7
\estadoSiguiente.escribir_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_op1~regout\);

-- Location: CLKCTRL_G4
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X22_Y9_N4
\in_data[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(0) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datac => in_data(0),
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => in_data(0));

-- Location: LCCOMB_X22_Y9_N8
\Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\estadoSiguiente.activar_leer_data~regout\) # ((\estadoSiguiente.activar_esc_data~regout\) # ((\Selector12~1_combout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~1_combout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \estadoSiguiente.activar_leer_data~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X22_Y9_N28
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\estadoSiguiente.activar_esc_data~regout\) # ((\Selector13~1_combout\ & (!\estadoSiguiente.espera~regout\ & !\estadoSiguiente.activar_leer_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~1_combout\,
	datab => \estadoSiguiente.espera~regout\,
	datac => \estadoSiguiente.activar_leer_data~regout\,
	datad => \estadoSiguiente.activar_esc_data~regout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X22_Y9_N10
\r_data|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_data|registro[0]~0_combout\ = (\Selector12~1_combout\ & \Selector13~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector12~1_combout\,
	datad => \Selector13~1_combout\,
	combout => \r_data|registro[0]~0_combout\);

-- Location: LCFF_X22_Y9_N5
\r_data|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(0),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(0));

-- Location: LCFF_X20_Y9_N11
\r_data|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X20_Y9_N16
\in_op1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(0) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[0]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(0),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[0]~reg0_regout\,
	combout => in_op1(0));

-- Location: LCCOMB_X20_Y9_N8
\estadoSiguiente~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~29_combout\ = (\estadoSiguiente.escribir_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~29_combout\);

-- Location: LCFF_X20_Y9_N9
\estadoSiguiente.activar_leer_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_leer_op1~regout\);

-- Location: LCCOMB_X20_Y9_N4
\Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (!\estadoSiguiente.activar_leer_op1~regout\ & !\estadoSiguiente.leer_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_leer_op1~regout\,
	datad => \estadoSiguiente.leer_op1~regout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X20_Y9_N2
\Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\estadoSiguiente.activar_esc_op1~regout\) # ((\Selector15~2_combout\ & (\Selector15~1_combout\ & !\estadoSiguiente.espera~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~2_combout\,
	datab => \estadoSiguiente.activar_esc_op1~regout\,
	datac => \Selector15~1_combout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X20_Y9_N12
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = ((\estadoSiguiente.activar_esc_op1~regout\) # ((\Selector14~1_combout\ & !\estadoSiguiente.espera~regout\))) # (!\Selector15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~1_combout\,
	datab => \Selector15~1_combout\,
	datac => \estadoSiguiente.activar_esc_op1~regout\,
	datad => \estadoSiguiente.espera~regout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X20_Y9_N6
\r_operador1|registro[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_operador1|registro[0]~0_combout\ = (\Selector15~2_combout\ & \Selector14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector15~2_combout\,
	datad => \Selector14~1_combout\,
	combout => \r_operador1|registro[0]~0_combout\);

-- Location: LCFF_X20_Y9_N17
\r_operador1|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(0),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(0));

-- Location: LCFF_X26_Y8_N25
\r_operador1|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y8_N24
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & (\r_operador1|data_out[0]~reg0_regout\)) # (!\estadoSiguiente.mostrar_salida~regout\ & ((\r_ri|data_out[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datac => \r_operador1|data_out[0]~reg0_regout\,
	datad => \r_ri|data_out[0]~reg0_regout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X21_Y9_N30
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\estadoSiguiente.leer_ri~regout\ & !\estadoSiguiente.mostrar_salida~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.leer_ri~regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \WideOr2~0_combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X26_Y8_N16
\salida[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[0]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[0]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[0]$latch~combout\,
	datac => \Selector3~0_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[0]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N24
\in_data[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(1) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a1\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(1),
	datab => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => in_data(1));

-- Location: LCFF_X22_Y9_N25
\r_data|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(1),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(1));

-- Location: LCCOMB_X20_Y9_N0
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

-- Location: LCFF_X20_Y9_N1
\r_data|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X20_Y9_N24
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

-- Location: LCFF_X20_Y9_N25
\r_operador1|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(1),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(1));

-- Location: LCFF_X26_Y8_N15
\r_operador1|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X26_Y8_N14
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\r_operador1|data_out[1]~reg0_regout\))) # (!\estadoSiguiente.mostrar_salida~regout\ & (\r_ri|data_out[1]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datab => \r_ri|data_out[1]~reg0_regout\,
	datac => \r_operador1|data_out[1]~reg0_regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X26_Y8_N10
\salida[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[1]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[1]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[1]$latch~combout\,
	datac => \Selector2~0_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[1]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N6
\in_data[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(2) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a2\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(2),
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	combout => in_data(2));

-- Location: LCFF_X22_Y9_N7
\r_data|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(2),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(2));

-- Location: LCCOMB_X20_Y9_N30
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

-- Location: LCFF_X20_Y9_N31
\r_data|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X20_Y9_N26
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

-- Location: LCFF_X20_Y9_N27
\r_operador1|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(2),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(2));

-- Location: LCFF_X26_Y8_N21
\r_operador1|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X24_Y8_N24
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a2\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X24_Y8_N8
\in_ri[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(2) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector24~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(2),
	datac => \Selector24~0_combout\,
	datad => \WideOr27~0clkctrl_outclk\,
	combout => in_ri(2));

-- Location: LCFF_X24_Y8_N9
\r_ri|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(2),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(2));

-- Location: LCCOMB_X25_Y8_N24
\r_ri|data_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[2]~reg0feeder_combout\ = \r_ri|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(2),
	combout => \r_ri|data_out[2]~reg0feeder_combout\);

-- Location: LCFF_X25_Y8_N25
\r_ri|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X26_Y8_N20
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & (\r_operador1|data_out[2]~reg0_regout\)) # (!\estadoSiguiente.mostrar_salida~regout\ & ((\r_ri|data_out[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datac => \r_operador1|data_out[2]~reg0_regout\,
	datad => \r_ri|data_out[2]~reg0_regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X26_Y8_N4
\salida[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[2]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[2]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[2]$latch~combout\,
	datac => \Selector1~0_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[2]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N20
\in_data[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(3) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a3\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_data(3),
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	combout => in_data(3));

-- Location: LCFF_X22_Y9_N21
\r_data|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(3),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(3));

-- Location: LCCOMB_X20_Y9_N28
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

-- Location: LCFF_X20_Y9_N29
\r_data|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X20_Y9_N20
\in_op1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(3) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[3]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(3),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[3]~reg0_regout\,
	combout => in_op1(3));

-- Location: LCFF_X20_Y9_N21
\r_operador1|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(3),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(3));

-- Location: LCFF_X26_Y8_N23
\r_operador1|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X26_Y8_N22
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & (\r_operador1|data_out[3]~reg0_regout\)) # (!\estadoSiguiente.mostrar_salida~regout\ & ((\r_ri|data_out[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datac => \r_operador1|data_out[3]~reg0_regout\,
	datad => \r_ri|data_out[3]~reg0_regout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X26_Y8_N6
\salida[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[3]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[3]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[3]$latch~combout\,
	datac => \WideOr2~0clkctrl_outclk\,
	datad => \Selector0~0_combout\,
	combout => \salida[3]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N2
\in_data[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(4) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a4\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_data(4),
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	combout => in_data(4));

-- Location: LCFF_X22_Y9_N3
\r_data|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(4),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(4));

-- Location: LCCOMB_X20_Y9_N18
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

-- Location: LCFF_X20_Y9_N19
\r_data|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X20_Y9_N14
\in_op1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(4) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[4]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_op1(4),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[4]~reg0_regout\,
	combout => in_op1(4));

-- Location: LCFF_X20_Y9_N15
\r_operador1|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(4),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(4));

-- Location: LCFF_X25_Y8_N23
\r_operador1|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X25_Y8_N22
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\r_operador1|data_out[4]~reg0_regout\))) # (!\estadoSiguiente.mostrar_salida~regout\ & (\r_ri|data_out[4]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[4]~reg0_regout\,
	datac => \r_operador1|data_out[4]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\salida[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[4]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[4]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[4]$latch~combout\,
	datab => \Selector16~0_combout\,
	datad => \WideOr2~0clkctrl_outclk\,
	combout => \salida[4]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N26
\in_data[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(5) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a5\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datac => in_data(5),
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => in_data(5));

-- Location: LCFF_X22_Y9_N27
\r_data|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(5),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(5));

-- Location: LCFF_X21_Y8_N21
\r_data|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X21_Y8_N24
\in_op1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(5) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[5]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(5),
	datac => \r_data|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	combout => in_op1(5));

-- Location: LCFF_X21_Y8_N25
\r_operador1|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(5),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(5));

-- Location: LCFF_X21_Y8_N13
\r_operador1|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X21_Y8_N12
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\r_operador1|data_out[5]~reg0_regout\))) # (!\estadoSiguiente.mostrar_salida~regout\ & (\r_ri|data_out[5]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[5]~reg0_regout\,
	datac => \r_operador1|data_out[5]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X21_Y8_N6
\salida[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[5]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[5]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[5]$latch~combout\,
	datac => \WideOr2~0clkctrl_outclk\,
	datad => \Selector17~0_combout\,
	combout => \salida[5]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N22
\in_data[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(6) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a6\))) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (in_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datac => in_data(6),
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => in_data(6));

-- Location: LCFF_X22_Y9_N23
\r_data|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(6),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(6));

-- Location: LCCOMB_X21_Y8_N22
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

-- Location: LCFF_X21_Y8_N23
\r_data|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_data|data_out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X21_Y8_N10
\in_op1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(6) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[6]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(6),
	datac => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[6]~reg0_regout\,
	combout => in_op1(6));

-- Location: LCFF_X21_Y8_N11
\r_operador1|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_op1(6),
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(6));

-- Location: LCFF_X21_Y8_N1
\r_operador1|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X21_Y8_N0
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\r_operador1|data_out[6]~reg0_regout\))) # (!\estadoSiguiente.mostrar_salida~regout\ & (\r_ri|data_out[6]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[6]~reg0_regout\,
	datac => \r_operador1|data_out[6]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X21_Y8_N16
\salida[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[6]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[6]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[6]$latch~combout\,
	datac => \WideOr2~0clkctrl_outclk\,
	datad => \Selector18~0_combout\,
	combout => \salida[6]$latch~combout\);

-- Location: LCCOMB_X24_Y8_N4
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\r_ram|ram_rtl_0|auto_generated|ram_block1a7\ & !\estadoSiguiente.escribir_op1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \estadoSiguiente.escribir_op1~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X24_Y8_N26
\in_ri[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(7) = (GLOBAL(\WideOr27~0clkctrl_outclk\) & ((\Selector29~0_combout\))) # (!GLOBAL(\WideOr27~0clkctrl_outclk\) & (in_ri(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(7),
	datac => \Selector29~0_combout\,
	datad => \WideOr27~0clkctrl_outclk\,
	combout => in_ri(7));

-- Location: LCFF_X24_Y8_N27
\r_ri|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(7),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(7));

-- Location: LCCOMB_X21_Y8_N18
\r_ri|data_out[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[7]~reg0feeder_combout\ = \r_ri|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(7),
	combout => \r_ri|data_out[7]~reg0feeder_combout\);

-- Location: LCFF_X21_Y8_N19
\r_ri|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X22_Y9_N18
\in_data[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_data(7) = (GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & (\r_ram|ram_rtl_0|auto_generated|ram_block1a7\)) # (!GLOBAL(\estadoSiguiente.escribir_data~clkctrl_outclk\) & ((in_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.escribir_data~clkctrl_outclk\,
	datac => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => in_data(7),
	combout => in_data(7));

-- Location: LCFF_X22_Y9_N19
\r_data|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_data(7),
	ena => \r_data|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|registro\(7));

-- Location: LCFF_X20_Y9_N7
\r_data|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_data|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_data|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X20_Y9_N10
\in_op1[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_op1(7) = (GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & ((\r_data|data_out[7]~reg0_regout\))) # (!GLOBAL(\estadoSiguiente.escribir_op1~clkctrl_outclk\) & (in_op1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_op1(7),
	datab => \estadoSiguiente.escribir_op1~clkctrl_outclk\,
	datad => \r_data|data_out[7]~reg0_regout\,
	combout => in_op1(7));

-- Location: LCFF_X20_Y9_N5
\r_operador1|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_op1(7),
	sload => VCC,
	ena => \r_operador1|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|registro\(7));

-- Location: LCFF_X21_Y8_N29
\r_operador1|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_operador1|registro\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_operador1|data_out[7]~reg0_regout\);

-- Location: LCCOMB_X21_Y8_N28
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\ & ((\r_operador1|data_out[7]~reg0_regout\))) # (!\estadoSiguiente.mostrar_salida~regout\ & (\r_ri|data_out[7]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_ri|data_out[7]~reg0_regout\,
	datac => \r_operador1|data_out[7]~reg0_regout\,
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X21_Y8_N14
\salida[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[7]$latch~combout\ = (GLOBAL(\WideOr2~0clkctrl_outclk\) & (\salida[7]$latch~combout\)) # (!GLOBAL(\WideOr2~0clkctrl_outclk\) & ((\Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[7]$latch~combout\,
	datac => \WideOr2~0clkctrl_outclk\,
	datad => \Selector19~0_combout\,
	combout => \salida[7]$latch~combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


