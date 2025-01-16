library verilog;
use verilog.vl_types.all;
entity FORWARDING_UNIT_vlg_check_tst is
    port(
        FORWARD_A       : in     vl_logic_vector(1 downto 0);
        FORWARD_B       : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end FORWARDING_UNIT_vlg_check_tst;
