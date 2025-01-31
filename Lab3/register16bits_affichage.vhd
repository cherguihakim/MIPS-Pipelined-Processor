LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register16bits_affichage IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(15 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(15 downto 0));
END register16bits_affichage;

ARCHITECTURE rtl OF register16bits_affichage IS
	SIGNAL int_Value, int_notValue : STD_LOGIC_VECTOR(15 downto 0);

	COMPONENT enARdFF_2
		PORT(
			i_resetBar	: IN	STD_LOGIC;
			i_d		: IN	STD_LOGIC;
			i_enable	: IN	STD_LOGIC;
			i_clock		: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC);
	END COMPONENT;

BEGIN

bit15: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(15), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(15),
	          o_qBar => int_notValue(15));

bit14: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(14), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(14),
	          o_qBar => int_notValue(14));
				 
bit13: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(13), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(13),
	          o_qBar => int_notValue(13));
				 
				 
bit12: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(12), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(12),
	          o_qBar => int_notValue(12));
				 
bit11: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(11), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(11),
	          o_qBar => int_notValue(11));
				 
bit10: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(10), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(10),
	          o_qBar => int_notValue(10));
				 
				 
bit9: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(9), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(9),
	          o_qBar => int_notValue(9));
				 
				 
bit8: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(8), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(8),
	          o_qBar => int_notValue(8));


bit7: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(7), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(7),
	          o_qBar => int_notValue(7));

bit6: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(6),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(6),
	          o_qBar => int_notValue(6));

bit5: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(5), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(5),
	          o_qBar => int_notValue(5));

bit4: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(4), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(4),
	          o_qBar => int_notValue(4));

bit3: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(3),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(3),
	          o_qBar => int_notValue(3));

bit2: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(2), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(2),
	          o_qBar => int_notValue(2));
bit1: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(1),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(1),
	          o_qBar => int_notValue(1));

bit0: enARdFF_2
	PORT MAP (i_resetBar => i_resetBar,
			  i_d => i_Value(0), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(0),
	          o_qBar => int_notValue(0));

	-- Output Driver
	o_Value		<= int_Value;

END rtl;
