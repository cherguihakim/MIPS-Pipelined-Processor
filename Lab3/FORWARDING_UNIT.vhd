LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FORWARDING_UNIT IS 
PORT(Rs_ID_EX, Rt_ID_EX, Rd_EX_MEM, Rd_MEM_WB : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
     REG_WRITE_EX_MEM, REG_WRITE_MEM_WB : IN STD_LOGIC;
     
     FORWARD_A, FORWARD_B : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
     	  );
END FORWARDING_UNIT;

ARCHITECTURE STRUCT OF FORWARDING_UNIT IS 
SIGNAL Rd_EX_MEM_EZ, Rd_EX_MEM_NEZ, Rd_EQ_Rs_EX_MEM, Rd_EQ_Rt_EX_MEM, Rd_EQ_Rs_MEM_WB, Rd_EQ_Rt_MEM_WB : STD_LOGIC;

COMPONENT five_bit_comparator IS
	PORT( int_a,int_b : in std_logic_vector(4 downto 0); 
	      out_a_sup_b, out_a_eq_b, out_a_inf_b : out std_logic);
END COMPONENT;

BEGIN

first_comp : five_bit_comparator
PORT MAP(int_a => Rd_EX_MEM, int_b => "00000", out_a_eq_b => Rd_EX_MEM_EZ     );

second_comp : five_bit_comparator
PORT MAP(int_a => Rd_EX_MEM, int_b => Rs_ID_EX, out_a_eq_b => Rd_EQ_Rs_EX_MEM     );

third_comp : five_bit_comparator
PORT MAP(int_a => Rd_EX_MEM, int_b => Rt_ID_EX, out_a_eq_b => Rd_EQ_Rt_EX_MEM    );

fourth_comp : five_bit_comparator
PORT MAP(int_a => Rd_MEM_WB, int_b => Rs_ID_EX, out_a_eq_b => Rd_EQ_Rs_MEM_WB    );

fifth_comp : five_bit_comparator
PORT MAP(int_a => Rd_MEM_WB, int_b => Rt_ID_EX, out_a_eq_b => Rd_EQ_Rt_MEM_WB    );

Rd_EX_MEM_NEZ <= NOT(Rd_EX_MEM_EZ);

--Ouput Driver

FORWARD_A(1) <= (REG_WRITE_EX_MEM AND (NOT(REG_WRITE_MEM_WB)) AND Rd_EX_MEM_NEZ AND Rd_EQ_Rs_EX_MEM AND (NOT(Rd_EQ_Rt_EX_MEM)) AND (NOT(Rd_EQ_Rs_MEM_WB)) AND (NOT(Rd_EQ_Rt_MEM_WB))  ) 
             OR (REG_WRITE_EX_MEM AND REG_WRITE_MEM_WB AND Rd_EX_MEM_NEZ AND Rd_EQ_Rs_EX_MEM AND NOT(Rd_EQ_Rt_EX_MEM) AND Rd_EQ_Rs_MEM_WB AND NOT(Rd_EQ_Rt_MEM_WB)    ) 
				 OR (REG_WRITE_EX_MEM AND NOT(REG_WRITE_MEM_WB) AND Rd_EX_MEM_NEZ AND Rd_EQ_Rs_EX_MEM AND Rd_EQ_Rt_EX_MEM AND NOT(Rd_EQ_Rs_MEM_WB) AND NOT(Rd_EQ_Rt_MEM_WB)    );
				 
FORWARD_A(0) <= (NOT(REG_WRITE_EX_MEM) AND REG_WRITE_MEM_WB AND Rd_EX_MEM_NEZ AND NOT(Rd_EQ_Rs_EX_MEM) AND NOT(Rd_EQ_Rt_EX_MEM) AND Rd_EQ_Rs_MEM_WB AND NOT(Rd_EQ_Rt_MEM_WB)    )
             OR (NOT(REG_WRITE_EX_MEM) AND REG_WRITE_MEM_WB AND Rd_EX_MEM_NEZ AND NOT(Rd_EQ_Rs_EX_MEM) AND NOT(Rd_EQ_Rt_EX_MEM) AND Rd_EQ_Rs_MEM_WB AND Rd_EQ_Rt_MEM_WB );
				 
FORWARD_B(1) <= (REG_WRITE_EX_MEM AND NOT(REG_WRITE_MEM_WB) AND Rd_EX_MEM_NEZ AND NOT(Rd_EQ_Rs_EX_MEM) AND Rd_EQ_Rt_EX_MEM AND NOT(Rd_EQ_Rs_MEM_WB) AND NOT(Rd_EQ_Rt_MEM_WB)  ) 
             OR (REG_WRITE_EX_MEM AND REG_WRITE_MEM_WB AND Rd_EX_MEM_NEZ AND NOT(Rd_EQ_Rs_EX_MEM) AND Rd_EQ_Rt_EX_MEM AND NOT(Rd_EQ_Rs_MEM_WB) AND Rd_EQ_Rt_MEM_WB    ) 
				 OR (REG_WRITE_EX_MEM AND NOT(REG_WRITE_MEM_WB) AND Rd_EX_MEM_NEZ AND Rd_EQ_Rs_EX_MEM AND Rd_EQ_Rt_EX_MEM AND NOT(Rd_EQ_Rs_MEM_WB) AND NOT(Rd_EQ_Rt_MEM_WB)    );
				 
FORWARD_B(0) <= (NOT(REG_WRITE_EX_MEM) AND REG_WRITE_MEM_WB AND Rd_EX_MEM_NEZ AND NOT(Rd_EQ_Rs_EX_MEM) AND NOT(Rd_EQ_Rt_EX_MEM) AND NOT(Rd_EQ_Rs_MEM_WB) AND Rd_EQ_Rt_MEM_WB    )
             OR (NOT(REG_WRITE_EX_MEM) AND REG_WRITE_MEM_WB AND Rd_EX_MEM_NEZ AND NOT(Rd_EQ_Rs_EX_MEM) AND NOT(Rd_EQ_Rt_EX_MEM) AND Rd_EQ_Rs_MEM_WB AND Rd_EQ_Rt_MEM_WB );
				 
END STRUCT;





































