library verilog;
use verilog.vl_types.all;
entity register8bits_affichage_vlg_sample_tst is
    port(
        i_clock         : in     vl_logic;
        i_load          : in     vl_logic;
        i_resetBar      : in     vl_logic;
        i_Value         : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end register8bits_affichage_vlg_sample_tst;
