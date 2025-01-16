library verilog;
use verilog.vl_types.all;
entity ALU_8BITS_vlg_sample_tst is
    port(
        data_1          : in     vl_logic_vector(7 downto 0);
        data_2          : in     vl_logic_vector(7 downto 0);
        selecteur_alu   : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_8BITS_vlg_sample_tst;
