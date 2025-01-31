LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register8bits_affichage_with_clear IS
	PORT(
		i_resetBar, i_load, i_clear	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(7 downto 0));
END register8bits_affichage_with_clear;

ARCHITECTURE rtl OF register8bits_affichage_with_clear IS
	SIGNAL int_Value, int_notValue : STD_LOGIC_VECTOR(7 downto 0);

	COMPONENT enARdFF_2_with_clear IS
	PORT(
		i_resetBar	: IN	STD_LOGIC;
		clear	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
END COMPONENT;

BEGIN

bit7: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(7), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(7),
	          o_qBar => int_notValue(7));

bit6: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(6),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(6),
	          o_qBar => int_notValue(6));

bit5: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(5), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(5),
	          o_qBar => int_notValue(5));

bit4: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(4), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(4),
	          o_qBar => int_notValue(4));

bit3: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(3),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(3),
	          o_qBar => int_notValue(3));

bit2: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(2), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(2),
	          o_qBar => int_notValue(2));
				 
bit1: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(1),
			  i_enable => i_load, 
			  i_clock => i_clock,
			  o_q => int_Value(1),
	          o_qBar => int_notValue(1));

bit0: enARdFF_2_with_clear
	PORT MAP (i_resetBar => i_resetBar,
	        clear => i_clear,
			  i_d => i_Value(0), 
			  i_enable => i_load,
			  i_clock => i_clock,
			  o_q => int_Value(0),
	          o_qBar => int_notValue(0));

	-- Output Driver
	o_Value		<= int_Value;

END rtl;
