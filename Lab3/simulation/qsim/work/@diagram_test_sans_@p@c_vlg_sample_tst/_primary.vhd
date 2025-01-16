library verilog;
use verilog.vl_types.all;
entity Diagram_test_sans_PC_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Instruction     : in     vl_logic_vector(31 downto 0);
        ResetBar        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Diagram_test_sans_PC_vlg_sample_tst;
