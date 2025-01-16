library verilog;
use verilog.vl_types.all;
entity Instruction_memory_diagram is
    port(
        Instruction     : out    vl_logic_vector(31 downto 0);
        clock           : in     vl_logic;
        Address         : in     vl_logic_vector(7 downto 0)
    );
end Instruction_memory_diagram;
