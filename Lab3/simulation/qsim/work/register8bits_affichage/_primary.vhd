library verilog;
use verilog.vl_types.all;
entity register8bits_affichage is
    port(
        i_resetBar      : in     vl_logic;
        i_load          : in     vl_logic;
        i_clock         : in     vl_logic;
        i_Value         : in     vl_logic_vector(7 downto 0);
        o_Value         : out    vl_logic_vector(7 downto 0)
    );
end register8bits_affichage;
