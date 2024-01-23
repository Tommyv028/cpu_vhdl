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

-- DATE "01/23/2024 19:11:57"

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
-- salida[0]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[1]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[2]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[3]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[4]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[5]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida[7]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- control[0]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- control[1]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \WideOr16~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr7~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \estadoSiguiente.mostrar_salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WideOr18~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \posicion_ram~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \posicion_actual~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \r_ram|ram~15_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \r_ri|data_out[7]~reg0_regout\ : std_logic;
SIGNAL \r_ri|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \estadoSiguiente~14_combout\ : std_logic;
SIGNAL \estadoSiguiente.mostrar_salida~regout\ : std_logic;
SIGNAL \estadoSiguiente.mostrar_salida~clkctrl_outclk\ : std_logic;
SIGNAL \control[0]~clkctrl_outclk\ : std_logic;
SIGNAL \estadoSiguiente.reset_pc~regout\ : std_logic;
SIGNAL \estadoSiguiente~19_combout\ : std_logic;
SIGNAL \estadoSiguiente.inicio~regout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr18~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \estadoSiguiente~16_combout\ : std_logic;
SIGNAL \estadoSiguiente.escribir_ram~regout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr7~combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \r_pc|registro[0]~0_combout\ : std_logic;
SIGNAL \r_pc|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \posicion_ram~0_combout\ : std_logic;
SIGNAL \posicion_ram~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \r_pc|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \posicion_actual~0_combout\ : std_logic;
SIGNAL \posicion_actual~0clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \r_pc|data_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_pc|data_out[2]~reg0_regout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \r_pc|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \r_pc|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \r_pc|data_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_pc|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \r_ri|registro[7]~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[6]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[5]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \r_ri|data_out[4]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \estadoSiguiente~21_combout\ : std_logic;
SIGNAL \estadoSiguiente.cargar_op1~regout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \WideOr7~1clkctrl_outclk\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[3]~reg0_regout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[1]~reg0_regout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \r_ri|data_out[0]~reg0_regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \estadoSiguiente~22_combout\ : std_logic;
SIGNAL \estadoSiguiente~23_combout\ : std_logic;
SIGNAL \estadoSiguiente.espera~regout\ : std_logic;
SIGNAL \estadoSiguiente~18_combout\ : std_logic;
SIGNAL \estadoSiguiente.activar_pc~regout\ : std_logic;
SIGNAL \estadoSiguiente~15_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ram~regout\ : std_logic;
SIGNAL \estadoSiguiente~20_combout\ : std_logic;
SIGNAL \estadoSiguiente.leer_ri~regout\ : std_logic;
SIGNAL \estadoSiguiente~17_combout\ : std_logic;
SIGNAL \estadoSiguiente.incrementar_pc~regout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr16~0clkctrl_outclk\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \salida[0]$latch~combout\ : std_logic;
SIGNAL \salida[1]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \salida[2]$latch~combout\ : std_logic;
SIGNAL \salida[3]$latch~combout\ : std_logic;
SIGNAL \salida[4]$latch~combout\ : std_logic;
SIGNAL \salida[5]$latch~combout\ : std_logic;
SIGNAL \salida[6]$latch~combout\ : std_logic;
SIGNAL \r_ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \salida[7]$latch~combout\ : std_logic;
SIGNAL posicion_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL posicion_actual : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ri : std_logic_vector(7 DOWNTO 0);
SIGNAL in_ram : std_logic_vector(7 DOWNTO 0);
SIGNAL in_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \control~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \r_ri|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \r_pc|registro\ : std_logic_vector(7 DOWNTO 0);

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

\WideOr16~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr16~0_combout\);

\WideOr7~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr7~1_combout\);

\estadoSiguiente.mostrar_salida~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \estadoSiguiente.mostrar_salida~regout\);

\control[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \control~combout\(0));

\WideOr18~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr18~0_combout\);

\posicion_ram~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \posicion_ram~0_combout\);

\posicion_actual~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \posicion_actual~0_combout\);

