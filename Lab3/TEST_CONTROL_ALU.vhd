LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TEST_CONTROL_ALU IS 
PORT (opcode, code_fonction : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      data_one, data_two : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		ZERO : OUT STD_LOGIC;
      alu_resultat : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      test_alu_op : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      test_selecteur : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)		);
END TEST_CONTROL_ALU;

ARCHITECTURE STRUCT OF TEST_CONTROL_ALU IS 
SIGNAL int_alu_op1, int_alu_op0, int_signal_zero : STD_LOGIC;
SIGNAL int_selecteur_alu : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL int_resultat_alu : STD_LOGIC_VECTOR(7 DOWNTO 0);



COMPONENT ALU_8BITS IS 
PORT (data_1, data_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      selecteur_alu : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	   signal_zero : OUT STD_LOGIC;
	   ALU_resultat : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	

   );
END COMPONENT;


COMPONENT ALU_CONTROL IS 
PORT(ALU_OP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
     FUNCTION_CODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
     SEL_ALU : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)   );
END COMPONENT;


COMPONENT CONTROL_UNIT IS 
PORT(opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
     RegDst, ALUSRC, MemtoReg, RegWrite, MemRead, MemWrite, Branch, AluOp1, AluOp0, Jump : OUT STD_LOGIC    );
END COMPONENT;


BEGIN 

unite_controle : CONTROL_UNIT
PORT MAP (opcode => opcode, AluOp1 => int_alu_op1, AluOp0 => int_alu_op0     );

controle_alu : ALU_CONTROL
PORT MAP(ALU_OP(1) => int_alu_op1, ALU_OP(0) => int_alu_op0, FUNCTION_CODE => code_fonction, 
         SEL_ALU(2) => int_selecteur_alu(2), SEL_ALU(1) => int_selecteur_alu(1), SEL_ALU(0) => int_selecteur_alu(0) );

alu : ALU_8BITS
PORT MAP (data_1 => data_one, data_2 => data_two, selecteur_alu => int_selecteur_alu, signal_zero => int_signal_zero, ALU_resultat => int_resultat_alu     );


ZERO <= int_signal_zero;

alu_resultat <= int_resultat_alu;

test_alu_op(1) <= int_alu_op1;

test_alu_op(0) <= int_alu_op0;

test_selecteur <= int_selecteur_alu;


END STRUCT;



























