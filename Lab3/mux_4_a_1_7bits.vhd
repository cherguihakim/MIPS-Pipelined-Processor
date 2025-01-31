LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_4_a_1_7bits is 
 port(
    a1      : in  std_logic_vector(6 downto 0);
    a2      : in  std_logic_vector(6 downto 0);
    a3      : in  std_logic_vector(6 downto 0);
    a4      : in  std_logic_vector(6 downto 0);
    sel     : in  std_logic_vector(1 downto 0);
    b       : out std_logic_vector(6 downto 0)
  );
end mux_4_a_1_7bits;
architecture rtl of mux_4_a_1_7bits is
begin
  p_mux : process(a1,a2,a3,a4,sel)
  begin
    case sel is
      when "00" => b <= a1 ;
      when "01" => b <= a2 ;
      when "10" => b <= a3 ;
      when others => b <= a4 ;
    end case;
  end process p_mux;
end rtl;

