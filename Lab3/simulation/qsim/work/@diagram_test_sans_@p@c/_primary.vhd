library verilog;
use verilog.vl_types.all;
entity Diagram_test_sans_PC is
    port(
        data_memory     : out    vl_logic_vector(7 downto 0);
        Instruction     : in     vl_logic_vector(31 downto 0);
        Clock           : in     vl_logic;
        ResetBar        : in     vl_logic;
        Read_data_1     : out    vl_logic_vector(7 downto 0);
        Read_data_2     : out    vl_logic_vector(7 downto 0);
        Resultat_ALU    : out    vl_logic_vector(7 downto 0);
        write_data      : out    vl_logic_vector(7 downto 0)
    );
end Diagram_test_sans_PC;
