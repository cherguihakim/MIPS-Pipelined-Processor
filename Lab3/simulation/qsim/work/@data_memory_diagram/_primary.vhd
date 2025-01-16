library verilog;
use verilog.vl_types.all;
entity Data_memory_diagram is
    port(
        Read_data       : out    vl_logic_vector(7 downto 0);
        MemtoWrite      : in     vl_logic;
        MemtoRead       : in     vl_logic;
        clock           : in     vl_logic;
        address         : in     vl_logic_vector(7 downto 0);
        Write_data      : in     vl_logic_vector(7 downto 0)
    );
end Data_memory_diagram;
