library verilog;
use verilog.vl_types.all;
entity HAZARD_UNIT_vlg_check_tst is
    port(
        PC_WRITE        : in     vl_logic;
        SEL_MUX_ID      : in     vl_logic;
        WRITE_IF_ID     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end HAZARD_UNIT_vlg_check_tst;
