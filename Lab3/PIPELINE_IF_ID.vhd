LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PIPELINE_IF_ID IS 
PORT(clock, reset_bar, flush, IF_ID_WRITE : IN STD_LOGIC;
	  PC_plus_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
     Instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
     PC_plus_1_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
     Instruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)	  

);
END PIPELINE_IF_ID;

ARCHITECTURE STRUCT OF PIPELINE_IF_ID IS 
SIGNAL int_PC_plus_1_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL int_Instruction_out_31_16, int_Instruction_out_15_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);


COMPONENT register16bits_affichage_with_clear IS
	PORT(
		i_resetBar, i_load, i_clear	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(15 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(15 downto 0));
END COMPONENT;

COMPONENT register8bits_affichage_with_clear IS
	PORT(
		i_resetBar, i_load, i_clear	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;


BEGIN

IF_ID_PC : register8bits_affichage_with_clear
PORT MAP(i_resetBar => reset_bar, i_load => IF_ID_WRITE, i_clear => flush, 
         i_clock => clock, i_Value => PC_plus_1, o_Value => int_PC_plus_1_out      );
			
			
IF_ID_Instruction_31_16 : register16bits_affichage_with_clear
PORT MAP(i_resetBar => reset_bar, i_load => IF_ID_WRITE, i_clear => flush, 
         i_clock => clock, 
			i_Value => Instruction(31) & Instruction(30) & Instruction(29) & Instruction(28) & Instruction(27) & Instruction(26) & Instruction(25) & Instruction(24) & 
			Instruction(23) & Instruction(22) & Instruction(21) & Instruction(20) & Instruction(19) & Instruction(18) & Instruction(17) & Instruction(16), 
			o_Value => int_Instruction_out_31_16      );
			

IF_ID_Instruction_15_0 : register16bits_affichage_with_clear
PORT MAP(i_resetBar => reset_bar, i_load => IF_ID_WRITE, i_clear => flush, 
         i_clock => clock, 
			i_Value => Instruction(15) & Instruction(14) & Instruction(13) & Instruction(12) & Instruction(11) & Instruction(10) & Instruction(9) & Instruction(8) & 
			Instruction(7) & Instruction(6) & Instruction(5) & Instruction(4) & Instruction(3) & Instruction(2) & Instruction(1) & Instruction(0), 
			o_Value => int_Instruction_out_15_0    );
			
			
PC_plus_1_out <= int_PC_plus_1_out;

Instruction_out <= int_Instruction_out_31_16 & int_Instruction_out_15_0;


END STRUCT;













