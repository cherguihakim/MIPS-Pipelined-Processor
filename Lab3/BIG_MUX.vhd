LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BIG_MUX IS 
PORT(RegDst, ALUSRC, MemtoReg, RegWrite, MemRead, MemWrite, Branch, AluOp1, AluOp0, Jump : IN STD_LOGIC;
     sel_big_mux : IN STD_LOGIC;
     REG_DST_OUT, ALU_SRC_OUT, MEM_TO_REG_OUT, REG_WRITE_OUT, MEM_READ_OUT, MEM_WRITE_OUT, BRANCH_OUT, ALU_OP1_OUT, ALU_OP0_OUT, JUMP_OUT : OUT STD_LOGIC  );
END BIG_MUX;

ARCHITECTURE STRUCT OF BIG_MUX IS 
SIGNAL int_RegDst, int_ALUSRC, int_MemtoReg, int_RegWrite, int_MemRead, int_MemWrite, int_Branch, int_AluOp1, int_AluOp0, int_Jump : STD_LOGIC; 


COMPONENT mux_2_1bit is 
 port(
    a1      : in  std_logic;
    a2      : in  std_logic;
    sel     : in  std_logic;
    b       : out std_logic
  );
END COMPONENT;


BEGIN 

mux_reg_dst : mux_2_1bit
PORT MAP(a1 => RegDst, a2 =>'0', sel => sel_big_mux, b => int_RegDst );

mux_alu_src : mux_2_1bit
PORT MAP(a1 => ALUSRC, a2 =>'0', sel => sel_big_mux, b => int_ALUSRC );

mux_mem_to_reg : mux_2_1bit
PORT MAP(a1 => MemtoReg, a2 =>'0', sel => sel_big_mux, b => int_MemtoReg );

mux_reg_write : mux_2_1bit
PORT MAP(a1 => RegWrite, a2 =>'0', sel => sel_big_mux, b => int_RegWrite );

mux_mem_read : mux_2_1bit
PORT MAP(a1 => MemRead, a2 =>'0', sel => sel_big_mux, b => int_MemRead );

mux_mem_write : mux_2_1bit
PORT MAP(a1 => MemWrite, a2 =>'0', sel => sel_big_mux, b => int_MemWrite );

mux_branch : mux_2_1bit
PORT MAP(a1 => Branch, a2 =>'0', sel => sel_big_mux, b => int_Branch );

mux_alu_op1 : mux_2_1bit
PORT MAP(a1 => AluOp1, a2 =>'0', sel => sel_big_mux, b => int_AluOp1 );

mux_alu_op0 : mux_2_1bit
PORT MAP(a1 => AluOp0, a2 =>'0', sel => sel_big_mux, b => int_AluOp0 );

mux_jump : mux_2_1bit
PORT MAP(a1 => Jump, a2 =>'0', sel => sel_big_mux, b => int_Jump );


REG_DST_OUT <= int_RegDst;

ALU_SRC_OUT <= int_ALUSRC;

MEM_TO_REG_OUT <= int_MemtoReg;

REG_WRITE_OUT <= int_RegWrite;

MEM_READ_OUT <= int_MemRead;

MEM_WRITE_OUT <=  int_MemWrite;

BRANCH_OUT <= int_Branch;

ALU_OP1_OUT <= int_AluOp1;

ALU_OP0_OUT <= int_AluOp0;

JUMP_OUT <= int_Jump;

END STRUCT;












