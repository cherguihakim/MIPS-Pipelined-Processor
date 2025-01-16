LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY seven_bit_comparator IS
	PORT( int_a,int_b : in std_logic_vector(6 downto 0); 
	      out_a_sup_b, out_a_eq_b, out_a_inf_b : out std_logic);
end seven_bit_comparator;

ARCHITECTURE STRUCT OF seven_bit_comparator IS 
SIGNAL a6_eq_b6, a5_eq_b5, a4_eq_b4, a3_eq_b3, a2_eq_b2, a1_eq_b1, a0_eq_b0, a_eq_b : STD_LOGIC;
SIGNAL b6_sup_a6, b5_sup_a5, b4_sup_a4, b3_sup_a3, b2_sup_a2, b1_sup_a1, b0_sup_a0 : STD_LOGIC;

COMPONENT one_bit_comparator_eq IS 
PORT( a,b : in std_logic;
	      eq : out std_logic);
			
END COMPONENT;

COMPONENT one_bit_comparator_sup IS 
PORT( a,b : in std_logic;
	      sup : out std_logic);
			
END COMPONENT;

BEGIN 

bit_a6_eq_b6: one_bit_comparator_eq
PORT MAP(a => int_a(6), b => int_b(6), eq => a6_eq_b6  );

bit_a5_eq_b5: one_bit_comparator_eq
PORT MAP(a => int_a(5), b => int_b(5), eq => a5_eq_b5  );

bit_a4_eq_b4: one_bit_comparator_eq
PORT MAP(a => int_a(4), b => int_b(4), eq => a4_eq_b4  );

bit_a3_eq_b3: one_bit_comparator_eq
PORT MAP(a => int_a(3), b => int_b(3), eq => a3_eq_b3  );

bit_a2_eq_b2: one_bit_comparator_eq
PORT MAP(a => int_a(2), b => int_b(2), eq => a2_eq_b2  );

bit_a1_eq_b1: one_bit_comparator_eq
PORT MAP(a => int_a(1), b => int_b(1), eq => a1_eq_b1  );

bit_a0_eq_b0: one_bit_comparator_eq
PORT MAP(a => int_a(0), b => int_b(0), eq => a0_eq_b0  );


bit_b6_sup_a6 : one_bit_comparator_sup
PORT MAP(a=> int_a(6), b=> int_b(6), sup => b6_sup_a6 );

bit_b5_sup_a5 : one_bit_comparator_sup
PORT MAP(a=> int_a(5), b=> int_b(5), sup => b5_sup_a5 );

bit_b4_sup_a4 : one_bit_comparator_sup
PORT MAP(a=> int_a(4), b=> int_b(4), sup => b4_sup_a4 );

bit_b3_sup_a3 : one_bit_comparator_sup
PORT MAP(a=> int_a(3), b=> int_b(3), sup => b3_sup_a3 );

bit_b2_sup_a2 : one_bit_comparator_sup
PORT MAP(a=> int_a(2), b=> int_b(2), sup => b2_sup_a2 );

bit_b1_sup_a1 : one_bit_comparator_sup
PORT MAP(a=> int_a(1), b=> int_b(1), sup => b1_sup_a1 );

bit_b0_sup_a0 : one_bit_comparator_sup
PORT MAP(a=> int_a(0), b=> int_b(0), sup => b0_sup_a0 );

a_eq_b <= a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND a2_eq_b2 AND a1_eq_b1 AND a0_eq_b0;

out_a_inf_b <= b6_sup_a6 OR (a6_eq_b6 AND b5_sup_a5) OR (a6_eq_b6 AND a5_eq_b5 AND b4_sup_a4) OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND b3_sup_a3) 
               OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND b2_sup_a2 ) OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND a2_eq_b2 AND b1_sup_a1 )
					OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND a2_eq_b2 AND a1_eq_b1 AND b0_sup_a0   );
					
out_a_sup_b <= NOT(b6_sup_a6 OR (a6_eq_b6 AND b5_sup_a5) OR (a6_eq_b6 AND a5_eq_b5 AND b4_sup_a4) OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND b3_sup_a3) 
               OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND b2_sup_a2 ) OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND a2_eq_b2 AND b1_sup_a1 )
					OR (a6_eq_b6 AND a5_eq_b5 AND a4_eq_b4 AND a3_eq_b3 AND a2_eq_b2 AND a1_eq_b1 AND b0_sup_a0   ) OR a_eq_b  );
					
out_a_eq_b <= a_eq_b;
					
END STRUCT;
                


