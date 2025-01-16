library verilog;
use verilog.vl_types.all;
entity HAZARD_UNIT_vlg_sample_tst is
    port(
        MEM_READ_ID_EX  : in     vl_logic;
        Rs_IF_ID        : in     vl_logic_vector(4 downto 0);
        Rt_ID_EX        : in     vl_logic_vector(4 downto 0);
        Rt_IF_ID        : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end HAZARD_UNIT_vlg_sample_tst;
