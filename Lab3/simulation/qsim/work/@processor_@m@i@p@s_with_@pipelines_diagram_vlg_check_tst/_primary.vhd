library verilog;
use verilog.vl_types.all;
entity Processor_MIPS_with_Pipelines_diagram_vlg_check_tst is
    port(
        ALU_res         : in     vl_logic_vector(7 downto 0);
        data_memory     : in     vl_logic_vector(7 downto 0);
        entree_ALU_1    : in     vl_logic_vector(7 downto 0);
        entree_ALU_2    : in     vl_logic_vector(7 downto 0);
        Forward_A       : in     vl_logic_vector(1 downto 0);
        Forward_B       : in     vl_logic_vector(1 downto 0);
        IF_ID_WRITE     : in     vl_logic;
        Instruction_EX_MEM: in     vl_logic_vector(31 downto 0);
        Instruction_ID_EX: in     vl_logic_vector(31 downto 0);
        Instruction_IF_ID: in     vl_logic_vector(31 downto 0);
        Instruction_MEM_WB: in     vl_logic_vector(31 downto 0);
        PC_WRITE        : in     vl_logic;
        RD_EX_MEM       : in     vl_logic_vector(4 downto 0);
        RD_MEM_WB       : in     vl_logic_vector(4 downto 0);
        REG_WRITE_EX_MEM: in     vl_logic;
        REG_WRITE_MEM_WB: in     vl_logic;
        RS_ID_EX        : in     vl_logic_vector(4 downto 0);
        RT_ID_EX        : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end Processor_MIPS_with_Pipelines_diagram_vlg_check_tst;
