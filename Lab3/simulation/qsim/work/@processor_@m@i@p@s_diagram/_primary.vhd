library verilog;
use verilog.vl_types.all;
entity Processor_MIPS_diagram is
    port(
        data_memory     : out    vl_logic_vector(7 downto 0);
        Clock_Global    : in     vl_logic;
        Reset_Bar_Global: in     vl_logic;
        PC_PLUS_UN      : in     vl_logic_vector(7 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(7 downto 0);
        Read_data_1     : out    vl_logic_vector(7 downto 0);
        Read_data_2     : out    vl_logic_vector(7 downto 0);
        Resultat_ALU    : out    vl_logic_vector(7 downto 0);
        write_data      : out    vl_logic_vector(7 downto 0)
    );
end Processor_MIPS_diagram;
