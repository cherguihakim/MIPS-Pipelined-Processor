library verilog;
use verilog.vl_types.all;
entity Processor_MIPS_diagram_vlg_check_tst is
    port(
        data_memory     : in     vl_logic_vector(7 downto 0);
        Instruction     : in     vl_logic_vector(31 downto 0);
        PC              : in     vl_logic_vector(7 downto 0);
        Read_data_1     : in     vl_logic_vector(7 downto 0);
        Read_data_2     : in     vl_logic_vector(7 downto 0);
        Resultat_ALU    : in     vl_logic_vector(7 downto 0);
        write_data      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Processor_MIPS_diagram_vlg_check_tst;
