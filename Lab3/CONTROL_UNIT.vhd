LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CONTROL_UNIT IS 
PORT(opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
     RegDst, ALUSRC, MemtoReg, RegWrite, MemRead, MemWrite, Branch, AluOp1, AluOp0, Jump : OUT STD_LOGIC    );
END CONTROL_UNIT;

ARCHITECTURE STRUCT OF CONTROL_UNIT IS 

SIGNAL opcode_arithmetique, opcode_lw, opcode_sw, opcode_beq, opcode_jump : STD_LOGIC;

BEGIN 
--Signaux pour faciliter le code

opcode_arithmetique <= (NOT(opcode(5))) AND (NOT(opcode(4))) AND (NOT(opcode(3))) AND (NOT(opcode(2))) AND (NOT(opcode(1))) AND (NOT(opcode(0)));

opcode_lw <= (opcode(5)) AND (NOT(opcode(4))) AND (NOT(opcode(3))) AND (NOT(opcode(2))) AND (opcode(1)) AND (opcode(0));

opcode_sw <= (opcode(5)) AND (NOT(opcode(4))) AND (opcode(3)) AND (NOT(opcode(2))) AND (opcode(1)) AND (opcode(0));

opcode_beq <= (NOT(opcode(5))) AND (NOT(opcode(4))) AND (NOT(opcode(3))) AND (opcode(2)) AND (NOT(opcode(1))) AND (NOT(opcode(0)));

opcode_jump <= (NOT(opcode(5))) AND (NOT(opcode(4))) AND (NOT(opcode(3))) AND (NOT(opcode(2))) AND (opcode(1)) AND (NOT(opcode(0)));


--Output Driver 

RegDst <= opcode_arithmetique;

ALUSRC <= opcode_lw OR opcode_sw;

MemtoReg <= opcode_lw;
 
RegWrite <= opcode_arithmetique OR opcode_lw;
 
MemRead <= opcode_lw;
 
MemWrite <= opcode_sw; 

Branch <= opcode_beq;

AluOp1 <= opcode_arithmetique;

AluOp0 <= opcode_beq;

Jump <= opcode_jump;

END STRUCT;







