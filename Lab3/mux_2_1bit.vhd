LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_2_1bit is 
 port(
    a1      : in  std_logic;
    a2      : in  std_logic;
    sel     : in  std_logic;
    b       : out std_logic
  );
end mux_2_1bit;
architecture rtl of mux_2_1bit is
begin
  p_mux : process(a1,a2,sel)
  begin
    case sel is
      when '0'=> b <= a1 ;
      when '1' => b <= a2 ;
    end case;
  end process p_mux;
end rtl;