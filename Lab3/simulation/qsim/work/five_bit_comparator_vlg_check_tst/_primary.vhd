library verilog;
use verilog.vl_types.all;
entity five_bit_comparator_vlg_check_tst is
    port(
        out_a_eq_b      : in     vl_logic;
        out_a_inf_b     : in     vl_logic;
        out_a_sup_b     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end five_bit_comparator_vlg_check_tst;