-- Location: LCCOMB_X21_Y5_N14
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = posicion_actual(0) $ (VCC)
-- \Add0~1\ = CARRY(posicion_actual(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y5_N16
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (posicion_actual(1) & (!\Add0~1\)) # (!posicion_actual(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!posicion_actual(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X24_Y6_N8
\r_ram|ram~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ram|ram~15_combout\ = (\Selector11~1_combout\ & \Selector10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector11~1_combout\,
	datad => \Selector10~2_combout\,
	combout => \r_ram|ram~15_combout\);

-- Location: LCCOMB_X25_Y6_N0
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (!\estadoSiguiente.espera~regout\ & !\estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.espera~regout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X24_Y6_N30
\Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((\estadoSiguiente.leer_ram~regout\) # ((\Selector10~2_combout\ & \Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~2_combout\,
	datab => \estadoSiguiente.escribir_ram~regout\,
	datac => \Selector10~1_combout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X25_Y6_N26
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\estadoSiguiente.escribir_ram~regout\) # ((\Selector11~1_combout\ & (!\estadoSiguiente.leer_ram~regout\ & \Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \estadoSiguiente.escribir_ram~regout\,
	datac => \estadoSiguiente.leer_ram~regout\,
	datad => \Selector10~1_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCFF_X26_Y5_N17
\r_ri|data_out[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[7]~reg0_regout\);

-- Location: LCFF_X24_Y5_N23
\r_ri|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[2]~reg0_regout\);

-- Location: LCFF_X25_Y5_N17
\r_ri|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(7),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(7));

-- Location: LCFF_X24_Y5_N27
\r_ri|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(2),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(2));

-- Location: LCCOMB_X25_Y5_N28
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X24_Y5_N10
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X25_Y5_N16
\in_ri[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(7) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(7))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(7),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector27~0_combout\,
	combout => in_ri(7));

-- Location: LCCOMB_X24_Y5_N26
\in_ri[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(2) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(2))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(2),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector22~0_combout\,
	combout => in_ri(2));

-- Location: LCCOMB_X21_Y5_N12
\posicion_actual[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(4) = (GLOBAL(\posicion_actual~0clkctrl_outclk\) & (\r_pc|data_out[4]~reg0_regout\)) # (!GLOBAL(\posicion_actual~0clkctrl_outclk\) & ((posicion_actual(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \posicion_actual~0clkctrl_outclk\,
	datac => \r_pc|data_out[4]~reg0_regout\,
	datad => posicion_actual(4),
	combout => posicion_actual(4));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X26_Y5_N16
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

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X25_Y5_N24
\estadoSiguiente~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~14_combout\ = (\estadoSiguiente.cargar_op1~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.cargar_op1~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~14_combout\);

-- Location: LCFF_X25_Y5_N25
\estadoSiguiente.mostrar_salida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.mostrar_salida~regout\);

-- Location: CLKCTRL_G6
\estadoSiguiente.mostrar_salida~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \estadoSiguiente.mostrar_salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \estadoSiguiente.mostrar_salida~clkctrl_outclk\);

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

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X25_Y6_N5
\estadoSiguiente.reset_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	sdata => \control~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.reset_pc~regout\);

-- Location: LCCOMB_X25_Y6_N2
\estadoSiguiente~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~19_combout\ = (!\estadoSiguiente.reset_pc~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.reset_pc~regout\,
	datac => \control~combout\(2),
	combout => \estadoSiguiente~19_combout\);

-- Location: LCFF_X25_Y6_N3
\estadoSiguiente.inicio\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.inicio~regout\);

-- Location: LCCOMB_X25_Y6_N12
\WideOr18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (\estadoSiguiente.reset_pc~regout\ & !\estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.reset_pc~regout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \WideOr18~0_combout\);

-- Location: CLKCTRL_G7
\WideOr18~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr18~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr18~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y5_N10
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X22_Y5_N8
\in_pc[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(0) = (GLOBAL(\WideOr18~0clkctrl_outclk\) & (in_pc(0))) # (!GLOBAL(\WideOr18~0clkctrl_outclk\) & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(0),
	datac => \WideOr18~0clkctrl_outclk\,
	datad => \Add0~2_combout\,
	combout => in_pc(0));

