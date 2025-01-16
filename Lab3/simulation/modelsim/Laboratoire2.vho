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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/02/2024 15:10:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU_8BITS IS
    PORT (
	data_1 : IN std_logic_vector(7 DOWNTO 0);
	data_2 : IN std_logic_vector(7 DOWNTO 0);
	selecteur_alu : IN std_logic_vector(2 DOWNTO 0);
	signal_zero : OUT std_logic;
	ALU_resultat : OUT std_logic_vector(7 DOWNTO 0)
	);
END ALU_8BITS;

-- Design Ports Information
-- signal_zero	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_resultat[7]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[5]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_2[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_1[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecteur_alu[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecteur_alu[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecteur_alu[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_8BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_selecteur_alu : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_signal_zero : std_logic;
SIGNAL ww_ALU_resultat : std_logic_vector(7 DOWNTO 0);
SIGNAL \signal_zero~output_o\ : std_logic;
SIGNAL \ALU_resultat[0]~output_o\ : std_logic;
SIGNAL \ALU_resultat[1]~output_o\ : std_logic;
SIGNAL \ALU_resultat[2]~output_o\ : std_logic;
SIGNAL \ALU_resultat[3]~output_o\ : std_logic;
SIGNAL \ALU_resultat[4]~output_o\ : std_logic;
SIGNAL \ALU_resultat[5]~output_o\ : std_logic;
SIGNAL \ALU_resultat[6]~output_o\ : std_logic;
SIGNAL \ALU_resultat[7]~output_o\ : std_logic;
SIGNAL \data_1[0]~input_o\ : std_logic;
SIGNAL \data_2[0]~input_o\ : std_logic;
SIGNAL \selecteur_alu[0]~input_o\ : std_logic;
SIGNAL \Multiplexeur|Mux6~0_combout\ : std_logic;
SIGNAL \selecteur_alu[2]~input_o\ : std_logic;
SIGNAL \selecteur_alu[1]~input_o\ : std_logic;
SIGNAL \data_1[1]~input_o\ : std_logic;
SIGNAL \data_2[1]~input_o\ : std_logic;
SIGNAL \Multiplexeur|Mux6~1_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux6~2_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux7~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux7~1_combout\ : std_logic;
SIGNAL \data_2[6]~input_o\ : std_logic;
SIGNAL \data_1[6]~input_o\ : std_logic;
SIGNAL \Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\ : std_logic;
SIGNAL \data_2[5]~input_o\ : std_logic;
SIGNAL \data_1[5]~input_o\ : std_logic;
SIGNAL \data_1[3]~input_o\ : std_logic;
SIGNAL \data_2[2]~input_o\ : std_logic;
SIGNAL \data_1[2]~input_o\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~1_combout\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~2_combout\ : std_logic;
SIGNAL \data_2[3]~input_o\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~3_combout\ : std_logic;
SIGNAL \data_1[4]~input_o\ : std_logic;
SIGNAL \data_2[4]~input_o\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~4_combout\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~5_combout\ : std_logic;
SIGNAL \data_2[7]~input_o\ : std_logic;
SIGNAL \data_1[7]~input_o\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~0_combout\ : std_logic;
SIGNAL \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\ : std_logic;
SIGNAL \Comparateur_A_inf_B|out_a_inf_b~6_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux7~2_combout\ : std_logic;
SIGNAL \ALU_addition|bit1|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_addition|bit2|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_addition|bit3|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_addition|bit4|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_addition|bit7|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_addition|bit7|o_Sum~1_combout\ : std_logic;
SIGNAL \ALU_soustraction|bit1|o_CarryOut~combout\ : std_logic;
SIGNAL \ALU_soustraction|bit2|o_CarryOut~combout\ : std_logic;
SIGNAL \ALU_soustraction|bit3|o_CarryOut~combout\ : std_logic;
SIGNAL \ALU_soustraction|bit4|o_CarryOut~combout\ : std_logic;
SIGNAL \ALU_soustraction|bit6|int_CarryOut1~combout\ : std_logic;
SIGNAL \ALU_soustraction|bit6|int_CarryOut3~combout\ : std_logic;
SIGNAL \ALU_soustraction|bit7|o_Sum~combout\ : std_logic;
SIGNAL \Multiplexeur|Mux0~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux0~1_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux2~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux2~1_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux1~2_combout\ : std_logic;
SIGNAL \ALU_addition|bit6|o_Sum~combout\ : std_logic;
SIGNAL \Multiplexeur|Mux1~5_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux1~3_combout\ : std_logic;
SIGNAL \signal_zero~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux4~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux4~1_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux5~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux5~1_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux3~0_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux3~1_combout\ : std_logic;
SIGNAL \signal_zero~1_combout\ : std_logic;
SIGNAL \signal_zero~2_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux5~2_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux4~2_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux3~2_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux2~2_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux1~4_combout\ : std_logic;
SIGNAL \Multiplexeur|Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_signal_zero~2_combout\ : std_logic;

BEGIN

ww_data_1 <= data_1;
ww_data_2 <= data_2;
ww_selecteur_alu <= selecteur_alu;
signal_zero <= ww_signal_zero;
ALU_resultat <= ww_ALU_resultat;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_signal_zero~2_combout\ <= NOT \signal_zero~2_combout\;

-- Location: IOOBUF_X52_Y73_N9
\signal_zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_signal_zero~2_combout\,
	devoe => ww_devoe,
	o => \signal_zero~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\ALU_resultat[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\ALU_resultat[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux6~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\ALU_resultat[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\ALU_resultat[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux4~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\ALU_resultat[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\ALU_resultat[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\ALU_resultat[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[6]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\ALU_resultat[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Multiplexeur|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \ALU_resultat[7]~output_o\);

-- Location: IOIBUF_X58_Y73_N1
\data_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(0),
	o => \data_1[0]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\data_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(0),
	o => \data_2[0]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\selecteur_alu[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecteur_alu(0),
	o => \selecteur_alu[0]~input_o\);

-- Location: LCCOMB_X61_Y72_N26
\Multiplexeur|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux6~0_combout\ = (\data_2[0]~input_o\ & (\data_1[0]~input_o\ $ (\selecteur_alu[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_1[0]~input_o\,
	datac => \data_2[0]~input_o\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux6~0_combout\);

-- Location: IOIBUF_X62_Y73_N15
\selecteur_alu[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecteur_alu(2),
	o => \selecteur_alu[2]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\selecteur_alu[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecteur_alu(1),
	o => \selecteur_alu[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\data_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(1),
	o => \data_1[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\data_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(1),
	o => \data_2[1]~input_o\);

-- Location: LCCOMB_X61_Y72_N20
\Multiplexeur|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux6~1_combout\ = (\data_1[1]~input_o\ & ((\data_2[1]~input_o\ & (\selecteur_alu[1]~input_o\)) # (!\data_2[1]~input_o\ & ((\selecteur_alu[0]~input_o\) # (!\selecteur_alu[1]~input_o\))))) # (!\data_1[1]~input_o\ & (\data_2[1]~input_o\ & 
-- ((\selecteur_alu[0]~input_o\) # (!\selecteur_alu[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_1[1]~input_o\,
	datab => \data_2[1]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux6~1_combout\);

-- Location: LCCOMB_X61_Y72_N30
\Multiplexeur|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux6~2_combout\ = (!\selecteur_alu[2]~input_o\ & (\Multiplexeur|Mux6~1_combout\ $ (((\Multiplexeur|Mux6~0_combout\ & !\selecteur_alu[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexeur|Mux6~0_combout\,
	datab => \selecteur_alu[2]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \Multiplexeur|Mux6~1_combout\,
	combout => \Multiplexeur|Mux6~2_combout\);

-- Location: LCCOMB_X61_Y72_N12
\Multiplexeur|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux7~0_combout\ = (\selecteur_alu[2]~input_o\ & (!\selecteur_alu[1]~input_o\ & !\selecteur_alu[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selecteur_alu[2]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux7~0_combout\);

-- Location: LCCOMB_X61_Y72_N14
\Multiplexeur|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux7~1_combout\ = (\data_2[0]~input_o\ & ((\data_1[0]~input_o\ & (\selecteur_alu[1]~input_o\)) # (!\data_1[0]~input_o\ & ((\selecteur_alu[0]~input_o\) # (!\selecteur_alu[1]~input_o\))))) # (!\data_2[0]~input_o\ & (\data_1[0]~input_o\ & 
-- ((\selecteur_alu[0]~input_o\) # (!\selecteur_alu[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[0]~input_o\,
	datab => \data_1[0]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux7~1_combout\);

-- Location: IOIBUF_X67_Y73_N8
\data_2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(6),
	o => \data_2[6]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\data_1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(6),
	o => \data_1[6]~input_o\);

-- Location: LCCOMB_X66_Y72_N6
\Comparateur_A_inf_B|bit_a6_eq_b6|eq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\ = \data_2[6]~input_o\ $ (\data_1[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_2[6]~input_o\,
	datad => \data_1[6]~input_o\,
	combout => \Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\data_2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(5),
	o => \data_2[5]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\data_1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(5),
	o => \data_1[5]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\data_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(3),
	o => \data_1[3]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\data_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(2),
	o => \data_2[2]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\data_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(2),
	o => \data_1[2]~input_o\);

-- Location: LCCOMB_X61_Y72_N24
\Comparateur_A_inf_B|out_a_inf_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~1_combout\ = (\data_1[1]~input_o\ & (\data_2[0]~input_o\ & (!\data_1[0]~input_o\ & \data_2[1]~input_o\))) # (!\data_1[1]~input_o\ & ((\data_2[1]~input_o\) # ((\data_2[0]~input_o\ & !\data_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[0]~input_o\,
	datab => \data_1[0]~input_o\,
	datac => \data_1[1]~input_o\,
	datad => \data_2[1]~input_o\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~1_combout\);

-- Location: LCCOMB_X61_Y72_N2
\Comparateur_A_inf_B|out_a_inf_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~2_combout\ = (\data_2[2]~input_o\ & ((\Comparateur_A_inf_B|out_a_inf_b~1_combout\) # (!\data_1[2]~input_o\))) # (!\data_2[2]~input_o\ & (!\data_1[2]~input_o\ & \Comparateur_A_inf_B|out_a_inf_b~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_2[2]~input_o\,
	datac => \data_1[2]~input_o\,
	datad => \Comparateur_A_inf_B|out_a_inf_b~1_combout\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~2_combout\);

-- Location: IOIBUF_X72_Y73_N8
\data_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(3),
	o => \data_2[3]~input_o\);

-- Location: LCCOMB_X65_Y72_N8
\Comparateur_A_inf_B|out_a_inf_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~3_combout\ = (\data_1[3]~input_o\ & (\Comparateur_A_inf_B|out_a_inf_b~2_combout\ & \data_2[3]~input_o\)) # (!\data_1[3]~input_o\ & ((\Comparateur_A_inf_B|out_a_inf_b~2_combout\) # (\data_2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_1[3]~input_o\,
	datab => \Comparateur_A_inf_B|out_a_inf_b~2_combout\,
	datad => \data_2[3]~input_o\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~3_combout\);

-- Location: IOIBUF_X72_Y73_N15
\data_1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(4),
	o => \data_1[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\data_2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(4),
	o => \data_2[4]~input_o\);

-- Location: LCCOMB_X65_Y72_N10
\Comparateur_A_inf_B|out_a_inf_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~4_combout\ = (\Comparateur_A_inf_B|out_a_inf_b~3_combout\ & ((\data_2[4]~input_o\) # (!\data_1[4]~input_o\))) # (!\Comparateur_A_inf_B|out_a_inf_b~3_combout\ & (!\data_1[4]~input_o\ & \data_2[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Comparateur_A_inf_B|out_a_inf_b~3_combout\,
	datac => \data_1[4]~input_o\,
	datad => \data_2[4]~input_o\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~4_combout\);

-- Location: LCCOMB_X66_Y72_N2
\Comparateur_A_inf_B|out_a_inf_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~5_combout\ = (\data_2[5]~input_o\ & ((\Comparateur_A_inf_B|out_a_inf_b~4_combout\) # (!\data_1[5]~input_o\))) # (!\data_2[5]~input_o\ & (!\data_1[5]~input_o\ & \Comparateur_A_inf_B|out_a_inf_b~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[5]~input_o\,
	datac => \data_1[5]~input_o\,
	datad => \Comparateur_A_inf_B|out_a_inf_b~4_combout\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~5_combout\);

-- Location: IOIBUF_X67_Y73_N22
\data_2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_2(7),
	o => \data_2[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\data_1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_1(7),
	o => \data_1[7]~input_o\);

-- Location: LCCOMB_X66_Y72_N24
\Comparateur_A_inf_B|out_a_inf_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~0_combout\ = (\data_2[7]~input_o\ & (((\data_2[6]~input_o\ & !\data_1[6]~input_o\)) # (!\data_1[7]~input_o\))) # (!\data_2[7]~input_o\ & (\data_2[6]~input_o\ & (!\data_1[7]~input_o\ & !\data_1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[6]~input_o\,
	datab => \data_2[7]~input_o\,
	datac => \data_1[7]~input_o\,
	datad => \data_1[6]~input_o\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~0_combout\);

-- Location: LCCOMB_X66_Y72_N20
\Comparateur_A_inf_B|bit_a7_eq_b7|eq~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\ = \data_1[7]~input_o\ $ (\data_2[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_1[7]~input_o\,
	datad => \data_2[7]~input_o\,
	combout => \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\);

-- Location: LCCOMB_X66_Y72_N0
\Comparateur_A_inf_B|out_a_inf_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Comparateur_A_inf_B|out_a_inf_b~6_combout\ = (\Comparateur_A_inf_B|out_a_inf_b~0_combout\) # ((!\Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\ & (\Comparateur_A_inf_B|out_a_inf_b~5_combout\ & !\Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\,
	datab => \Comparateur_A_inf_B|out_a_inf_b~5_combout\,
	datac => \Comparateur_A_inf_B|out_a_inf_b~0_combout\,
	datad => \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\,
	combout => \Comparateur_A_inf_B|out_a_inf_b~6_combout\);

-- Location: LCCOMB_X61_Y72_N0
\Multiplexeur|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux7~2_combout\ = (\Multiplexeur|Mux7~0_combout\ & ((\Comparateur_A_inf_B|out_a_inf_b~6_combout\) # ((!\selecteur_alu[2]~input_o\ & \Multiplexeur|Mux7~1_combout\)))) # (!\Multiplexeur|Mux7~0_combout\ & (!\selecteur_alu[2]~input_o\ & 
-- (\Multiplexeur|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexeur|Mux7~0_combout\,
	datab => \selecteur_alu[2]~input_o\,
	datac => \Multiplexeur|Mux7~1_combout\,
	datad => \Comparateur_A_inf_B|out_a_inf_b~6_combout\,
	combout => \Multiplexeur|Mux7~2_combout\);

-- Location: LCCOMB_X61_Y72_N22
\ALU_addition|bit1|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit1|o_CarryOut~0_combout\ = (\data_1[1]~input_o\ & ((\data_2[1]~input_o\) # ((\data_2[0]~input_o\ & \data_1[0]~input_o\)))) # (!\data_1[1]~input_o\ & (\data_2[0]~input_o\ & (\data_1[0]~input_o\ & \data_2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[0]~input_o\,
	datab => \data_1[0]~input_o\,
	datac => \data_1[1]~input_o\,
	datad => \data_2[1]~input_o\,
	combout => \ALU_addition|bit1|o_CarryOut~0_combout\);

-- Location: LCCOMB_X61_Y72_N8
\ALU_addition|bit2|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit2|o_CarryOut~0_combout\ = (\ALU_addition|bit1|o_CarryOut~0_combout\ & ((\data_2[2]~input_o\) # (\data_1[2]~input_o\))) # (!\ALU_addition|bit1|o_CarryOut~0_combout\ & (\data_2[2]~input_o\ & \data_1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_addition|bit1|o_CarryOut~0_combout\,
	datab => \data_2[2]~input_o\,
	datac => \data_1[2]~input_o\,
	combout => \ALU_addition|bit2|o_CarryOut~0_combout\);

-- Location: LCCOMB_X65_Y72_N16
\ALU_addition|bit3|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit3|o_CarryOut~0_combout\ = (\ALU_addition|bit2|o_CarryOut~0_combout\ & ((\data_1[3]~input_o\) # (\data_2[3]~input_o\))) # (!\ALU_addition|bit2|o_CarryOut~0_combout\ & (\data_1[3]~input_o\ & \data_2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_addition|bit2|o_CarryOut~0_combout\,
	datac => \data_1[3]~input_o\,
	datad => \data_2[3]~input_o\,
	combout => \ALU_addition|bit3|o_CarryOut~0_combout\);

-- Location: LCCOMB_X65_Y72_N2
\ALU_addition|bit4|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit4|o_CarryOut~0_combout\ = (\ALU_addition|bit3|o_CarryOut~0_combout\ & ((\data_1[4]~input_o\) # (\data_2[4]~input_o\))) # (!\ALU_addition|bit3|o_CarryOut~0_combout\ & (\data_1[4]~input_o\ & \data_2[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_addition|bit3|o_CarryOut~0_combout\,
	datac => \data_1[4]~input_o\,
	datad => \data_2[4]~input_o\,
	combout => \ALU_addition|bit4|o_CarryOut~0_combout\);

-- Location: LCCOMB_X66_Y72_N12
\ALU_addition|bit7|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit7|o_Sum~0_combout\ = \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\ $ (((\data_2[5]~input_o\ & ((\ALU_addition|bit4|o_CarryOut~0_combout\) # (\data_1[5]~input_o\))) # (!\data_2[5]~input_o\ & (\ALU_addition|bit4|o_CarryOut~0_combout\ & 
-- \data_1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[5]~input_o\,
	datab => \ALU_addition|bit4|o_CarryOut~0_combout\,
	datac => \data_1[5]~input_o\,
	datad => \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\,
	combout => \ALU_addition|bit7|o_Sum~0_combout\);

-- Location: LCCOMB_X66_Y72_N22
\ALU_addition|bit7|o_Sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit7|o_Sum~1_combout\ = (\data_2[6]~input_o\ & ((\data_1[6]~input_o\ & ((!\Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\))) # (!\data_1[6]~input_o\ & (\ALU_addition|bit7|o_Sum~0_combout\)))) # (!\data_2[6]~input_o\ & ((\data_1[6]~input_o\ & 
-- (\ALU_addition|bit7|o_Sum~0_combout\)) # (!\data_1[6]~input_o\ & ((\Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_addition|bit7|o_Sum~0_combout\,
	datab => \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\,
	datac => \data_2[6]~input_o\,
	datad => \data_1[6]~input_o\,
	combout => \ALU_addition|bit7|o_Sum~1_combout\);

-- Location: LCCOMB_X61_Y72_N10
\ALU_soustraction|bit1|o_CarryOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit1|o_CarryOut~combout\ = (\data_1[1]~input_o\ & (((\data_1[0]~input_o\) # (!\data_2[1]~input_o\)) # (!\data_2[0]~input_o\))) # (!\data_1[1]~input_o\ & (!\data_2[1]~input_o\ & ((\data_1[0]~input_o\) # (!\data_2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[0]~input_o\,
	datab => \data_1[0]~input_o\,
	datac => \data_1[1]~input_o\,
	datad => \data_2[1]~input_o\,
	combout => \ALU_soustraction|bit1|o_CarryOut~combout\);

-- Location: LCCOMB_X61_Y72_N4
\ALU_soustraction|bit2|o_CarryOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit2|o_CarryOut~combout\ = (\data_2[2]~input_o\ & (\data_1[2]~input_o\ & \ALU_soustraction|bit1|o_CarryOut~combout\)) # (!\data_2[2]~input_o\ & ((\data_1[2]~input_o\) # (\ALU_soustraction|bit1|o_CarryOut~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_2[2]~input_o\,
	datac => \data_1[2]~input_o\,
	datad => \ALU_soustraction|bit1|o_CarryOut~combout\,
	combout => \ALU_soustraction|bit2|o_CarryOut~combout\);

-- Location: LCCOMB_X65_Y72_N28
\ALU_soustraction|bit3|o_CarryOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit3|o_CarryOut~combout\ = (\ALU_soustraction|bit2|o_CarryOut~combout\ & ((\data_1[3]~input_o\) # (!\data_2[3]~input_o\))) # (!\ALU_soustraction|bit2|o_CarryOut~combout\ & (\data_1[3]~input_o\ & !\data_2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_soustraction|bit2|o_CarryOut~combout\,
	datac => \data_1[3]~input_o\,
	datad => \data_2[3]~input_o\,
	combout => \ALU_soustraction|bit3|o_CarryOut~combout\);

-- Location: LCCOMB_X65_Y72_N14
\ALU_soustraction|bit4|o_CarryOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit4|o_CarryOut~combout\ = (\ALU_soustraction|bit3|o_CarryOut~combout\ & ((\data_1[4]~input_o\) # (!\data_2[4]~input_o\))) # (!\ALU_soustraction|bit3|o_CarryOut~combout\ & (\data_1[4]~input_o\ & !\data_2[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_soustraction|bit3|o_CarryOut~combout\,
	datac => \data_1[4]~input_o\,
	datad => \data_2[4]~input_o\,
	combout => \ALU_soustraction|bit4|o_CarryOut~combout\);

-- Location: LCCOMB_X66_Y72_N18
\ALU_soustraction|bit6|int_CarryOut1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit6|int_CarryOut1~combout\ = \data_1[6]~input_o\ $ (((\data_2[5]~input_o\ & (\ALU_soustraction|bit4|o_CarryOut~combout\ & \data_1[5]~input_o\)) # (!\data_2[5]~input_o\ & ((\ALU_soustraction|bit4|o_CarryOut~combout\) # 
-- (\data_1[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[5]~input_o\,
	datab => \ALU_soustraction|bit4|o_CarryOut~combout\,
	datac => \data_1[5]~input_o\,
	datad => \data_1[6]~input_o\,
	combout => \ALU_soustraction|bit6|int_CarryOut1~combout\);

-- Location: LCCOMB_X66_Y72_N4
\ALU_soustraction|bit6|int_CarryOut3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit6|int_CarryOut3~combout\ = (\data_1[6]~input_o\ & ((\data_2[5]~input_o\ & (\ALU_soustraction|bit4|o_CarryOut~combout\ & \data_1[5]~input_o\)) # (!\data_2[5]~input_o\ & ((\ALU_soustraction|bit4|o_CarryOut~combout\) # 
-- (\data_1[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[5]~input_o\,
	datab => \ALU_soustraction|bit4|o_CarryOut~combout\,
	datac => \data_1[5]~input_o\,
	datad => \data_1[6]~input_o\,
	combout => \ALU_soustraction|bit6|int_CarryOut3~combout\);

-- Location: LCCOMB_X66_Y72_N30
\ALU_soustraction|bit7|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_soustraction|bit7|o_Sum~combout\ = \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\ $ (((\ALU_soustraction|bit6|int_CarryOut3~combout\) # ((!\data_2[6]~input_o\ & \ALU_soustraction|bit6|int_CarryOut1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[6]~input_o\,
	datab => \ALU_soustraction|bit6|int_CarryOut1~combout\,
	datac => \ALU_soustraction|bit6|int_CarryOut3~combout\,
	datad => \Comparateur_A_inf_B|bit_a7_eq_b7|eq~0_combout\,
	combout => \ALU_soustraction|bit7|o_Sum~combout\);

-- Location: LCCOMB_X66_Y72_N8
\Multiplexeur|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux0~0_combout\ = (\selecteur_alu[1]~input_o\ & (((\selecteur_alu[0]~input_o\)))) # (!\selecteur_alu[1]~input_o\ & ((\selecteur_alu[0]~input_o\ & ((!\ALU_soustraction|bit7|o_Sum~combout\))) # (!\selecteur_alu[0]~input_o\ & 
-- (\ALU_addition|bit7|o_Sum~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_addition|bit7|o_Sum~1_combout\,
	datab => \selecteur_alu[1]~input_o\,
	datac => \ALU_soustraction|bit7|o_Sum~combout\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y72_N10
\Multiplexeur|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux0~1_combout\ = (\Multiplexeur|Mux0~0_combout\ & ((\data_2[7]~input_o\) # ((\data_1[7]~input_o\) # (!\selecteur_alu[1]~input_o\)))) # (!\Multiplexeur|Mux0~0_combout\ & (\data_2[7]~input_o\ & (\data_1[7]~input_o\ & 
-- \selecteur_alu[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexeur|Mux0~0_combout\,
	datab => \data_2[7]~input_o\,
	datac => \data_1[7]~input_o\,
	datad => \selecteur_alu[1]~input_o\,
	combout => \Multiplexeur|Mux0~1_combout\);

-- Location: LCCOMB_X65_Y72_N20
\Multiplexeur|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux2~0_combout\ = (\selecteur_alu[1]~input_o\ & (((\selecteur_alu[0]~input_o\)))) # (!\selecteur_alu[1]~input_o\ & ((\selecteur_alu[0]~input_o\ & ((!\ALU_soustraction|bit4|o_CarryOut~combout\))) # (!\selecteur_alu[0]~input_o\ & 
-- (\ALU_addition|bit4|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecteur_alu[1]~input_o\,
	datab => \ALU_addition|bit4|o_CarryOut~0_combout\,
	datac => \ALU_soustraction|bit4|o_CarryOut~combout\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y72_N22
\Multiplexeur|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux2~1_combout\ = (\selecteur_alu[1]~input_o\ & ((\data_2[5]~input_o\ & ((\Multiplexeur|Mux2~0_combout\) # (\data_1[5]~input_o\))) # (!\data_2[5]~input_o\ & (\Multiplexeur|Mux2~0_combout\ & \data_1[5]~input_o\)))) # 
-- (!\selecteur_alu[1]~input_o\ & (\data_2[5]~input_o\ $ (\Multiplexeur|Mux2~0_combout\ $ (\data_1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[5]~input_o\,
	datab => \Multiplexeur|Mux2~0_combout\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \data_1[5]~input_o\,
	combout => \Multiplexeur|Mux2~1_combout\);

-- Location: LCCOMB_X66_Y72_N28
\Multiplexeur|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux1~2_combout\ = (\selecteur_alu[0]~input_o\ & (\ALU_soustraction|bit6|int_CarryOut1~combout\ $ ((\data_2[6]~input_o\)))) # (!\selecteur_alu[0]~input_o\ & (((\data_2[6]~input_o\ & \data_1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_soustraction|bit6|int_CarryOut1~combout\,
	datab => \selecteur_alu[0]~input_o\,
	datac => \data_2[6]~input_o\,
	datad => \data_1[6]~input_o\,
	combout => \Multiplexeur|Mux1~2_combout\);

-- Location: LCCOMB_X66_Y72_N14
\ALU_addition|bit6|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_addition|bit6|o_Sum~combout\ = \Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\ $ (((\data_2[5]~input_o\ & ((\ALU_addition|bit4|o_CarryOut~0_combout\) # (\data_1[5]~input_o\))) # (!\data_2[5]~input_o\ & (\ALU_addition|bit4|o_CarryOut~0_combout\ & 
-- \data_1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[5]~input_o\,
	datab => \ALU_addition|bit4|o_CarryOut~0_combout\,
	datac => \data_1[5]~input_o\,
	datad => \Comparateur_A_inf_B|bit_a6_eq_b6|eq~0_combout\,
	combout => \ALU_addition|bit6|o_Sum~combout\);

-- Location: LCCOMB_X66_Y72_N26
\Multiplexeur|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux1~5_combout\ = (\selecteur_alu[1]~input_o\ & ((\data_2[6]~input_o\) # ((\data_1[6]~input_o\)))) # (!\selecteur_alu[1]~input_o\ & (((\ALU_addition|bit6|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_2[6]~input_o\,
	datab => \selecteur_alu[1]~input_o\,
	datac => \ALU_addition|bit6|o_Sum~combout\,
	datad => \data_1[6]~input_o\,
	combout => \Multiplexeur|Mux1~5_combout\);

-- Location: LCCOMB_X66_Y72_N16
\Multiplexeur|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux1~3_combout\ = (\selecteur_alu[1]~input_o\ & ((\selecteur_alu[0]~input_o\ & ((\Multiplexeur|Mux1~5_combout\))) # (!\selecteur_alu[0]~input_o\ & (\Multiplexeur|Mux1~2_combout\)))) # (!\selecteur_alu[1]~input_o\ & 
-- ((\selecteur_alu[0]~input_o\ & (!\Multiplexeur|Mux1~2_combout\)) # (!\selecteur_alu[0]~input_o\ & ((\Multiplexeur|Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecteur_alu[1]~input_o\,
	datab => \Multiplexeur|Mux1~2_combout\,
	datac => \Multiplexeur|Mux1~5_combout\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux1~3_combout\);

-- Location: LCCOMB_X62_Y72_N8
\signal_zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_zero~0_combout\ = (!\selecteur_alu[2]~input_o\ & ((\Multiplexeur|Mux0~1_combout\) # ((\Multiplexeur|Mux2~1_combout\) # (\Multiplexeur|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexeur|Mux0~1_combout\,
	datab => \selecteur_alu[2]~input_o\,
	datac => \Multiplexeur|Mux2~1_combout\,
	datad => \Multiplexeur|Mux1~3_combout\,
	combout => \signal_zero~0_combout\);

-- Location: LCCOMB_X65_Y72_N4
\Multiplexeur|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux4~0_combout\ = (\selecteur_alu[0]~input_o\ & (((\selecteur_alu[1]~input_o\)) # (!\ALU_soustraction|bit2|o_CarryOut~combout\))) # (!\selecteur_alu[0]~input_o\ & (((!\selecteur_alu[1]~input_o\ & \ALU_addition|bit2|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_soustraction|bit2|o_CarryOut~combout\,
	datab => \selecteur_alu[0]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \ALU_addition|bit2|o_CarryOut~0_combout\,
	combout => \Multiplexeur|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y72_N30
\Multiplexeur|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux4~1_combout\ = (\selecteur_alu[1]~input_o\ & ((\data_1[3]~input_o\ & ((\Multiplexeur|Mux4~0_combout\) # (\data_2[3]~input_o\))) # (!\data_1[3]~input_o\ & (\Multiplexeur|Mux4~0_combout\ & \data_2[3]~input_o\)))) # 
-- (!\selecteur_alu[1]~input_o\ & (\data_1[3]~input_o\ $ (\Multiplexeur|Mux4~0_combout\ $ (\data_2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_1[3]~input_o\,
	datab => \Multiplexeur|Mux4~0_combout\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \data_2[3]~input_o\,
	combout => \Multiplexeur|Mux4~1_combout\);

-- Location: LCCOMB_X61_Y72_N16
\Multiplexeur|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux5~0_combout\ = (\selecteur_alu[0]~input_o\ & (((\selecteur_alu[1]~input_o\) # (!\ALU_soustraction|bit1|o_CarryOut~combout\)))) # (!\selecteur_alu[0]~input_o\ & (\ALU_addition|bit1|o_CarryOut~0_combout\ & (!\selecteur_alu[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_addition|bit1|o_CarryOut~0_combout\,
	datab => \selecteur_alu[0]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \ALU_soustraction|bit1|o_CarryOut~combout\,
	combout => \Multiplexeur|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y72_N18
\Multiplexeur|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux5~1_combout\ = (\selecteur_alu[1]~input_o\ & ((\data_1[2]~input_o\ & ((\data_2[2]~input_o\) # (\Multiplexeur|Mux5~0_combout\))) # (!\data_1[2]~input_o\ & (\data_2[2]~input_o\ & \Multiplexeur|Mux5~0_combout\)))) # 
-- (!\selecteur_alu[1]~input_o\ & (\data_1[2]~input_o\ $ (\data_2[2]~input_o\ $ (\Multiplexeur|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_1[2]~input_o\,
	datab => \data_2[2]~input_o\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \Multiplexeur|Mux5~0_combout\,
	combout => \Multiplexeur|Mux5~1_combout\);

-- Location: LCCOMB_X65_Y72_N0
\Multiplexeur|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux3~0_combout\ = (\selecteur_alu[1]~input_o\ & (((\selecteur_alu[0]~input_o\)))) # (!\selecteur_alu[1]~input_o\ & ((\selecteur_alu[0]~input_o\ & ((!\ALU_soustraction|bit3|o_CarryOut~combout\))) # (!\selecteur_alu[0]~input_o\ & 
-- (\ALU_addition|bit3|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_addition|bit3|o_CarryOut~0_combout\,
	datab => \ALU_soustraction|bit3|o_CarryOut~combout\,
	datac => \selecteur_alu[1]~input_o\,
	datad => \selecteur_alu[0]~input_o\,
	combout => \Multiplexeur|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y72_N18
\Multiplexeur|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux3~1_combout\ = (\selecteur_alu[1]~input_o\ & ((\Multiplexeur|Mux3~0_combout\ & ((\data_1[4]~input_o\) # (\data_2[4]~input_o\))) # (!\Multiplexeur|Mux3~0_combout\ & (\data_1[4]~input_o\ & \data_2[4]~input_o\)))) # 
-- (!\selecteur_alu[1]~input_o\ & (\Multiplexeur|Mux3~0_combout\ $ (\data_1[4]~input_o\ $ (\data_2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selecteur_alu[1]~input_o\,
	datab => \Multiplexeur|Mux3~0_combout\,
	datac => \data_1[4]~input_o\,
	datad => \data_2[4]~input_o\,
	combout => \Multiplexeur|Mux3~1_combout\);

-- Location: LCCOMB_X65_Y72_N24
\signal_zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_zero~1_combout\ = (!\selecteur_alu[2]~input_o\ & ((\Multiplexeur|Mux4~1_combout\) # ((\Multiplexeur|Mux5~1_combout\) # (\Multiplexeur|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexeur|Mux4~1_combout\,
	datab => \selecteur_alu[2]~input_o\,
	datac => \Multiplexeur|Mux5~1_combout\,
	datad => \Multiplexeur|Mux3~1_combout\,
	combout => \signal_zero~1_combout\);

-- Location: LCCOMB_X61_Y72_N28
\signal_zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_zero~2_combout\ = (\Multiplexeur|Mux6~2_combout\) # ((\Multiplexeur|Mux7~2_combout\) # ((\signal_zero~0_combout\) # (\signal_zero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexeur|Mux6~2_combout\,
	datab => \Multiplexeur|Mux7~2_combout\,
	datac => \signal_zero~0_combout\,
	datad => \signal_zero~1_combout\,
	combout => \signal_zero~2_combout\);

-- Location: LCCOMB_X61_Y72_N6
\Multiplexeur|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux5~2_combout\ = (\Multiplexeur|Mux5~1_combout\ & !\selecteur_alu[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Multiplexeur|Mux5~1_combout\,
	datac => \selecteur_alu[2]~input_o\,
	combout => \Multiplexeur|Mux5~2_combout\);

-- Location: LCCOMB_X65_Y72_N26
\Multiplexeur|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux4~2_combout\ = (!\selecteur_alu[2]~input_o\ & \Multiplexeur|Mux4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selecteur_alu[2]~input_o\,
	datac => \Multiplexeur|Mux4~1_combout\,
	combout => \Multiplexeur|Mux4~2_combout\);

-- Location: LCCOMB_X65_Y72_N12
\Multiplexeur|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux3~2_combout\ = (!\selecteur_alu[2]~input_o\ & \Multiplexeur|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selecteur_alu[2]~input_o\,
	datad => \Multiplexeur|Mux3~1_combout\,
	combout => \Multiplexeur|Mux3~2_combout\);

-- Location: LCCOMB_X65_Y72_N6
\Multiplexeur|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux2~2_combout\ = (!\selecteur_alu[2]~input_o\ & \Multiplexeur|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selecteur_alu[2]~input_o\,
	datac => \Multiplexeur|Mux2~1_combout\,
	combout => \Multiplexeur|Mux2~2_combout\);

-- Location: LCCOMB_X62_Y72_N26
\Multiplexeur|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux1~4_combout\ = (!\selecteur_alu[2]~input_o\ & \Multiplexeur|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selecteur_alu[2]~input_o\,
	datad => \Multiplexeur|Mux1~3_combout\,
	combout => \Multiplexeur|Mux1~4_combout\);

-- Location: LCCOMB_X62_Y72_N12
\Multiplexeur|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Multiplexeur|Mux0~2_combout\ = (!\selecteur_alu[2]~input_o\ & \Multiplexeur|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selecteur_alu[2]~input_o\,
	datad => \Multiplexeur|Mux0~1_combout\,
	combout => \Multiplexeur|Mux0~2_combout\);

ww_signal_zero <= \signal_zero~output_o\;

ww_ALU_resultat(0) <= \ALU_resultat[0]~output_o\;

ww_ALU_resultat(1) <= \ALU_resultat[1]~output_o\;

ww_ALU_resultat(2) <= \ALU_resultat[2]~output_o\;

ww_ALU_resultat(3) <= \ALU_resultat[3]~output_o\;

ww_ALU_resultat(4) <= \ALU_resultat[4]~output_o\;

ww_ALU_resultat(5) <= \ALU_resultat[5]~output_o\;

ww_ALU_resultat(6) <= \ALU_resultat[6]~output_o\;

ww_ALU_resultat(7) <= \ALU_resultat[7]~output_o\;
END structure;


