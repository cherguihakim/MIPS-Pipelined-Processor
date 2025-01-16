library verilog;
use verilog.vl_types.all;
entity register8bits_affichage_with_clear_vlg_check_tst is
    port(
        o_Value         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end register8bits_affichage_with_clear_vlg_check_tst;
