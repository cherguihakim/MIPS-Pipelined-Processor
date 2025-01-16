library verilog;
use verilog.vl_types.all;
entity DECODEUR_3_FOR_8 is
    port(
        input           : in     vl_logic_vector(2 downto 0);
        output_0        : out    vl_logic;
        output_1        : out    vl_logic;
        output_2        : out    vl_logic;
        output_3        : out    vl_logic;
        output_4        : out    vl_logic;
        output_5        : out    vl_logic;
        output_6        : out    vl_logic;
        output_7        : out    vl_logic
    );
end DECODEUR_3_FOR_8;
