LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY one_bit_comparator_sup IS
	PORT( a,b : in std_logic;
	      sup : out std_logic);
end one_bit_comparator_sup;

architecture rtl of one_bit_comparator_sup is 
BEGIN 
sup <= b and not(a);
end rtl;