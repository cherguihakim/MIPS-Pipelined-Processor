LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_8_a_1_16bits is 
 port(
    a1      : in  std_logic_vector(15 downto 0);
    a2      : in  std_logic_vector(15 downto 0);
    a3      : in  std_logic_vector(15 downto 0);
    a4      : in  std_logic_vector(15 downto 0);
	 a5      : in  std_logic_vector(15 downto 0);
	 a6      : in  std_logic_vector(15 downto 0);
	 a7      : in  std_logic_vector(15 downto 0);
	 a8      : in  std_logic_vector(15 downto 0);
    sel     : in  std_logic_vector(2 downto 0);
    b       : out std_logic_vector(15 downto 0)
  );
end mux_8_a_1_16bits;
architecture rtl of mux_8_a_1_16bits is
begin
  p_mux : process(a1,a2,a3,a4,a5,a6,a7,a8,sel)
  begin
    case sel is
      when "000" => b <= a1 ;
      when "001" => b <= a2 ;
      when "010" => b <= a3 ;
      when "011" => b <= a4 ;
		when "100" => b <= a5 ;
		when "101" => b <= a6 ;
		when "110" => b <= a7 ;
		when others => b <= a8;
    end case;
  end process p_mux;
end rtl;

