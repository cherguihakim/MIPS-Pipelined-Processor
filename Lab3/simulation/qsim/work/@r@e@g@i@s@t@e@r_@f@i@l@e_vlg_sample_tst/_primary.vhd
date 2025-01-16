library verilog;
use verilog.vl_types.all;
entity REGISTER_FILE_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        Read_Register_1 : in     vl_logic_vector(4 downto 0);
        Read_Register_2 : in     vl_logic_vector(4 downto 0);
        Reg_Write       : in     vl_logic;
        reset_bar       : in     vl_logic;
        Write_Data      : in     vl_logic_vector(7 downto 0);
        Write_Register  : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end REGISTER_FILE_vlg_sample_tst;
