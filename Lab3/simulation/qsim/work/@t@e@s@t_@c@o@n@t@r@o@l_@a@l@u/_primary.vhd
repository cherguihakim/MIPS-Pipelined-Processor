library verilog;
use verilog.vl_types.all;
entity TEST_CONTROL_ALU is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        code_fonction   : in     vl_logic_vector(5 downto 0);
        data_one        : in     vl_logic_vector(7 downto 0);
        data_two        : in     vl_logic_vector(7 downto 0);
        ZERO            : out    vl_logic;
        alu_resultat    : out    vl_logic_vector(7 downto 0);
        test_alu_op     : out    vl_logic_vector(1 downto 0);
        test_selecteur  : out    vl_logic_vector(2 downto 0)
    );
end TEST_CONTROL_ALU;
