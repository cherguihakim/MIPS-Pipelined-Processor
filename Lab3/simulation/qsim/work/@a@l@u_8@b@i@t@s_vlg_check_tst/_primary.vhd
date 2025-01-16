library verilog;
use verilog.vl_types.all;
entity ALU_8BITS_vlg_check_tst is
    port(
        ALU_resultat    : in     vl_logic_vector(7 downto 0);
        signal_zero     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALU_8BITS_vlg_check_tst;
