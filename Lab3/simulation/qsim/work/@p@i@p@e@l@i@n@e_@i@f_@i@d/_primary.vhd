library verilog;
use verilog.vl_types.all;
entity PIPELINE_IF_ID is
    port(
        clock           : in     vl_logic;
        reset_bar       : in     vl_logic;
        flush           : in     vl_logic;
        PC_plus_1       : in     vl_logic_vector(7 downto 0);
        Instruction     : in     vl_logic_vector(31 downto 0);
        PC_plus_1_out   : out    vl_logic_vector(7 downto 0);
        Instruction_out : out    vl_logic_vector(31 downto 0)
    );
end PIPELINE_IF_ID;