-- Location: LCCOMB_X25_Y5_N0
\WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (!\estadoSiguiente.leer_ri~regout\ & (!\estadoSiguiente.cargar_op1~regout\ & !\estadoSiguiente.leer_ram~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.leer_ri~regout\,
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X25_Y5_N20
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ((\Selector9~1_combout\ & ((\estadoSiguiente.inicio~regout\) # (!\WideOr7~0_combout\)))) # (!\WideOr18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~1_combout\,
	datab => \WideOr7~0_combout\,
	datac => \estadoSiguiente.inicio~regout\,
	datad => \WideOr18~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X25_Y6_N28
\estadoSiguiente~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~16_combout\ = (\control~combout\(1) & (\control~combout\(2) & \estadoSiguiente.activar_pc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(1),
	datac => \control~combout\(2),
	datad => \estadoSiguiente.activar_pc~regout\,
	combout => \estadoSiguiente~16_combout\);

-- Location: LCFF_X25_Y6_N29
\estadoSiguiente.escribir_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control~combout\(0),
	datain => \estadoSiguiente~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.escribir_ram~regout\);

-- Location: LCCOMB_X25_Y6_N16
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\estadoSiguiente.incrementar_pc~regout\ & (!\estadoSiguiente.escribir_ram~regout\ & (\estadoSiguiente.reset_pc~regout\ & !\estadoSiguiente.activar_pc~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.incrementar_pc~regout\,
	datab => \estadoSiguiente.escribir_ram~regout\,
	datac => \estadoSiguiente.reset_pc~regout\,
	datad => \estadoSiguiente.activar_pc~regout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X25_Y5_N18
WideOr7 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~combout\ = (\estadoSiguiente.leer_ram~regout\) # ((\estadoSiguiente.leer_ri~regout\) # ((\estadoSiguiente.cargar_op1~regout\) # (\estadoSiguiente.inicio~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.leer_ram~regout\,
	datab => \estadoSiguiente.leer_ri~regout\,
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \estadoSiguiente.inicio~regout\,
	combout => \WideOr7~combout\);

-- Location: LCCOMB_X25_Y5_N6
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\estadoSiguiente.mostrar_salida~regout\) # (((\Selector8~1_combout\ & \WideOr7~combout\)) # (!\WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.mostrar_salida~regout\,
	datab => \Selector8~1_combout\,
	datac => \WideOr2~0_combout\,
	datad => \WideOr7~combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X25_Y5_N22
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

-- Location: LCFF_X22_Y5_N1
\r_pc|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(0),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(0));

-- Location: LCFF_X21_Y5_N1
\r_pc|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X25_Y6_N6
\posicion_ram~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \posicion_ram~0_combout\ = (!\estadoSiguiente.activar_pc~regout\ & !\estadoSiguiente.escribir_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.activar_pc~regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \posicion_ram~0_combout\);

-- Location: CLKCTRL_G3
\posicion_ram~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \posicion_ram~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \posicion_ram~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y5_N20
\posicion_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(0) = (GLOBAL(\posicion_ram~0clkctrl_outclk\) & (posicion_ram(0))) # (!GLOBAL(\posicion_ram~0clkctrl_outclk\) & ((\r_pc|data_out[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_ram(0),
	datac => \r_pc|data_out[0]~reg0_regout\,
	datad => \posicion_ram~0clkctrl_outclk\,
	combout => posicion_ram(0));

-- Location: LCCOMB_X21_Y5_N2
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X21_Y5_N0
\in_pc[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(1) = (GLOBAL(\WideOr18~0clkctrl_outclk\) & (in_pc(1))) # (!GLOBAL(\WideOr18~0clkctrl_outclk\) & ((\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_pc(1),
	datab => \WideOr18~0clkctrl_outclk\,
	datad => \Add0~5_combout\,
	combout => in_pc(1));

-- Location: LCFF_X21_Y5_N31
\r_pc|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(1),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(1));

-- Location: LCFF_X21_Y5_N7
\r_pc|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X22_Y5_N18
\posicion_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(1) = (GLOBAL(\posicion_ram~0clkctrl_outclk\) & (posicion_ram(1))) # (!GLOBAL(\posicion_ram~0clkctrl_outclk\) & ((\r_pc|data_out[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_ram(1),
	datac => \r_pc|data_out[1]~reg0_regout\,
	datad => \posicion_ram~0clkctrl_outclk\,
	combout => posicion_ram(1));

-- Location: LCCOMB_X25_Y6_N24
\posicion_actual~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \posicion_actual~0_combout\ = (\estadoSiguiente.mostrar_salida~regout\) # (\estadoSiguiente.activar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.mostrar_salida~regout\,
	datad => \estadoSiguiente.activar_pc~regout\,
	combout => \posicion_actual~0_combout\);

