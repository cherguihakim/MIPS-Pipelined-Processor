library verilog;
use verilog.vl_types.all;
entity five_bit_comparator is
    port(
        int_a           : in     vl_logic_vector(4 downto 0);
        int_b           : in     vl_logic_vector(4 downto 0);
        out_a_sup_b     : out    vl_logic;
        out_a_eq_b      : out    vl_logic;
        out_a_inf_b     : out    vl_logic
    );
end five_bit_comparator;
