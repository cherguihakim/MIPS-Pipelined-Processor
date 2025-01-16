library verilog;
use verilog.vl_types.all;
entity CONTROL_PC_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset_bar       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CONTROL_PC_vlg_sample_tst;
