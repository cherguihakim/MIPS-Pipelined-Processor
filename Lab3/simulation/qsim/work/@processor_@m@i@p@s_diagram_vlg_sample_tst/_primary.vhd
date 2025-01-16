library verilog;
use verilog.vl_types.all;
entity Processor_MIPS_diagram_vlg_sample_tst is
    port(
        Clock_Global    : in     vl_logic;
        PC_PLUS_UN      : in     vl_logic_vector(7 downto 0);
        Reset_Bar_Global: in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Processor_MIPS_diagram_vlg_sample_tst;
