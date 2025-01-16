library verilog;
use verilog.vl_types.all;
entity Diagram_test_sans_PC_vlg_check_tst is
    port(
        data_memory     : in     vl_logic_vector(7 downto 0);
        Read_data_1     : in     vl_logic_vector(7 downto 0);
        Read_data_2     : in     vl_logic_vector(7 downto 0);
        Resultat_ALU    : in     vl_logic_vector(7 downto 0);
        write_data      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Diagram_test_sans_PC_vlg_check_tst;
