library verilog;
use verilog.vl_types.all;
entity register16bits_affichage_with_clear_vlg_sample_tst is
    port(
        i_clear         : in     vl_logic;
        i_clock         : in     vl_logic;
        i_load          : in     vl_logic;
        i_resetBar      : in     vl_logic;
        i_Value         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end register16bits_affichage_with_clear_vlg_sample_tst;
