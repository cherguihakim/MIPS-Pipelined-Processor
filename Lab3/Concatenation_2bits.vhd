LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Concatenation_2bits IS
PORT (entree_0, entree_1 : IN STD_LOGIC;
      sortie : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)   );
END Concatenation_2bits;

ARCHITECTURE STRUCT OF Concatenation_2bits IS 

BEGIN 

sortie <= entree_1 & entree_0;

END STRUCT;



