library verilog;
use verilog.vl_types.all;
entity BIG_MUX_vlg_check_tst is
    port(
        ALU_OP0_OUT     : in     vl_logic;
        ALU_OP1_OUT     : in     vl_logic;
        ALU_SRC_OUT     : in     vl_logic;
        BRANCH_OUT      : in     vl_logic;
        JUMP_OUT        : in     vl_logic;
        MEM_READ_OUT    : in     vl_logic;
        MEM_TO_REG_OUT  : in     vl_logic;
        MEM_WRITE_OUT   : in     vl_logic;
        REG_DST_OUT     : in     vl_logic;
        REG_WRITE_OUT   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end BIG_MUX_vlg_check_tst;
