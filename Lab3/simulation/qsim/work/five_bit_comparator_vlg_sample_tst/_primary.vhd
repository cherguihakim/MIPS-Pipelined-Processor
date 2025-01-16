library verilog;
use verilog.vl_types.all;
entity five_bit_comparator_vlg_sample_tst is
    port(
        int_a           : in     vl_logic_vector(4 downto 0);
        int_b           : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end five_bit_comparator_vlg_sample_tst;
