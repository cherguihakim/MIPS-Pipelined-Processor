library verilog;
use verilog.vl_types.all;
entity FORWARDING_UNIT is
    port(
        Rs_ID_EX        : in     vl_logic_vector(4 downto 0);
        Rt_ID_EX        : in     vl_logic_vector(4 downto 0);
        Rd_EX_MEM       : in     vl_logic_vector(4 downto 0);
        Rd_MEM_WB       : in     vl_logic_vector(4 downto 0);
        REG_WRITE_EX_MEM: in     vl_logic;
        REG_WRITE_MEM_WB: in     vl_logic;
        FORWARD_A       : out    vl_logic_vector(1 downto 0);
        FORWARD_B       : out    vl_logic_vector(1 downto 0)
    );
end FORWARDING_UNIT;
