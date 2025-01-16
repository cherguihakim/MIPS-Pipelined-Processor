library verilog;
use verilog.vl_types.all;
entity FORWARDING_UNIT_vlg_sample_tst is
    port(
        Rd_EX_MEM       : in     vl_logic_vector(4 downto 0);
        Rd_MEM_WB       : in     vl_logic_vector(4 downto 0);
        REG_WRITE_EX_MEM: in     vl_logic;
        REG_WRITE_MEM_WB: in     vl_logic;
        Rs_ID_EX        : in     vl_logic_vector(4 downto 0);
        Rt_ID_EX        : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end FORWARDING_UNIT_vlg_sample_tst;
