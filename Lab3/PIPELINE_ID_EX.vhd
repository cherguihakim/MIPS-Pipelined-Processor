LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PIPELINE_ID_EX IS 
PORT(clock, reset_bar : IN STD_LOGIC;
     ALU_SRC, REG_DST, MEM_TO_REG, REG_WRITE, MEM_READ, MEM_WRITE, BRANCH, ALU_OP_1, ALU_OP_0, JUMP : IN STD_LOGIC;
     read_data1, read_data2, sign_extended : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	  Instruction_25_21, Instruction_20_16, Instruction_15_11 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	  Instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	  
	  ALU_SRC_ID_EX, REG_DST_ID_EX, MEM_TO_REG_ID_EX, REG_WRITE_ID_EX, MEM_READ_ID_EX, MEM_WRITE_ID_EX, BRANCH_ID_EX, ALU_OP_1_ID_EX, ALU_OP_0_ID_EX, JUMP_ID_EX : OUT STD_LOGIC;
	  read_data1_ID_EX, read_data2_ID_EX, sign_extended_ID_EX : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	  Instruction_25_21_ID_EX, Instruction_20_16_ID_EX, Instruction_15_11_ID_EX : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	  Instruction_31_0_ID_EX : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
     	  );
END PIPELINE_ID_EX;

ARCHITECTURE STRUCT OF PIPELINE_ID_EX IS
SIGNAL int_ALU_SRC, int_REG_DST, int_MEM_TO_REG, int_REG_WRITE, int_MEM_READ, int_MEM_WRITE, int_BRANCH, int_ALU_OP_1, int_ALU_OP_0, int_JUMP : STD_LOGIC;
SIGNAL int_read_data1, int_read_data2, int_sign_extended : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL int_Instruction_25_21, int_Instruction_20_16, int_Instruction_15_11 : STD_LOGIC_VECTOR(4 DOWNTO 0); 
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

PIPE_ALU_SRC : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => ALU_SRC, i_enable => '1', i_clock => clock, o_q => int_ALU_SRC         );

PIPE_REG_DST : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => REG_DST, i_enable => '1', i_clock => clock, o_q => int_REG_DST         );

PIPE_MEM_TO_REG : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => MEM_TO_REG, i_enable => '1', i_clock => clock, o_q => int_MEM_TO_REG         );

PIPE_REG_WRITE : enARdFF_2 
PORT MAP(i_resetBar => reset_bar, i_d => REG_WRITE, i_enable => '1', i_clock => clock, o_q => int_REG_WRITE         );

PIPE_MEM_READ : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => MEM_READ, i_enable => '1', i_clock => clock, o_q => int_MEM_READ         );

PIPE_MEM_WRITE : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => MEM_WRITE, i_enable => '1', i_clock => clock, o_q => int_MEM_WRITE         );

PIPE_BRANCH : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => BRANCH, i_enable => '1', i_clock => clock, o_q => int_BRANCH         );

PIPE_ALU_OP_1 : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => ALU_OP_1, i_enable => '1', i_clock => clock, o_q => int_ALU_OP_1         );

PIPE_ALU_OP_0 : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => ALU_OP_0, i_enable => '1', i_clock => clock, o_q => int_ALU_OP_0         );

PIPE_JUMP : enARdFF_2
PORT MAP(i_resetBar => reset_bar, i_d => JUMP, i_enable => '1', i_clock => clock, o_q => int_JUMP         );

--Pipeline pour les registres de 8 bits

PIPE_read_data_1 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => read_data1, o_Value => int_read_data1   );

PIPE_read_data_2 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => read_data2, o_Value => int_read_data2   );

PIPE_sign_extended : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => sign_extended, o_Value => int_sign_extended   );

-- Pipeline pour les registres rs, rt et rd 

PIPE_Rs : register5bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => Instruction_25_21, o_Value => int_Instruction_25_21   );

PIPE_Rt : register5bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => Instruction_20_16, o_Value => int_Instruction_20_16   );

PIPE_Rd : register5bits_affichage
PORT MAP(i_resetBar => reset_bar, i_clock => clock, i_load => '1', i_Value => Instruction_15_11, o_Value => int_Instruction_15_11   );

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


--Output driver 

ALU_SRC_ID_EX <= int_ALU_SRC;

REG_DST_ID_EX <= int_REG_DST;

MEM_TO_REG_ID_EX <= int_MEM_TO_REG;

REG_WRITE_ID_EX <= int_REG_WRITE;

MEM_READ_ID_EX <= int_MEM_READ;

MEM_WRITE_ID_EX <= int_MEM_WRITE;

BRANCH_ID_EX <= int_BRANCH;

ALU_OP_1_ID_EX <= int_ALU_OP_1;

ALU_OP_0_ID_EX <= int_ALU_OP_0;

JUMP_ID_EX <= int_JUMP;

read_data1_ID_EX <= int_read_data1;

read_data2_ID_EX <= int_read_data2;

sign_extended_ID_EX <= int_sign_extended;

Instruction_25_21_ID_EX <= int_Instruction_25_21;

Instruction_20_16_ID_EX <= int_Instruction_20_16;

Instruction_15_11_ID_EX <= int_Instruction_15_11;

Instruction_31_0_ID_EX <= int_Instruction_out_31_16 & int_Instruction_out_15_0;


END STRUCT;










 