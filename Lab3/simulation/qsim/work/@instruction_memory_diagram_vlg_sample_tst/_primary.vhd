library verilog;
use verilog.vl_types.all;
entity Instruction_memory_diagram_vlg_sample_tst is
    port(
        Address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Instruction_memory_diagram_vlg_sample_tst;
