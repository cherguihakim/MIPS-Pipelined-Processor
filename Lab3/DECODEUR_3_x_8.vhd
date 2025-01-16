LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DECODEUR_3_x_8 IS 
PORT (entree: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      sortie_0 : OUT STD_LOGIC;
      sortie_1 : OUT STD_LOGIC;
      sortie_2 : OUT STD_LOGIC;
      sortie_3 : OUT STD_LOGIC;
      sortie_4 : OUT STD_LOGIC;
      sortie_5 : OUT STD_LOGIC;
      sortie_6 : OUT STD_LOGIC;
      sortie_7 : OUT STD_LOGIC		

);
END ENTITY;


ARCHITECTURE STRUCT OF DECODEUR_3_x_8 IS 
SIGNAL A,B,C : STD_LOGIC;

BEGIN 

A <= entree(2);
B <= entree(1);
C <= entree(0);
sortie_0 <= (NOT(A)) AND (NOT(B)) AND (NOT(C)); 
sortie_1 <= (NOT(A)) AND (NOT(B)) AND (C);
sortie_2 <= (NOT(A)) AND (B) AND (NOT(C));
sortie_3 <= (NOT(A)) AND (B) AND (C);
sortie_4 <= (A) AND (NOT(B)) AND (NOT(C));
sortie_5 <= (A) AND (NOT(B)) AND (C);
sortie_6 <= (A) AND (B) AND (NOT(C));
sortie_7 <= (A) AND (B) AND (C);

END STRUCT;