-- Location: CLKCTRL_G5
\posicion_actual~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \posicion_actual~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \posicion_actual~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y5_N24
\posicion_actual[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(2) = (GLOBAL(\posicion_actual~0clkctrl_outclk\) & ((\r_pc|data_out[2]~reg0_regout\))) # (!GLOBAL(\posicion_actual~0clkctrl_outclk\) & (posicion_actual(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(2),
	datac => \posicion_actual~0clkctrl_outclk\,
	datad => \r_pc|data_out[2]~reg0_regout\,
	combout => posicion_actual(2));

-- Location: LCCOMB_X21_Y5_N4
\posicion_actual[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(1) = (GLOBAL(\posicion_actual~0clkctrl_outclk\) & ((\r_pc|data_out[1]~reg0_regout\))) # (!GLOBAL(\posicion_actual~0clkctrl_outclk\) & (posicion_actual(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(1),
	datab => \posicion_actual~0clkctrl_outclk\,
	datad => \r_pc|data_out[1]~reg0_regout\,
	combout => posicion_actual(1));

-- Location: LCCOMB_X21_Y5_N30
\posicion_actual[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(0) = (GLOBAL(\posicion_actual~0clkctrl_outclk\) & ((\r_pc|data_out[0]~reg0_regout\))) # (!GLOBAL(\posicion_actual~0clkctrl_outclk\) & (posicion_actual(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posicion_actual~0clkctrl_outclk\,
	datab => posicion_actual(0),
	datad => \r_pc|data_out[0]~reg0_regout\,
	combout => posicion_actual(0));

-- Location: LCCOMB_X21_Y5_N18
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (posicion_actual(2) & (\Add0~4\ $ (GND))) # (!posicion_actual(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((posicion_actual(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X21_Y5_N28
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~6_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X21_Y5_N6
\in_pc[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(2) = (GLOBAL(\WideOr18~0clkctrl_outclk\) & (in_pc(2))) # (!GLOBAL(\WideOr18~0clkctrl_outclk\) & ((\Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0clkctrl_outclk\,
	datab => in_pc(2),
	datad => \Add0~8_combout\,
	combout => in_pc(2));

-- Location: LCFF_X21_Y5_N5
\r_pc|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(2),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(2));

-- Location: LCCOMB_X22_Y5_N12
\r_pc|data_out[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_pc|data_out[2]~reg0feeder_combout\ = \r_pc|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_pc|registro\(2),
	combout => \r_pc|data_out[2]~reg0feeder_combout\);

-- Location: LCFF_X22_Y5_N13
\r_pc|data_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_pc|data_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[2]~reg0_regout\);

-- Location: LCCOMB_X22_Y5_N6
\posicion_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(2) = (GLOBAL(\posicion_ram~0clkctrl_outclk\) & (posicion_ram(2))) # (!GLOBAL(\posicion_ram~0clkctrl_outclk\) & ((\r_pc|data_out[2]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posicion_ram~0clkctrl_outclk\,
	datab => posicion_ram(2),
	datad => \r_pc|data_out[2]~reg0_regout\,
	combout => posicion_ram(2));

-- Location: LCCOMB_X21_Y5_N26
\posicion_actual[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(3) = (GLOBAL(\posicion_actual~0clkctrl_outclk\) & ((\r_pc|data_out[3]~reg0_regout\))) # (!GLOBAL(\posicion_actual~0clkctrl_outclk\) & (posicion_actual(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posicion_actual~0clkctrl_outclk\,
	datab => posicion_actual(3),
	datad => \r_pc|data_out[3]~reg0_regout\,
	combout => posicion_actual(3));

-- Location: LCCOMB_X21_Y5_N20
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (posicion_actual(3) & (!\Add0~7\)) # (!posicion_actual(3) & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!posicion_actual(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X21_Y5_N8
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~9_combout\ & \estadoSiguiente.incrementar_pc~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~9_combout\,
	datad => \estadoSiguiente.incrementar_pc~regout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X21_Y5_N10
