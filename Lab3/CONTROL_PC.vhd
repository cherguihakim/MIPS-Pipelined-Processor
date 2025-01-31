LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CONTROL_PC IS 
PORT (clock,reset_bar : IN STD_LOGIC;
      selecteur_PC : OUT STD_LOGIC  );
		
END CONTROL_PC;

ARCHITECTURE STRUCT OF CONTROL_PC IS
SIGNAL S0, S1 : STD_LOGIC;

COMPONENT dFF_2
        port(i_d		: IN	STD_LOGIC;
		       i_clock		: IN	STD_LOGIC;
		       i_set   : IN STD_LOGIC;
		       i_resetBar  : IN STD_LOGIC;
		       o_q, o_qBar	: OUT	STD_LOGIC);
END COMPONENT;


BEGIN 

Bascule0 : dFF_2 
PORT MAP (i_resetBar => reset_bar, i_set => NOT(reset_bar), i_clock => clock, 
          i_d => '0', o_q => S0      );

Bascule1 : dFF_2
PORT MAP (i_resetBar => reset_bar, i_set => NOT(reset_bar), i_clock => clock, 
          i_d => S0, o_q => S1      );
			 
			 
selecteur_PC <= NOT(S1);

END STRUCT;