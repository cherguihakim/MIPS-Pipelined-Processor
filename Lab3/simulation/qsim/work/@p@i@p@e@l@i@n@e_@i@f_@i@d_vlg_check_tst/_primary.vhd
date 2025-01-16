library verilog;
use verilog.vl_types.all;
entity PIPELINE_IF_ID_vlg_check_tst is
    port(
        Instruction_out : in     vl_logic_vector(31 downto 0);
        PC_plus_1_out   : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end PIPELINE_IF_ID_vlg_check_tst;
