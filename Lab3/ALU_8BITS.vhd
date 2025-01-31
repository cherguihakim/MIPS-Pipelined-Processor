library ieee;
use ieee.std_logic_1164.all;

ENTITY ALU_8BITS IS 
PORT (data_1, data_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      selecteur_alu : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	   signal_zero : OUT STD_LOGIC;
	   ALU_resultat : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	

   );
END ENTITY;


ARCHITECTURE STRUCT OF ALU_8BITS IS 
SIGNAL int_addition, int_soustraction, int_and, int_or : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL int_comparaison_data1_inf_data_b : STD_LOGIC;
SIGNAL int_ALU_resultat : STD_LOGIC_VECTOR(7 DOWNTO 0);


COMPONENT additionneur_soustracteur_8bits IS 
PORT (in_a : IN STD_LOGIC_VECTOR(7 downto 0);
      in_b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		control_addbar_sub : IN STD_LOGIC;
		out_additionneur_soustracteur : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		debordement,c_out :OUT  STD_LOGIC
		);
END COMPONENT;

COMPONENT eight_bit_comparator IS
	PORT( int_a,int_b : in std_logic_vector(7 downto 0); 
	      out_a_sup_b, out_a_eq_b, out_a_inf_b : out std_logic);
END COMPONENT;


COMPONENT mux_8_a_1_8bits is 
 port(
    a1      : in  std_logic_vector(7 downto 0);
    a2      : in  std_logic_vector(7 downto 0);
    a3      : in  std_logic_vector(7 downto 0);
    a4      : in  std_logic_vector(7 downto 0);
	 a5      : in  std_logic_vector(7 downto 0);
	 a6      : in  std_logic_vector(7 downto 0);
	 a7      : in  std_logic_vector(7 downto 0);
	 a8      : in  std_logic_vector(7 downto 0);
    sel     : in  std_logic_vector(2 downto 0);
    b       : out std_logic_vector(7 downto 0)
  );
END COMPONENT;


BEGIN 

ALU_addition : additionneur_soustracteur_8bits
PORT MAP (in_a => data_1, in_b => data_2, control_addbar_sub => '0', out_additionneur_soustracteur => int_addition    );


ALU_soustraction : additionneur_soustracteur_8bits
PORT MAP (in_a => data_1, in_b => data_2, control_addbar_sub => '1', out_additionneur_soustracteur => int_soustraction   );


Comparateur_A_inf_B : eight_bit_comparator
PORT MAP (int_a => data_1, int_b => data_2, out_a_inf_b => int_comparaison_data1_inf_data_b     );


Multiplexeur : mux_8_a_1_8bits
PORT MAP (a1 => data_1 AND data_2, a2 => data_1 OR data_2, a3 => int_addition, a4 => "00000000", 
          a5 => "00000000",a6 => "00000000", a7 => int_soustraction, 
			 a8 => '0' & '0' &'0' &'0' &'0' &'0' &'0' & int_comparaison_data1_inf_data_b, sel => selecteur_alu, b => int_ALU_resultat     );
			 

signal_zero <= NOT(int_ALU_resultat(7)) AND NOT(int_ALU_resultat(6)) AND NOT(int_ALU_resultat(5)) AND NOT(int_ALU_resultat(4)) AND 
               NOT(int_ALU_resultat(3)) AND NOT(int_ALU_resultat(2)) AND NOT(int_ALU_resultat(1)) AND NOT(int_ALU_resultat(0)); 
	
ALU_resultat <= int_ALU_resultat;


END STRUCT;	













