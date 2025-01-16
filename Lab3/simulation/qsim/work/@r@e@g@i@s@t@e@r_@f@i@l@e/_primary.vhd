library verilog;
use verilog.vl_types.all;
entity REGISTER_FILE is
    port(
        clock           : in     vl_logic;
        reset_bar       : in     vl_logic;
        Reg_Write       : in     vl_logic;
        Read_Register_1 : in     vl_logic_vector(4 downto 0);
        Read_Register_2 : in     vl_logic_vector(4 downto 0);
        Write_Register  : in     vl_logic_vector(4 downto 0);
        Write_Data      : in     vl_logic_vector(7 downto 0);
        Data_1          : out    vl_logic_vector(7 downto 0);
        Data_2          : out    vl_logic_vector(7 downto 0)
    );
end REGISTER_FILE;
