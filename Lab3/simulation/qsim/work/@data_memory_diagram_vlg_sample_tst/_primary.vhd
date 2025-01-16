library verilog;
use verilog.vl_types.all;
entity Data_memory_diagram_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(7 downto 0);
        clock           : in     vl_logic;
        MemtoRead       : in     vl_logic;
        MemtoWrite      : in     vl_logic;
        Write_data      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Data_memory_diagram_vlg_sample_tst;
