library verilog;
use verilog.vl_types.all;
entity Processor_MIPS_with_Pipelines_diagram_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        PC_PLUS_1       : in     vl_logic_vector(7 downto 0);
        Reset_bar       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Processor_MIPS_with_Pipelines_diagram_vlg_sample_tst;
