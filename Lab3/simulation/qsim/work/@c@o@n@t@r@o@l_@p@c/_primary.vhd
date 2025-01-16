library verilog;
use verilog.vl_types.all;
entity CONTROL_PC is
    port(
        clock           : in     vl_logic;
        reset_bar       : in     vl_logic;
        selecteur_PC    : out    vl_logic
    );
end CONTROL_PC;
