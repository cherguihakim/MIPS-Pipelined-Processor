library verilog;
use verilog.vl_types.all;
entity TEST_CONTROL_ALU_vlg_check_tst is
    port(
        alu_resultat    : in     vl_logic_vector(7 downto 0);
        test_alu_op     : in     vl_logic_vector(1 downto 0);
        test_selecteur  : in     vl_logic_vector(2 downto 0);
        ZERO            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TEST_CONTROL_ALU_vlg_check_tst;
