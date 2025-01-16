library verilog;
use verilog.vl_types.all;
entity Processor_MIPS_with_Pipelines_diagram is
    port(
        REG_WRITE_EX_MEM: out    vl_logic;
        Clock           : in     vl_logic;
        Reset_bar       : in     vl_logic;
        REG_WRITE_MEM_WB: out    vl_logic;
        PC_WRITE        : out    vl_logic;
        PC_PLUS_1       : in     vl_logic_vector(7 downto 0);
        Forward_A       : out    vl_logic_vector(1 downto 0);
        Forward_B       : out    vl_logic_vector(1 downto 0);
        IF_ID_WRITE     : out    vl_logic;
        ALU_res         : out    vl_logic_vector(7 downto 0);
        data_memory     : out    vl_logic_vector(7 downto 0);
        entree_ALU_1    : out    vl_logic_vector(7 downto 0);
        entree_ALU_2    : out    vl_logic_vector(7 downto 0);
        Instruction_EX_MEM: out    vl_logic_vector(31 downto 0);
        Instruction_ID_EX: out    vl_logic_vector(31 downto 0);
        Instruction_IF_ID: out    vl_logic_vector(31 downto 0);
        Instruction_MEM_WB: out    vl_logic_vector(31 downto 0);
        RD_EX_MEM       : out    vl_logic_vector(4 downto 0);
        RD_MEM_WB       : out    vl_logic_vector(4 downto 0);
        RS_ID_EX        : out    vl_logic_vector(4 downto 0);
        RT_ID_EX        : out    vl_logic_vector(4 downto 0)
    );
end Processor_MIPS_with_Pipelines_diagram;
