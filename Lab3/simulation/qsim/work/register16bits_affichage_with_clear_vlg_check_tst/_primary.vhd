library verilog;
use verilog.vl_types.all;
entity register16bits_affichage_with_clear_vlg_check_tst is
    port(
        o_Value         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end register16bits_affichage_with_clear_vlg_check_tst;