\in_pc[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(3) = (GLOBAL(\WideOr18~0clkctrl_outclk\) & (in_pc(3))) # (!GLOBAL(\WideOr18~0clkctrl_outclk\) & ((\Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0clkctrl_outclk\,
	datab => in_pc(3),
	datad => \Add0~11_combout\,
	combout => in_pc(3));

-- Location: LCFF_X21_Y5_N27
\r_pc|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(3),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(3));

-- Location: LCFF_X21_Y5_N11
\r_pc|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X22_Y5_N16
\posicion_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(3) = (GLOBAL(\posicion_ram~0clkctrl_outclk\) & (posicion_ram(3))) # (!GLOBAL(\posicion_ram~0clkctrl_outclk\) & ((\r_pc|data_out[3]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \posicion_ram~0clkctrl_outclk\,
	datac => posicion_ram(3),
	datad => \r_pc|data_out[3]~reg0_regout\,
	combout => posicion_ram(3));

-- Location: LCCOMB_X21_Y5_N22
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (posicion_actual(4) & (\Add0~10\ $ (GND))) # (!posicion_actual(4) & (!\Add0~10\ & VCC))
-- \Add0~13\ = CARRY((posicion_actual(4) & !\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posicion_actual(4),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y5_N28
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~12_combout\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X22_Y5_N14
\in_pc[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(4) = (GLOBAL(\WideOr18~0clkctrl_outclk\) & (in_pc(4))) # (!GLOBAL(\WideOr18~0clkctrl_outclk\) & ((\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(4),
	datac => \WideOr18~0clkctrl_outclk\,
	datad => \Add0~14_combout\,
	combout => in_pc(4));

-- Location: LCFF_X22_Y5_N7
\r_pc|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_pc(4),
	sload => VCC,
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(4));

-- Location: LCFF_X21_Y5_N3
\r_pc|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_pc|registro\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X22_Y5_N2
\posicion_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(4) = (GLOBAL(\posicion_ram~0clkctrl_outclk\) & (posicion_ram(4))) # (!GLOBAL(\posicion_ram~0clkctrl_outclk\) & ((\r_pc|data_out[4]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posicion_ram~0clkctrl_outclk\,
	datab => posicion_ram(4),
	datad => \r_pc|data_out[4]~reg0_regout\,
	combout => posicion_ram(4));

-- Location: LCCOMB_X22_Y5_N30
\posicion_actual[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_actual(5) = (GLOBAL(\posicion_actual~0clkctrl_outclk\) & ((\r_pc|data_out[5]~reg0_regout\))) # (!GLOBAL(\posicion_actual~0clkctrl_outclk\) & (posicion_actual(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posicion_actual(5),
	datac => \posicion_actual~0clkctrl_outclk\,
	datad => \r_pc|data_out[5]~reg0_regout\,
	combout => posicion_actual(5));

