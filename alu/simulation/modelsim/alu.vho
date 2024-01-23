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

-- DATE "11/02/2023 18:53:54"

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

ENTITY 	alu IS
    PORT (
	clk : IN std_logic;
	carry : OUT std_logic;
	ov : OUT std_logic;
	zeta : OUT std_logic;
	op1 : IN std_logic_vector(7 DOWNTO 0);
	op2 : IN std_logic_vector(7 DOWNTO 0);
	cod_op : IN std_logic_vector(2 DOWNTO 0);
	resultado : OUT std_logic_vector(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- resultado[0]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[1]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[2]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[3]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[4]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[5]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[6]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resultado[7]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- carry	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ov	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zeta	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[7]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[7]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[5]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[4]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[3]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[2]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op2[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[6]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[5]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[4]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[3]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[2]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[1]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op1[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cod_op[0]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cod_op[1]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cod_op[2]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_carry : std_logic;
SIGNAL ww_ov : std_logic;
SIGNAL ww_zeta : std_logic;
SIGNAL ww_op1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cod_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \resultado[0]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \resultado[0]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[0]~en_regout\ : std_logic;
SIGNAL \resultado[1]~8_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \resultado[1]~reg0_regout\ : std_logic;
SIGNAL \resultado[1]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[1]~en_regout\ : std_logic;
SIGNAL \resultado[1]~9_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \resultado[2]~reg0_regout\ : std_logic;
SIGNAL \resultado[2]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[2]~en_regout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \resultado[3]~reg0_regout\ : std_logic;
SIGNAL \resultado[3]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[3]~en_regout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \resultado[4]~reg0_regout\ : std_logic;
SIGNAL \resultado[4]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[4]~en_regout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \resultado[5]~reg0_regout\ : std_logic;
SIGNAL \resultado[5]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[5]~en_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \resultado[6]~reg0_regout\ : std_logic;
SIGNAL \resultado[6]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[6]~en_regout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \resultado[7]~reg0_regout\ : std_logic;
SIGNAL \resultado[7]~enfeeder_combout\ : std_logic;
SIGNAL \resultado[7]~en_regout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \carry~reg0_regout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \ov~reg0_regout\ : std_logic;
SIGNAL \op2~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \op1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cod_op~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_cod_op~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_resultado[7]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[6]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[5]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[4]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[3]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[2]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[1]~en_regout\ : std_logic;
SIGNAL \ALT_INV_resultado[0]~en_regout\ : std_logic;

BEGIN

ww_clk <= clk;
carry <= ww_carry;
ov <= ww_ov;
zeta <= ww_zeta;
ww_op1 <= op1;
ww_op2 <= op2;
ww_cod_op <= cod_op;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_cod_op~combout\(0) <= NOT \cod_op~combout\(0);
\ALT_INV_resultado[7]~en_regout\ <= NOT \resultado[7]~en_regout\;
\ALT_INV_resultado[6]~en_regout\ <= NOT \resultado[6]~en_regout\;
\ALT_INV_resultado[5]~en_regout\ <= NOT \resultado[5]~en_regout\;
\ALT_INV_resultado[4]~en_regout\ <= NOT \resultado[4]~en_regout\;
\ALT_INV_resultado[3]~en_regout\ <= NOT \resultado[3]~en_regout\;
\ALT_INV_resultado[2]~en_regout\ <= NOT \resultado[2]~en_regout\;
\ALT_INV_resultado[1]~en_regout\ <= NOT \resultado[1]~en_regout\;
\ALT_INV_resultado[0]~en_regout\ <= NOT \resultado[0]~en_regout\;

-- Location: LCCOMB_X25_Y9_N16
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\op2~combout\(1) & ((\Add1~1_cout\) # (GND))) # (!\op2~combout\(1) & (!\Add1~1_cout\))
-- \Add1~3\ = CARRY((\op2~combout\(1)) # (!\Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(1),
	datad => VCC,
	cin => \Add1~1_cout\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y9_N20
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\op2~combout\(3) & ((\Add1~5\) # (GND))) # (!\op2~combout\(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((\op2~combout\(3)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op2~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y9_N26
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\op2~combout\(6) & (!\Add1~11\ & VCC)) # (!\op2~combout\(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((!\op2~combout\(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X26_Y9_N12
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\op1~combout\(0) & (\op2~combout\(0) $ (VCC))) # (!\op1~combout\(0) & (\op2~combout\(0) & VCC))
-- \Add2~1\ = CARRY((\op1~combout\(0) & \op2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(0),
	datab => \op2~combout\(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X26_Y9_N14
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~2_combout\ & ((\op1~combout\(1) & (\Add2~1\ & VCC)) # (!\op1~combout\(1) & (!\Add2~1\)))) # (!\Add1~2_combout\ & ((\op1~combout\(1) & (!\Add2~1\)) # (!\op1~combout\(1) & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~2_combout\ & (!\op1~combout\(1) & !\Add2~1\)) # (!\Add1~2_combout\ & ((!\Add2~1\) # (!\op1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \op1~combout\(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X26_Y9_N20
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\op1~combout\(4) $ (\Add1~8_combout\ $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\op1~combout\(4) & ((\Add1~8_combout\) # (!\Add2~7\))) # (!\op1~combout\(4) & (\Add1~8_combout\ & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(4),
	datab => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X27_Y9_N20
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\op1~combout\(4) $ (\op2~combout\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\op1~combout\(4) & ((\op2~combout\(4)) # (!\Add0~7\))) # (!\op1~combout\(4) & (\op2~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(4),
	datab => \op2~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y9_N22
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\op1~combout\(5) & ((\op2~combout\(5) & (\Add0~9\ & VCC)) # (!\op2~combout\(5) & (!\Add0~9\)))) # (!\op1~combout\(5) & ((\op2~combout\(5) & (!\Add0~9\)) # (!\op2~combout\(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\op1~combout\(5) & (!\op2~combout\(5) & !\Add0~9\)) # (!\op1~combout\(5) & ((!\Add0~9\) # (!\op2~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(5),
	datab => \op2~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X26_Y10_N12
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\cod_op~combout\(1) & ((\cod_op~combout\(0)) # (\op1~combout\(0) $ (!\cod_op~combout\(2))))) # (!\cod_op~combout\(1) & (((\cod_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(0),
	datab => \cod_op~combout\(2),
	datac => \cod_op~combout\(1),
	datad => \cod_op~combout\(0),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X26_Y9_N8
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\cod_op~combout\(1) & (((\cod_op~combout\(0))))) # (!\cod_op~combout\(1) & ((\cod_op~combout\(0) & ((\Add2~8_combout\))) # (!\cod_op~combout\(0) & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(1),
	datab => \Add0~8_combout\,
	datac => \Add2~8_combout\,
	datad => \cod_op~combout\(0),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X27_Y10_N20
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (((\op2~combout\(4) & \op1~combout\(4))) # (!\cod_op~combout\(1)))) # (!\Mux6~1_combout\ & (\cod_op~combout\(1) & ((\op2~combout\(4)) # (\op1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \op2~combout\(4),
	datac => \op1~combout\(4),
	datad => \cod_op~combout\(1),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X27_Y9_N10
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\cod_op~combout\(0) & (((\op1~combout\(7) & \op2~combout\(7))) # (!\cod_op~combout\(1)))) # (!\cod_op~combout\(0) & (\cod_op~combout\(1) & ((\op1~combout\(7)) # (\op2~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(0),
	datab => \cod_op~combout\(1),
	datac => \op1~combout\(7),
	datad => \op2~combout\(7),
	combout => \Mux3~0_combout\);

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[6]~I\ : cycloneii_io
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
	padio => ww_op2(6),
	combout => \op2~combout\(6));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cod_op[2]~I\ : cycloneii_io
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
	padio => ww_cod_op(2),
	combout => \cod_op~combout\(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cod_op[1]~I\ : cycloneii_io
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
	padio => ww_cod_op(1),
	combout => \cod_op~combout\(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cod_op[0]~I\ : cycloneii_io
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
	padio => ww_cod_op(0),
	combout => \cod_op~combout\(0));

-- Location: LCCOMB_X26_Y9_N10
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\cod_op~combout\(2) & (((\cod_op~combout\(1)) # (!\cod_op~combout\(0))))) # (!\cod_op~combout\(2) & (\cod_op~combout\(1) & (\op1~combout\(0) $ (\cod_op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(0),
	datab => \cod_op~combout\(2),
	datac => \cod_op~combout\(1),
	datad => \cod_op~combout\(0),
	combout => \Mux10~3_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[0]~I\ : cycloneii_io
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
	padio => ww_op2(0),
	combout => \op2~combout\(0));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[1]~I\ : cycloneii_io
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
	padio => ww_op1(1),
	combout => \op1~combout\(1));

-- Location: LCCOMB_X26_Y9_N2
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\cod_op~combout\(2) & ((\op1~combout\(1)))) # (!\cod_op~combout\(2) & (\op2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op2~combout\(0),
	datac => \cod_op~combout\(2),
	datad => \op1~combout\(1),
	combout => \Mux10~0_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[0]~I\ : cycloneii_io
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
	padio => ww_op1(0),
	combout => \op1~combout\(0));

-- Location: LCCOMB_X27_Y9_N12
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\op2~combout\(0) & (\op1~combout\(0) $ (VCC))) # (!\op2~combout\(0) & (\op1~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\op2~combout\(0) & \op1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(0),
	datab => \op1~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X26_Y9_N0
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\cod_op~combout\(0) & (\Add2~0_combout\)) # (!\cod_op~combout\(0) & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \Add0~0_combout\,
	datad => \cod_op~combout\(0),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X26_Y10_N24
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~2_combout\ & (!\Mux10~3_combout\ & (\Mux10~0_combout\))) # (!\Mux10~2_combout\ & ((\Mux10~3_combout\) # ((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~3_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCFF_X26_Y10_N25
\resultado[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[0]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N30
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\cod_op~combout\(0) & (\cod_op~combout\(2) & \cod_op~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(0),
	datab => \cod_op~combout\(2),
	datac => \cod_op~combout\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y10_N2
\resultado[0]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[0]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[0]~enfeeder_combout\);

-- Location: LCFF_X26_Y10_N3
\resultado[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[0]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[0]~en_regout\);

-- Location: LCCOMB_X26_Y10_N0
\resultado[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[1]~8_combout\ = (\cod_op~combout\(2) & ((\cod_op~combout\(0)) # (\cod_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(0),
	datab => \cod_op~combout\(2),
	datac => \cod_op~combout\(1),
	combout => \resultado[1]~8_combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[1]~I\ : cycloneii_io
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
	padio => ww_op2(1),
	combout => \op2~combout\(1));

-- Location: LCCOMB_X27_Y9_N14
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\op2~combout\(1) & ((\op1~combout\(1) & (\Add0~1\ & VCC)) # (!\op1~combout\(1) & (!\Add0~1\)))) # (!\op2~combout\(1) & ((\op1~combout\(1) & (!\Add0~1\)) # (!\op1~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\op2~combout\(1) & (!\op1~combout\(1) & !\Add0~1\)) # (!\op2~combout\(1) & ((!\Add0~1\) # (!\op1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(1),
	datab => \op1~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y10_N8
\Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\cod_op~combout\(1) & (((\cod_op~combout\(0))))) # (!\cod_op~combout\(1) & ((\cod_op~combout\(0) & (\Add2~2_combout\)) # (!\cod_op~combout\(0) & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \cod_op~combout\(1),
	datac => \Add0~2_combout\,
	datad => \cod_op~combout\(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X27_Y10_N26
\Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\op1~combout\(1) & \op2~combout\(1))) # (!\cod_op~combout\(1)))) # (!\Mux9~0_combout\ & (\cod_op~combout\(1) & ((\op1~combout\(1)) # (\op2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(1),
	datab => \op2~combout\(1),
	datac => \Mux9~0_combout\,
	datad => \cod_op~combout\(1),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X27_Y10_N24
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\resultado[1]~9_combout\ & ((\Mux9~1_combout\) # ((\resultado[1]~8_combout\)))) # (!\resultado[1]~9_combout\ & (((!\resultado[1]~8_combout\ & \op1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[1]~9_combout\,
	datab => \Mux9~1_combout\,
	datac => \resultado[1]~8_combout\,
	datad => \op1~combout\(0),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X26_Y10_N16
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\resultado[1]~8_combout\ & ((\Mux9~2_combout\ & ((!\op1~combout\(1)))) # (!\Mux9~2_combout\ & (\op1~combout\(2))))) # (!\resultado[1]~8_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(2),
	datab => \resultado[1]~8_combout\,
	datac => \op1~combout\(1),
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCFF_X26_Y10_N17
\resultado[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[1]~reg0_regout\);

-- Location: LCCOMB_X25_Y10_N8
\resultado[1]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[1]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[1]~enfeeder_combout\);

-- Location: LCFF_X25_Y10_N9
\resultado[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[1]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[1]~en_regout\);

-- Location: LCCOMB_X26_Y10_N14
\resultado[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[1]~9_combout\ = (\cod_op~combout\(1)) # (!\cod_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(1),
	datac => \cod_op~combout\(2),
	combout => \resultado[1]~9_combout\);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[3]~I\ : cycloneii_io
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
	padio => ww_op1(3),
	combout => \op1~combout\(3));

-- Location: LCCOMB_X26_Y10_N28
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\resultado[1]~8_combout\ & (((\resultado[1]~9_combout\) # (\op1~combout\(3))))) # (!\resultado[1]~8_combout\ & (\op1~combout\(1) & (!\resultado[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(1),
	datab => \resultado[1]~8_combout\,
	datac => \resultado[1]~9_combout\,
	datad => \op1~combout\(3),
	combout => \Mux8~0_combout\);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[2]~I\ : cycloneii_io
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
	padio => ww_op2(2),
	combout => \op2~combout\(2));

-- Location: LCCOMB_X25_Y9_N14
\Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY(!\op2~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(0),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X25_Y9_N18
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\op2~combout\(2) & (!\Add1~3\ & VCC)) # (!\op2~combout\(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!\op2~combout\(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op2~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X26_Y9_N16
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\op1~combout\(2) $ (\Add1~4_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\op1~combout\(2) & ((\Add1~4_combout\) # (!\Add2~3\))) # (!\op1~combout\(2) & (\Add1~4_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(2),
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X27_Y9_N16
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\op1~combout\(2) $ (\op2~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\op1~combout\(2) & ((\op2~combout\(2)) # (!\Add0~3\))) # (!\op1~combout\(2) & (\op2~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(2),
	datab => \op2~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y9_N2
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\cod_op~combout\(0) & ((\Add2~4_combout\) # ((\cod_op~combout\(1))))) # (!\cod_op~combout\(0) & (((\Add0~4_combout\ & !\cod_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(0),
	datab => \Add2~4_combout\,
	datac => \Add0~4_combout\,
	datad => \cod_op~combout\(1),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X27_Y10_N30
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux8~1_combout\ & (((\op1~combout\(2) & \op2~combout\(2))) # (!\cod_op~combout\(1)))) # (!\Mux8~1_combout\ & (\cod_op~combout\(1) & ((\op1~combout\(2)) # (\op2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(2),
	datab => \Mux8~1_combout\,
	datac => \op2~combout\(2),
	datad => \cod_op~combout\(1),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X26_Y10_N10
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~0_combout\ & (((!\resultado[1]~9_combout\)) # (!\op1~combout\(2)))) # (!\Mux8~0_combout\ & (((\resultado[1]~9_combout\ & \Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(2),
	datab => \Mux8~0_combout\,
	datac => \resultado[1]~9_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCFF_X26_Y10_N11
\resultado[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[2]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N0
\resultado[2]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[2]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[2]~enfeeder_combout\);

-- Location: LCFF_X22_Y10_N1
\resultado[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[2]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[2]~en_regout\);

-- Location: LCCOMB_X27_Y9_N18
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\op2~combout\(3) & ((\op1~combout\(3) & (\Add0~5\ & VCC)) # (!\op1~combout\(3) & (!\Add0~5\)))) # (!\op2~combout\(3) & ((\op1~combout\(3) & (!\Add0~5\)) # (!\op1~combout\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\op2~combout\(3) & (!\op1~combout\(3) & !\Add0~5\)) # (!\op2~combout\(3) & ((!\Add0~5\) # (!\op1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(3),
	datab => \op1~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y9_N18
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~6_combout\ & ((\op1~combout\(3) & (\Add2~5\ & VCC)) # (!\op1~combout\(3) & (!\Add2~5\)))) # (!\Add1~6_combout\ & ((\op1~combout\(3) & (!\Add2~5\)) # (!\op1~combout\(3) & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~6_combout\ & (!\op1~combout\(3) & !\Add2~5\)) # (!\Add1~6_combout\ & ((!\Add2~5\) # (!\op1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \op1~combout\(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X27_Y10_N16
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\cod_op~combout\(0) & (((\Add2~6_combout\) # (\cod_op~combout\(1))))) # (!\cod_op~combout\(0) & (\Add0~6_combout\ & ((!\cod_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(0),
	datab => \Add0~6_combout\,
	datac => \Add2~6_combout\,
	datad => \cod_op~combout\(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X27_Y10_N14
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\op2~combout\(3) & \op1~combout\(3))) # (!\cod_op~combout\(1)))) # (!\Mux7~0_combout\ & (\cod_op~combout\(1) & ((\op2~combout\(3)) # (\op1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(3),
	datab => \op1~combout\(3),
	datac => \Mux7~0_combout\,
	datad => \cod_op~combout\(1),
	combout => \Mux7~1_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[2]~I\ : cycloneii_io
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
	padio => ww_op1(2),
	combout => \op1~combout\(2));

-- Location: LCCOMB_X27_Y10_N0
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\resultado[1]~8_combout\ & (((\resultado[1]~9_combout\)))) # (!\resultado[1]~8_combout\ & ((\resultado[1]~9_combout\ & (\Mux7~1_combout\)) # (!\resultado[1]~9_combout\ & ((\op1~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[1]~8_combout\,
	datab => \Mux7~1_combout\,
	datac => \op1~combout\(2),
	datad => \resultado[1]~9_combout\,
	combout => \Mux7~2_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[4]~I\ : cycloneii_io
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
	padio => ww_op1(4),
	combout => \op1~combout\(4));

-- Location: LCCOMB_X27_Y10_N28
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\resultado[1]~8_combout\ & ((\Mux7~2_combout\ & ((!\op1~combout\(3)))) # (!\Mux7~2_combout\ & (\op1~combout\(4))))) # (!\resultado[1]~8_combout\ & (\Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[1]~8_combout\,
	datab => \Mux7~2_combout\,
	datac => \op1~combout\(4),
	datad => \op1~combout\(3),
	combout => \Mux7~3_combout\);

-- Location: LCFF_X27_Y10_N29
\resultado[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[3]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N22
\resultado[3]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[3]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[3]~enfeeder_combout\);

-- Location: LCFF_X22_Y10_N23
\resultado[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[3]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[3]~en_regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[5]~I\ : cycloneii_io
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
	padio => ww_op1(5),
	combout => \op1~combout\(5));

-- Location: LCCOMB_X27_Y10_N2
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\resultado[1]~9_combout\ & (((\resultado[1]~8_combout\)))) # (!\resultado[1]~9_combout\ & ((\resultado[1]~8_combout\ & ((\op1~combout\(5)))) # (!\resultado[1]~8_combout\ & (\op1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[1]~9_combout\,
	datab => \op1~combout\(3),
	datac => \resultado[1]~8_combout\,
	datad => \op1~combout\(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X27_Y10_N22
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~0_combout\ & (((!\resultado[1]~9_combout\) # (!\op1~combout\(4))))) # (!\Mux6~0_combout\ & (\Mux6~2_combout\ & ((\resultado[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~0_combout\,
	datac => \op1~combout\(4),
	datad => \resultado[1]~9_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCFF_X27_Y10_N23
\resultado[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[4]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N8
\resultado[4]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[4]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[4]~enfeeder_combout\);

-- Location: LCFF_X26_Y10_N9
\resultado[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[4]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[4]~en_regout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[5]~I\ : cycloneii_io
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
	padio => ww_op2(5),
	combout => \op2~combout\(5));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[4]~I\ : cycloneii_io
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
	padio => ww_op2(4),
	combout => \op2~combout\(4));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[3]~I\ : cycloneii_io
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
	padio => ww_op2(3),
	combout => \op2~combout\(3));

-- Location: LCCOMB_X25_Y9_N22
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\op2~combout\(4) & (!\Add1~7\ & VCC)) # (!\op2~combout\(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!\op2~combout\(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op2~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X25_Y9_N24
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\op2~combout\(5) & ((\Add1~9\) # (GND))) # (!\op2~combout\(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((\op2~combout\(5)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \op2~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X26_Y9_N22
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\op1~combout\(5) & ((\Add1~10_combout\ & (\Add2~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add2~9\)))) # (!\op1~combout\(5) & ((\Add1~10_combout\ & (!\Add2~9\)) # (!\Add1~10_combout\ & ((\Add2~9\) # (GND)))))
-- \Add2~11\ = CARRY((\op1~combout\(5) & (!\Add1~10_combout\ & !\Add2~9\)) # (!\op1~combout\(5) & ((!\Add2~9\) # (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(5),
	datab => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X26_Y9_N30
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\cod_op~combout\(1) & (((\cod_op~combout\(0))))) # (!\cod_op~combout\(1) & ((\cod_op~combout\(0) & ((\Add2~10_combout\))) # (!\cod_op~combout\(0) & (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add2~10_combout\,
	datac => \cod_op~combout\(1),
	datad => \cod_op~combout\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X26_Y10_N26
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\cod_op~combout\(1) & ((\op1~combout\(5) & ((\op2~combout\(5)) # (!\Mux5~0_combout\))) # (!\op1~combout\(5) & (\op2~combout\(5) & !\Mux5~0_combout\)))) # (!\cod_op~combout\(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(5),
	datab => \op2~combout\(5),
	datac => \cod_op~combout\(1),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X26_Y10_N20
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\resultado[1]~8_combout\ & (((\resultado[1]~9_combout\)))) # (!\resultado[1]~8_combout\ & ((\resultado[1]~9_combout\ & ((\Mux5~1_combout\))) # (!\resultado[1]~9_combout\ & (\op1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(4),
	datab => \resultado[1]~8_combout\,
	datac => \resultado[1]~9_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[6]~I\ : cycloneii_io
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
	padio => ww_op1(6),
	combout => \op1~combout\(6));

-- Location: LCCOMB_X26_Y10_N6
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\resultado[1]~8_combout\ & ((\Mux5~2_combout\ & (!\op1~combout\(5))) # (!\Mux5~2_combout\ & ((\op1~combout\(6)))))) # (!\resultado[1]~8_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(5),
	datab => \resultado[1]~8_combout\,
	datac => \Mux5~2_combout\,
	datad => \op1~combout\(6),
	combout => \Mux5~3_combout\);

-- Location: LCFF_X26_Y10_N7
\resultado[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[5]~reg0_regout\);

-- Location: LCCOMB_X22_Y10_N4
\resultado[5]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[5]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[5]~enfeeder_combout\);

-- Location: LCFF_X22_Y10_N5
\resultado[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[5]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[5]~en_regout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op1[7]~I\ : cycloneii_io
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
	padio => ww_op1(7),
	combout => \op1~combout\(7));

-- Location: LCCOMB_X26_Y10_N22
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\resultado[1]~8_combout\ & (((\resultado[1]~9_combout\) # (\op1~combout\(7))))) # (!\resultado[1]~8_combout\ & (\op1~combout\(5) & (!\resultado[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(5),
	datab => \resultado[1]~8_combout\,
	datac => \resultado[1]~9_combout\,
	datad => \op1~combout\(7),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y9_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\op2~combout\(6) $ (\op1~combout\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\op2~combout\(6) & ((\op1~combout\(6)) # (!\Add0~11\))) # (!\op2~combout\(6) & (\op1~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(6),
	datab => \op1~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y9_N24
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add1~12_combout\ $ (\op1~combout\(6) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Add1~12_combout\ & ((\op1~combout\(6)) # (!\Add2~11\))) # (!\Add1~12_combout\ & (\op1~combout\(6) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \op1~combout\(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X26_Y9_N6
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\cod_op~combout\(1) & (((\cod_op~combout\(0))))) # (!\cod_op~combout\(1) & ((\cod_op~combout\(0) & ((\Add2~12_combout\))) # (!\cod_op~combout\(0) & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(1),
	datab => \Add0~12_combout\,
	datac => \Add2~12_combout\,
	datad => \cod_op~combout\(0),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X27_Y9_N8
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux4~1_combout\ & (((\op2~combout\(6) & \op1~combout\(6))) # (!\cod_op~combout\(1)))) # (!\Mux4~1_combout\ & (\cod_op~combout\(1) & ((\op2~combout\(6)) # (\op1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(6),
	datab => \op1~combout\(6),
	datac => \Mux4~1_combout\,
	datad => \cod_op~combout\(1),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X27_Y10_N12
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\resultado[1]~9_combout\ & ((\Mux4~0_combout\ & ((!\op1~combout\(6)))) # (!\Mux4~0_combout\ & (\Mux4~2_combout\)))) # (!\resultado[1]~9_combout\ & (\Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[1]~9_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux4~2_combout\,
	datad => \op1~combout\(6),
	combout => \Mux4~3_combout\);

-- Location: LCFF_X27_Y10_N13
\resultado[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[6]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N4
\resultado[6]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[6]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[6]~enfeeder_combout\);

-- Location: LCFF_X26_Y10_N5
\resultado[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[6]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[6]~en_regout\);

-- Location: LCCOMB_X27_Y9_N26
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\op2~combout\(7) & ((\op1~combout\(7) & (\Add0~13\ & VCC)) # (!\op1~combout\(7) & (!\Add0~13\)))) # (!\op2~combout\(7) & ((\op1~combout\(7) & (!\Add0~13\)) # (!\op1~combout\(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\op2~combout\(7) & (!\op1~combout\(7) & !\Add0~13\)) # (!\op2~combout\(7) & ((!\Add0~13\) # (!\op1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op2~combout\(7),
	datab => \op1~combout\(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op2[7]~I\ : cycloneii_io
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
	padio => ww_op2(7),
	combout => \op2~combout\(7));

-- Location: LCCOMB_X25_Y9_N28
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!\op2~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \op2~combout\(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X26_Y9_N26
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\op1~combout\(7) & ((\Add1~14_combout\ & (\Add2~13\ & VCC)) # (!\Add1~14_combout\ & (!\Add2~13\)))) # (!\op1~combout\(7) & ((\Add1~14_combout\ & (!\Add2~13\)) # (!\Add1~14_combout\ & ((\Add2~13\) # (GND)))))
-- \Add2~15\ = CARRY((\op1~combout\(7) & (!\Add1~14_combout\ & !\Add2~13\)) # (!\op1~combout\(7) & ((!\Add2~13\) # (!\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(7),
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X27_Y9_N30
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\Add2~14_combout\) # (\cod_op~combout\(1))))) # (!\Mux3~0_combout\ & (\Add0~14_combout\ & ((!\cod_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Add0~14_combout\,
	datac => \Add2~14_combout\,
	datad => \cod_op~combout\(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X27_Y10_N18
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\resultado[1]~9_combout\ & ((\Mux3~1_combout\) # ((\resultado[1]~8_combout\)))) # (!\resultado[1]~9_combout\ & (((!\resultado[1]~8_combout\ & \op1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[1]~9_combout\,
	datab => \Mux3~1_combout\,
	datac => \resultado[1]~8_combout\,
	datad => \op1~combout\(6),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X27_Y10_N10
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((!\resultado[1]~8_combout\)) # (!\op1~combout\(7)))) # (!\Mux3~2_combout\ & (((\resultado[1]~8_combout\ & \op1~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1~combout\(7),
	datab => \Mux3~2_combout\,
	datac => \resultado[1]~8_combout\,
	datad => \op1~combout\(0),
	combout => \Mux3~3_combout\);

-- Location: LCFF_X27_Y10_N11
\resultado[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[7]~reg0_regout\);

-- Location: LCCOMB_X26_Y10_N18
\resultado[7]~enfeeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \resultado[7]~enfeeder_combout\ = \Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~0_combout\,
	combout => \resultado[7]~enfeeder_combout\);

-- Location: LCFF_X26_Y10_N19
\resultado[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \resultado[7]~enfeeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \resultado[7]~en_regout\);

-- Location: LCCOMB_X26_Y9_N28
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = !\Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~15\,
	combout => \Add2~16_combout\);

-- Location: LCCOMB_X27_Y9_N0
\carry~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \carry~0_combout\ = (\carry~reg0_regout\) # (\Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \carry~reg0_regout\,
	datad => \Add2~16_combout\,
	combout => \carry~0_combout\);

-- Location: LCCOMB_X27_Y9_N28
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X26_Y9_N4
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\cod_op~combout\(1) & !\cod_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(1),
	datac => \cod_op~combout\(2),
	combout => \Mux0~0_combout\);

-- Location: LCFF_X27_Y9_N1
\carry~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \carry~0_combout\,
	sdata => \Add0~16_combout\,
	sload => \ALT_INV_cod_op~combout\(0),
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \carry~reg0_regout\);

-- Location: LCCOMB_X27_Y9_N4
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\cod_op~combout\(0) & (((\op1~combout\(7))))) # (!\cod_op~combout\(0) & ((\Add0~14_combout\ & (!\op1~combout\(7) & !\op2~combout\(7))) # (!\Add0~14_combout\ & (\op1~combout\(7) & \op2~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cod_op~combout\(0),
	datab => \Add0~14_combout\,
	datac => \op1~combout\(7),
	datad => \op2~combout\(7),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X27_Y9_N6
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & (((!\Add2~14_combout\ & \Add1~14_combout\)) # (!\cod_op~combout\(0)))) # (!\Mux0~1_combout\ & (\Add2~14_combout\ & (!\Add1~14_combout\ & \cod_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add1~14_combout\,
	datac => \Mux0~1_combout\,
	datad => \cod_op~combout\(0),
	combout => \Mux0~2_combout\);

-- Location: LCFF_X27_Y9_N7
\ov~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux0~2_combout\,
	ena => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ov~reg0_regout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[0]~I\ : cycloneii_io
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
	datain => \resultado[0]~reg0_regout\,
	oe => \ALT_INV_resultado[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(0));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[1]~I\ : cycloneii_io
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
	datain => \resultado[1]~reg0_regout\,
	oe => \ALT_INV_resultado[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(1));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[2]~I\ : cycloneii_io
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
	datain => \resultado[2]~reg0_regout\,
	oe => \ALT_INV_resultado[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[3]~I\ : cycloneii_io
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
	datain => \resultado[3]~reg0_regout\,
	oe => \ALT_INV_resultado[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(3));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[4]~I\ : cycloneii_io
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
	datain => \resultado[4]~reg0_regout\,
	oe => \ALT_INV_resultado[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(4));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[5]~I\ : cycloneii_io
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
	datain => \resultado[5]~reg0_regout\,
	oe => \ALT_INV_resultado[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[6]~I\ : cycloneii_io
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
	datain => \resultado[6]~reg0_regout\,
	oe => \ALT_INV_resultado[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(6));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resultado[7]~I\ : cycloneii_io
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
	datain => \resultado[7]~reg0_regout\,
	oe => \ALT_INV_resultado[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_resultado(7));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\carry~I\ : cycloneii_io
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
	datain => \carry~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_carry);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ov~I\ : cycloneii_io
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
	datain => \ov~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ov);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zeta~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zeta);
END structure;


