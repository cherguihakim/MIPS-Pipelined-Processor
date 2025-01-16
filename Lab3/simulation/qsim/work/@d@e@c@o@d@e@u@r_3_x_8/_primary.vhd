library verilog;
use verilog.vl_types.all;
entity DECODEUR_3_x_8 is
    port(
        entree          : in     vl_logic_vector(2 downto 0);
        sortie_0        : out    vl_logic;
        sortie_1        : out    vl_logic;
        sortie_2        : out    vl_logic;
        sortie_3        : out    vl_logic;
        sortie_4        : out    vl_logic;
        sortie_5        : out    vl_logic;
        sortie_6        : out    vl_logic;
        sortie_7        : out    vl_logic
    );
end DECODEUR_3_x_8;
