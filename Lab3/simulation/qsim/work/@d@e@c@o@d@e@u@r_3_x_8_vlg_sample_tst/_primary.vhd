library verilog;
use verilog.vl_types.all;
entity DECODEUR_3_x_8_vlg_sample_tst is
    port(
        entree          : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end DECODEUR_3_x_8_vlg_sample_tst;
