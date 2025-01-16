LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY HAZARD_UNIT IS
PORT(MEM_READ_ID_EX : IN STD_LOGIC;
     Rs_IF_ID, Rt_IF_ID, Rt_ID_EX : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
     PC_WRITE, WRITE_IF_ID, SEL_MUX_ID : OUT STD_LOGIC	  );
	  
END HAZARD_UNIT;

ARCHITECTURE STRUCT OF HAZARD_UNIT IS 
SIGNAL Rt_EQ_Rs, Rt_EQ_Rt, Rt_EZ, Rt_NEZ : STD_LOGIC;


COMPONENT five_bit_comparator IS
	PORT( int_a,int_b : in std_logic_vector(4 downto 0); 
	      out_a_sup_b, out_a_eq_b, out_a_inf_b : out std_logic);
END COMPONENT;


BEGIN 

first_comp : five_bit_comparator
PORT MAP(int_a => Rt_ID_EX, int_b => Rs_IF_ID, out_a_eq_b =>  Rt_EQ_Rs    );

second_comp : five_bit_comparator
PORT MAP(int_a => Rt_ID_EX, int_b => Rt_IF_ID, out_a_eq_b => Rt_EQ_Rt     );

third_comp : five_bit_comparator
PORT MAP(int_a => Rt_ID_EX, int_b => "00000", out_a_eq_b => Rt_EZ     );

Rt_NEZ <= Rt_EZ;


PC_WRITE <= NOT( (MEM_READ_ID_EX AND Rt_NEZ AND Rt_EQ_Rs AND NOT(Rt_EQ_Rt)   ) OR (MEM_READ_ID_EX AND Rt_NEZ AND NOT(Rt_EQ_Rs) AND Rt_EQ_Rt ) OR (MEM_READ_ID_EX AND Rt_NEZ AND Rt_EQ_Rs AND Rt_EQ_Rt    )     );

WRITE_IF_ID <= NOT( (MEM_READ_ID_EX AND Rt_NEZ AND Rt_EQ_Rs AND NOT(Rt_EQ_Rt)   ) OR (MEM_READ_ID_EX AND Rt_NEZ AND NOT(Rt_EQ_Rs) AND Rt_EQ_Rt ) OR (MEM_READ_ID_EX AND Rt_NEZ AND Rt_EQ_Rs AND Rt_EQ_Rt    )     );

SEL_MUX_ID <=  (MEM_READ_ID_EX AND Rt_NEZ AND Rt_EQ_Rs AND NOT(Rt_EQ_Rt) ) OR (MEM_READ_ID_EX AND Rt_NEZ AND NOT(Rt_EQ_Rs) AND Rt_EQ_Rt ) OR (MEM_READ_ID_EX AND Rt_NEZ AND Rt_EQ_Rs AND Rt_EQ_Rt ) ;

END STRUCT;