library verilog;
use verilog.vl_types.all;
entity BIG_MUX_vlg_sample_tst is
    port(
        AluOp0          : in     vl_logic;
        AluOp1          : in     vl_logic;
        ALUSRC          : in     vl_logic;
        Branch          : in     vl_logic;
        Jump            : in     vl_logic;
        MemRead         : in     vl_logic;
        MemtoReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        sel_big_mux     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BIG_MUX_vlg_sample_tst;
