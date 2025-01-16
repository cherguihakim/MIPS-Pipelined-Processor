LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY REGISTER_FILE IS 
PORT (clock, reset_bar : IN STD_LOGIC;
      Reg_Write : IN STD_LOGIC;
      Read_Register_1, Read_Register_2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      Write_Register : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      Write_Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);	
	   Data_1, Data_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	


);
END REGISTER_FILE;


ARCHITECTURE STRUCT OF REGISTER_FILE IS 
SIGNAL int_sortie_0, int_sortie_1, int_sortie_2, int_sortie_3, int_sortie_4, int_sortie_5, int_sortie_6, int_sortie_7 : STD_LOGIC; 
SIGNAL int_registre_0, int_registre_1, int_registre_2, int_registre_3, int_registre_4, int_registre_5, int_registre_6, int_registre_7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL int_mux_data_1, int_mux_data_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);


COMPONENT register8bits_affichage IS
	PORT(
		i_resetBar, i_load	: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		i_Value			: IN	STD_LOGIC_VECTOR(7 downto 0);
		o_Value			: OUT	STD_LOGIC_VECTOR(7 downto 0));
END COMPONENT;


COMPONENT DECODEUR_3_x_8 IS 
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

Decodeur: DECODEUR_3_x_8
PORT MAP(entree(2) => Write_Register(2), entree(1) => Write_Register(1), entree(0) => Write_Register(0),
         sortie_0 => int_sortie_0, sortie_1 => int_sortie_1, sortie_2 => int_sortie_2, sortie_3 => int_sortie_3,
         sortie_4 => int_sortie_4, sortie_5 => int_sortie_5, sortie_6 => int_sortie_6, sortie_7 => int_sortie_7	);
			
Registre_t0 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_0), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_0      );
			
Registre_t1 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_1), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_1      );
			
Registre_t2 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_2), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_2      );
			
Registre_t3 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_3), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_3      );
						
Registre_t4 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_4), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_4      );
			
Registre_t5 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_5), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_5      );
			
Registre_t6 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_6), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_6      );
			
Registre_t7 : register8bits_affichage
PORT MAP(i_resetBar => reset_bar, i_load => (Reg_Write AND int_sortie_7), 
         i_clock => clock, i_Value => Write_Data, o_Value => int_registre_7      );


Mux_data_1 : mux_8_a_1_8bits
PORT MAP(a1 => int_registre_0, a2 => int_registre_1, a3 => int_registre_2, a4 => int_registre_3,
         a5 => int_registre_4, a6 => int_registre_5, a7 => int_registre_6, a8 => int_registre_7,
         sel(2) => Read_Register_1(2), sel(1) => Read_Register_1(1), sel(0) => Read_Register_1(0),
         b => int_mux_data_1			);
			
Mux_data_2 : mux_8_a_1_8bits
PORT MAP(a1 => int_registre_0, a2 => int_registre_1, a3 => int_registre_2, a4 => int_registre_3,
         a5 => int_registre_4, a6 => int_registre_5, a7 => int_registre_6, a8 => int_registre_7,
         sel(2) => Read_Register_2(2), sel(1) => Read_Register_2(1), sel(0) => Read_Register_2(0),
         b => int_mux_data_2			);
			
			
--Output_Driver
			
Data_1 <= int_mux_data_1;
Data_2 <= int_mux_data_2;
			

END STRUCT;




























