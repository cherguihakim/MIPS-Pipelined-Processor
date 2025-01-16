LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PIPELINE_MEM_WB IS 
PORT(clock, reset_bar : IN STD_LOGIC;     
     MEM_TO_REG, REG_WRITE : IN STD_LOGIC;
     ALU_RESULT, READ_DATA_FROM_MEMORY : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
     Instruction_reg_dst : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	  Instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    
     MEM_TO_REG_MEM_WB, REG_WRITE_MEM_WB : OUT STD_LOGIC;
	  ALU_RESULT_MEM_WB, READ_DATA_FROM_MEMORY_MEM_WB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	  Instruction_reg_dst_MEM_WB : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	  Instruction_31_0_EX_MEM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)  
	  );
	  
END PIPELINE_MEM_WB;

ARCHITECTURE STRUCT OF PIPELINE_MEM_WB IS 
SIGNAL int_MEM_TO_REG, int_REG_WRITE : STD_LOGIC;
SIGNAL int_ALU_result, int_read_data_from_mem : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL int_Instruction_reg_dst : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL int_Instruction_out_31_16, int_Instruction_out_15_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);



COMPONENT enARdFF_2 IS
	PORT(
		i_resetBar	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q, o_qBar	: OUT	STD_LOGIC);
END COMPONENT;

COMPONENT register8bits_affichage IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;

COMPONENT register5bits_affichage IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(4 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(4 downto 0));
END COMPONENT;

COMPONENT register16bits_affichage IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(15 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(15 downto 0));
END COMPONENT;


BEGIN 

PIPE_MEM_TO_REG : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => MEM_TO_REG, i_enable => '1', i_clock => clock, o_q => int_MEM_TO_REG         );

PIPE_REG_WRITE : enARdFF_2 
PORT MAP(i_resetBar => reset_bar, i_d => REG_WRITE, i_enable => '1', i_clock => clock, o_q => int_REG_WRITE         );

--Registres de 8 bits

PIPE_ALU_RESULT : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => ALU_RESULT, o_Value => int_ALU_result   );

PIPE_read_data_from_memory : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => READ_DATA_FROM_MEMORY, o_Value => int_read_data_from_mem   );

--Registre de 5 bits 

PIPE_Rd : register5bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => Instruction_reg_dst, o_Value => int_Instruction_reg_dst   );

--Pipeline pour l instruction complete 

PIPE_INSTRUCTION_31_16 : register16bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => '1', 
         i_clock => clock, 
			i_Value => Instruction(31) & Instruction(30) & Instruction(29) & Instruction(28) & Instruction(27) & Instruction(26) & Instruction(25) & Instruction(24) & 
			Instruction(23) & Instruction(22) & Instruction(21) & Instruction(20) & Instruction(19) & Instruction(18) & Instruction(17) & Instruction(16), 
			o_Value => int_Instruction_out_31_16      );
			
PIPE_INSTRUCTION_15_0 : register16bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => '1', 
         i_clock => clock, 
			i_Value => Instruction(15) & Instruction(14) & Instruction(13) & Instruction(12) & Instruction(11) & Instruction(10) & Instruction(9) & Instruction(8) & 
			Instruction(7) & Instruction(6) & Instruction(5) & Instruction(4) & Instruction(3) & Instruction(2) & Instruction(1) & Instruction(0), 
			o_Value => int_Instruction_out_15_0    );


--Output Driver

MEM_TO_REG_MEM_WB <= int_MEM_TO_REG;

REG_WRITE_MEM_WB <= int_REG_WRITE;

ALU_RESULT_MEM_WB <= int_ALU_result;

READ_DATA_FROM_MEMORY_MEM_WB <= int_read_data_from_mem;

Instruction_reg_dst_MEM_WB <= int_Instruction_reg_dst;

Instruction_31_0_EX_MEM <= int_Instruction_out_31_16 & int_Instruction_out_15_0;


END STRUCT;

























 