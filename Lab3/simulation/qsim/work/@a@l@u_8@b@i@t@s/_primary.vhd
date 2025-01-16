library verilog;
use verilog.vl_types.all;
entity ALU_8BITS is
    port(
        data_1          : in     vl_logic_vector(7 downto 0);
        data_2          : in     vl_logic_vector(7 downto 0);
        selecteur_alu   : in     vl_logic_vector(2 downto 0);
        signal_zero     : out    vl_logic;
        ALU_resultat    : out    vl_logic_vector(7 downto 0)
    );
end ALU_8BITS;
