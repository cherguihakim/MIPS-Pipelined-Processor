library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           s : out STD_LOGIC;
           co : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin
s <= a XOR b XOR c;
co <= (a AND b) OR ((a OR b) AND c);

end Behavioral;