-- Location: LCCOMB_X21_Y5_N24
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \Add0~13\ $ (posicion_actual(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => posicion_actual(5),
	cin => \Add0~13\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X22_Y5_N26
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\estadoSiguiente.incrementar_pc~regout\ & \Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X22_Y5_N4
\in_pc[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_pc(5) = (GLOBAL(\WideOr18~0clkctrl_outclk\) & (in_pc(5))) # (!GLOBAL(\WideOr18~0clkctrl_outclk\) & ((\Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_pc(5),
	datac => \WideOr18~0clkctrl_outclk\,
	datad => \Add0~17_combout\,
	combout => in_pc(5));

-- Location: LCFF_X22_Y5_N5
\r_pc|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_pc(5),
	ena => \r_pc|registro[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|registro\(5));

-- Location: LCCOMB_X22_Y5_N22
\r_pc|data_out[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_pc|data_out[5]~reg0feeder_combout\ = \r_pc|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_pc|registro\(5),
	combout => \r_pc|data_out[5]~reg0feeder_combout\);

-- Location: LCFF_X22_Y5_N23
\r_pc|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_pc|data_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_pc|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X22_Y5_N0
\posicion_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- posicion_ram(5) = (GLOBAL(\posicion_ram~0clkctrl_outclk\) & (posicion_ram(5))) # (!GLOBAL(\posicion_ram~0clkctrl_outclk\) & ((\r_pc|data_out[5]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \posicion_ram~0clkctrl_outclk\,
	datab => posicion_ram(5),
	datad => \r_pc|data_out[5]~reg0_regout\,
	combout => posicion_ram(5));

-- Location: LCCOMB_X22_Y4_N30
\in_ram[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(1) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\data_in~combout\(1))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((in_ram(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(1),
	datab => in_ram(1),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(1));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y4_N28
\in_ram[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(2) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\data_in~combout\(2)))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (in_ram(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ram(2),
	datac => \data_in~combout\(2),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(2));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y4_N0
\in_ram[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(3) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\data_in~combout\(3)))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (in_ram(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ram(3),
	datac => \data_in~combout\(3),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(3));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y4_N10
\in_ram[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(4) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & ((\data_in~combout\(4)))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & (in_ram(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ram(4),
	datac => \data_in~combout\(4),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(4));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y6_N24
\in_ram[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(5) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\data_in~combout\(5))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((in_ram(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(5),
	datac => in_ram(5),
	datad => \WideOr16~0clkctrl_outclk\,
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

-- Location: LCCOMB_X24_Y6_N14
\in_ram[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(6) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\data_in~combout\(6))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((in_ram(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(6),
	datac => in_ram(6),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(6));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X24_Y6_N16
\in_ram[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(7) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\data_in~combout\(7))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((in_ram(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(7),
	datac => in_ram(7),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(7));

-- Location: M4K_X23_Y5
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

-- Location: LCCOMB_X25_Y5_N30
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X25_Y5_N4
\in_ri[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(6) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(6))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(6),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector26~0_combout\,
	combout => in_ri(6));

-- Location: LCCOMB_X25_Y6_N8
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ((\Selector6~1_combout\ & ((\estadoSiguiente.inicio~regout\) # (!\WideOr2~0_combout\)))) # (!\WideOr7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \estadoSiguiente.inicio~regout\,
	datac => \WideOr2~0_combout\,
	datad => \WideOr7~1_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X25_Y5_N2
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\estadoSiguiente.mostrar_salida~regout\) # ((\Selector5~2_combout\ & \estadoSiguiente.inicio~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~2_combout\,
	datac => \estadoSiguiente.mostrar_salida~regout\,
	datad => \estadoSiguiente.inicio~regout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X25_Y6_N30
\Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~1_combout\) # (((\Selector5~2_combout\ & !\WideOr2~0_combout\)) # (!\WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~2_combout\,
	datab => \Selector5~1_combout\,
	datac => \WideOr2~0_combout\,
	datad => \WideOr7~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X25_Y6_N22
\r_ri|registro[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|registro[7]~0_combout\ = (\Selector6~1_combout\ & \Selector5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~1_combout\,
	datad => \Selector5~2_combout\,
	combout => \r_ri|registro[7]~0_combout\);

-- Location: LCFF_X25_Y5_N31
\r_ri|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => in_ri(6),
	sload => VCC,
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(6));

-- Location: LCFF_X26_Y5_N23
\r_ri|data_out[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y5_N0
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X26_Y5_N20
\in_ri[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(5) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(5))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(5),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector25~0_combout\,
	combout => in_ri(5));

-- Location: LCFF_X26_Y5_N21
\r_ri|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(5),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(5));

-- Location: LCFF_X26_Y5_N5
\r_ri|data_out[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[5]~reg0_regout\);

-- Location: LCCOMB_X26_Y5_N18
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X26_Y5_N30
\in_ri[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(4) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(4))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(4),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector24~0_combout\,
	combout => in_ri(4));

-- Location: LCFF_X26_Y5_N31
\r_ri|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(4),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(4));

-- Location: LCCOMB_X26_Y5_N26
\r_ri|data_out[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_ri|data_out[4]~reg0feeder_combout\ = \r_ri|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_ri|registro\(4),
	combout => \r_ri|data_out[4]~reg0feeder_combout\);

-- Location: LCFF_X26_Y5_N27
\r_ri|data_out[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \r_ri|data_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[4]~reg0_regout\);

-- Location: LCCOMB_X26_Y5_N4
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\r_ri|data_out[7]~reg0_regout\ & (!\r_ri|data_out[6]~reg0_regout\ & (!\r_ri|data_out[5]~reg0_regout\ & !\r_ri|data_out[4]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[7]~reg0_regout\,
	datab => \r_ri|data_out[6]~reg0_regout\,
	datac => \r_ri|data_out[5]~reg0_regout\,
	datad => \r_ri|data_out[4]~reg0_regout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X25_Y5_N14
\estadoSiguiente~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~21_combout\ = (\control~combout\(2) & (\Mux0~1_combout\ & (\estadoSiguiente.incrementar_pc~regout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \Mux0~1_combout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Mux0~0_combout\,
	combout => \estadoSiguiente~21_combout\);

-- Location: LCFF_X25_Y5_N15
\estadoSiguiente.cargar_op1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.cargar_op1~regout\);

-- Location: LCCOMB_X25_Y5_N10
\WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr7~1_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & !\estadoSiguiente.leer_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \estadoSiguiente.leer_ram~regout\,
	combout => \WideOr7~1_combout\);

-- Location: CLKCTRL_G4
\WideOr7~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr7~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr7~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y5_N12
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X24_Y5_N6
\in_ri[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(3) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(3))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => in_ri(3),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector23~0_combout\,
	combout => in_ri(3));

-- Location: LCFF_X24_Y5_N7
\r_ri|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(3),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(3));

-- Location: LCFF_X24_Y5_N21
\r_ri|data_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y5_N18
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X24_Y5_N0
\in_ri[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(1) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(1))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(1),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector21~0_combout\,
	combout => in_ri(1));

-- Location: LCFF_X24_Y5_N1
\r_ri|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(1),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(1));

-- Location: LCFF_X24_Y5_N29
\r_ri|data_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[1]~reg0_regout\);

-- Location: LCCOMB_X24_Y5_N22
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\estadoSiguiente.cargar_op1~regout\ & \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.cargar_op1~regout\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X24_Y5_N2
\in_ri[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ri(0) = (GLOBAL(\WideOr7~1clkctrl_outclk\) & (in_ri(0))) # (!GLOBAL(\WideOr7~1clkctrl_outclk\) & ((\Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => in_ri(0),
	datac => \WideOr7~1clkctrl_outclk\,
	datad => \Selector19~0_combout\,
	combout => in_ri(0));

-- Location: LCFF_X24_Y5_N3
\r_ri|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => in_ri(0),
	ena => \r_ri|registro[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|registro\(0));

-- Location: LCFF_X24_Y5_N31
\r_ri|data_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	sdata => \r_ri|registro\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r_ri|data_out[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y5_N28
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\r_ri|data_out[2]~reg0_regout\ & (\r_ri|data_out[3]~reg0_regout\ & (!\r_ri|data_out[1]~reg0_regout\ & !\r_ri|data_out[0]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_ri|data_out[2]~reg0_regout\,
	datab => \r_ri|data_out[3]~reg0_regout\,
	datac => \r_ri|data_out[1]~reg0_regout\,
	datad => \r_ri|data_out[0]~reg0_regout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X25_Y5_N8
\estadoSiguiente~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~22_combout\ = (\estadoSiguiente.inicio~regout\) # ((\estadoSiguiente.incrementar_pc~regout\ & ((!\Mux0~0_combout\) # (!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.inicio~regout\,
	datab => \Mux0~1_combout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \Mux0~0_combout\,
	combout => \estadoSiguiente~22_combout\);

-- Location: LCCOMB_X25_Y6_N20
\estadoSiguiente~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~23_combout\ = (\control~combout\(2) & (\estadoSiguiente~22_combout\ & ((\estadoSiguiente.inicio~regout\) # (\estadoSiguiente.incrementar_pc~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control~combout\(2),
	datab => \estadoSiguiente.inicio~regout\,
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente~22_combout\,
	combout => \estadoSiguiente~23_combout\);

-- Location: LCFF_X25_Y6_N21
\estadoSiguiente.espera\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.espera~regout\);

-- Location: LCCOMB_X25_Y6_N10
\estadoSiguiente~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~18_combout\ = (\control~combout\(2) & \estadoSiguiente.espera~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control~combout\(2),
	datad => \estadoSiguiente.espera~regout\,
	combout => \estadoSiguiente~18_combout\);

-- Location: LCFF_X25_Y6_N11
\estadoSiguiente.activar_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.activar_pc~regout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X25_Y5_N12
\estadoSiguiente~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~15_combout\ = (\estadoSiguiente.activar_pc~regout\ & (!\control~combout\(1) & \control~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoSiguiente.activar_pc~regout\,
	datac => \control~combout\(1),
	datad => \control~combout\(2),
	combout => \estadoSiguiente~15_combout\);

-- Location: LCFF_X25_Y5_N13
\estadoSiguiente.leer_ram\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ram~regout\);

-- Location: LCCOMB_X25_Y5_N26
\estadoSiguiente~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~20_combout\ = (\estadoSiguiente.leer_ram~regout\ & \control~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.leer_ram~regout\,
	datad => \control~combout\(2),
	combout => \estadoSiguiente~20_combout\);

-- Location: LCFF_X25_Y5_N27
\estadoSiguiente.leer_ri\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.leer_ri~regout\);

-- Location: LCCOMB_X25_Y6_N14
\estadoSiguiente~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \estadoSiguiente~17_combout\ = (\control~combout\(2) & ((\estadoSiguiente.escribir_ram~regout\) # ((\estadoSiguiente.leer_ri~regout\) # (\estadoSiguiente.mostrar_salida~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoSiguiente.escribir_ram~regout\,
	datab => \estadoSiguiente.leer_ri~regout\,
	datac => \control~combout\(2),
	datad => \estadoSiguiente.mostrar_salida~regout\,
	combout => \estadoSiguiente~17_combout\);

-- Location: LCFF_X25_Y6_N15
\estadoSiguiente.incrementar_pc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \control[0]~clkctrl_outclk\,
	datain => \estadoSiguiente~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estadoSiguiente.incrementar_pc~regout\);

-- Location: LCCOMB_X25_Y6_N18
\WideOr16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (\estadoSiguiente.incrementar_pc~regout\) # (\estadoSiguiente.escribir_ram~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoSiguiente.incrementar_pc~regout\,
	datad => \estadoSiguiente.escribir_ram~regout\,
	combout => \WideOr16~0_combout\);

-- Location: CLKCTRL_G0
\WideOr16~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr16~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr16~0clkctrl_outclk\);

-- Location: LCCOMB_X22_Y4_N0
\in_ram[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- in_ram(0) = (GLOBAL(\WideOr16~0clkctrl_outclk\) & (\data_in~combout\(0))) # (!GLOBAL(\WideOr16~0clkctrl_outclk\) & ((in_ram(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in~combout\(0),
	datac => in_ram(0),
	datad => \WideOr16~0clkctrl_outclk\,
	combout => in_ram(0));

-- Location: LCCOMB_X24_Y5_N14
\salida[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[0]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[0]$latch~combout\,
	datac => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \salida[0]$latch~combout\);

-- Location: LCCOMB_X24_Y5_N24
\salida[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[1]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a1\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[1]$latch~combout\,
	datac => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \salida[1]$latch~combout\);

-- Location: LCCOMB_X24_Y5_N16
\salida[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[2]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a2\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[2]$latch~combout\,
	datac => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \salida[2]$latch~combout\);

-- Location: LCCOMB_X24_Y5_N4
\salida[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[3]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a3\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[3]$latch~combout\,
	datac => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \salida[3]$latch~combout\);

-- Location: LCCOMB_X24_Y5_N20
\salida[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[4]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a4\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[4]$latch~combout\,
	datab => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \salida[4]$latch~combout\);

-- Location: LCCOMB_X26_Y5_N28
\salida[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[5]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a5\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[5]$latch~combout\,
	datac => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \salida[5]$latch~combout\);

-- Location: LCCOMB_X24_Y5_N30
\salida[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[6]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a6\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \salida[6]$latch~combout\,
	datab => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \salida[6]$latch~combout\);

-- Location: LCCOMB_X24_Y5_N8
\salida[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \salida[7]$latch~combout\ = (GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & ((\r_ram|ram_rtl_0|auto_generated|ram_block1a7\))) # (!GLOBAL(\estadoSiguiente.mostrar_salida~clkctrl_outclk\) & (\salida[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \salida[7]$latch~combout\,
	datac => \estadoSiguiente.mostrar_salida~clkctrl_outclk\,
	datad => \r_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \salida[7]$latch~combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


