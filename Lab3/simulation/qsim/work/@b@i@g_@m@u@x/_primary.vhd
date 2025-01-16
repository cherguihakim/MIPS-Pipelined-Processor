library verilog;
use verilog.vl_types.all;
entity BIG_MUX is
    port(
        RegDst          : in     vl_logic;
        ALUSRC          : in     vl_logic;
        MemtoReg        : in     vl_logic;
        RegWrite        : in     vl_logic;
        MemRead         : in     vl_logic;
        MemWrite        : in     vl_logic;
        Branch          : in     vl_logic;
        AluOp1          : in     vl_logic;
        AluOp0          : in     vl_logic;
        Jump            : in     vl_logic;
        sel_big_mux     : in     vl_logic;
        REG_DST_OUT     : out    vl_logic;
        ALU_SRC_OUT     : out    vl_logic;
        MEM_TO_REG_OUT  : out    vl_logic;
        REG_WRITE_OUT   : out    vl_logic;
        MEM_READ_OUT    : out    vl_logic;
        MEM_WRITE_OUT   : out    vl_logic;
        BRANCH_OUT      : out    vl_logic;
        ALU_OP1_OUT     : out    vl_logic;
        ALU_OP0_OUT     : out    vl_logic;
        JUMP_OUT        : out    vl_logic
    );
end BIG_MUX;
