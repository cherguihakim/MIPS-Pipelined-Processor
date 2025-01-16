library ieee;
use ieee.std_logic_1164.all;

ENTITY additionneur_soustracteur_8bits IS 
PORT (in_a : IN STD_LOGIC_VECTOR(7 downto 0);
      in_b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		control_addbar_sub : IN STD_LOGIC;
		out_additionneur_soustracteur : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		debordement,c_out :OUT  STD_LOGIC
		);
END additionneur_soustracteur_8bits;

ARCHITECTURE STRUCT OF additionneur_soustracteur_8bits IS 
SIGNAL out_xor : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL out_carry : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL resultat : STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT oneBitAdder IS 
PORT(
		i_CarryIn		: IN	STD_LOGIC;
		i_Ai, i_Bi		: IN	STD_LOGIC;
		o_Sum, o_CarryOut	: OUT	STD_LOGIC);
END COMPONENT;

BEGIN 
out_xor(0)<= in_b(0) xor control_addbar_sub;
out_xor(1)<= in_b(1) xor control_addbar_sub;
out_xor(2)<= in_b(2) xor control_addbar_sub;
out_xor(3)<= in_b(3) xor control_addbar_sub;
out_xor(4)<= in_b(4) xor control_addbar_sub;
out_xor(5)<= in_b(5) xor control_addbar_sub;
out_xor(6)<= in_b(6) xor control_addbar_sub;
out_xor(7)<= in_b(7) xor control_addbar_sub;

bit0: oneBitAdder
PORT MAP(i_carryIn => control_addbar_sub,
         i_Ai => in_a(0),
			i_Bi => out_xor(0),
			o_sum => resultat(0),
			o_carryOut => out_carry(0)
			);

bit1: oneBitAdder
PORT MAP(i_carryIn => out_carry(0),
         i_Ai => in_a(1),
			i_Bi => out_xor(1),
			o_sum => resultat(1),
			o_carryOut => out_carry(1)
			);
			
bit2: oneBitAdder
PORT MAP(i_carryIn => out_carry(1),
         i_Ai => in_a(2),
			i_Bi => out_xor(2),
			o_sum => resultat(2),
			o_carryOut => out_carry(2)
			);
			
bit3: oneBitAdder
PORT MAP(i_carryIn => out_carry(2),
         i_Ai => in_a(3),
			i_Bi => out_xor(3),
			o_sum => resultat(3),
			o_carryOut => out_carry(3)
			);
			
bit4: oneBitAdder
PORT MAP(i_carryIn => out_carry(3),
         i_Ai => in_a(4),
			i_Bi => out_xor(4),
			o_sum => resultat(4),
			o_carryOut => out_carry(4)
			);
			
bit5: oneBitAdder
PORT MAP(i_carryIn => out_carry(4),
         i_Ai => in_a(5),
			i_Bi => out_xor(5),
			o_sum => resultat(5),
			o_carryOut => out_carry(5)
			);
			
bit6: oneBitAdder
PORT MAP(i_carryIn => out_carry(5),
         i_Ai => in_a(6),
			i_Bi => out_xor(6),
			o_sum => resultat(6),
			o_carryOut => out_carry(6)
			);
			
bit7: oneBitAdder
PORT MAP(i_carryIn => out_carry(6),
         i_Ai => in_a(7),
			i_Bi => out_xor(7),
			o_sum => resultat(7),
			o_carryOut => out_carry(7)
			);


			

out_additionneur_soustracteur	<= resultat;
c_out <= out_carry(7);
debordement <= out_carry(7) xor out_carry(6);

END STRUCT;	