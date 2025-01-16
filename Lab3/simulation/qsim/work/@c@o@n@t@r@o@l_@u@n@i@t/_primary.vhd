library verilog;
use verilog.vl_types.all;
entity CONTROL_UNIT is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        RegDst          : out    vl_logic;
        ALUSRC          : out    vl_logic;
        MemtoReg        : out    vl_logic;
        RegWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        Branch          : out    vl_logic;
        AluOp1          : out    vl_logic;
        AluOp0          : out    vl_logic;
        Jump            : out    vl_logic
    );
end CONTROL_UNIT;
