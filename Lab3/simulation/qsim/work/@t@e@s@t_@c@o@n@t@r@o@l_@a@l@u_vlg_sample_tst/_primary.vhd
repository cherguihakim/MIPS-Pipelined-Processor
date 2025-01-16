library verilog;
use verilog.vl_types.all;
entity TEST_CONTROL_ALU_vlg_sample_tst is
    port(
        code_fonction   : in     vl_logic_vector(5 downto 0);
        data_one        : in     vl_logic_vector(7 downto 0);
        data_two        : in     vl_logic_vector(7 downto 0);
        opcode          : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end TEST_CONTROL_ALU_vlg_sample_tst;
