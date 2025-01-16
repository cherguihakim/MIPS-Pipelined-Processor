library verilog;
use verilog.vl_types.all;
entity REGISTER_FILE_vlg_check_tst is
    port(
        Data_1          : in     vl_logic_vector(7 downto 0);
        Data_2          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end REGISTER_FILE_vlg_check_tst;
