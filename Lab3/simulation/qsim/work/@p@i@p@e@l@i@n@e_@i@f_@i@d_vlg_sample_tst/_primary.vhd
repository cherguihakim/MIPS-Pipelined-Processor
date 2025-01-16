library verilog;
use verilog.vl_types.all;
entity PIPELINE_IF_ID_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        flush           : in     vl_logic;
        Instruction     : in     vl_logic_vector(31 downto 0);
        PC_plus_1       : in     vl_logic_vector(7 downto 0);
        reset_bar       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PIPELINE_IF_ID_vlg_sample_tst;
