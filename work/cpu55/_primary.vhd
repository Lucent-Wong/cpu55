library verilog;
use verilog.vl_types.all;
entity cpu55 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        rdfcp0          : in     vl_logic_vector(31 downto 0);
        epc             : in     vl_logic_vector(31 downto 0);
        add_err         : out    vl_logic;
        rt2cp0          : out    vl_logic_vector(31 downto 0);
        reg_d           : out    vl_logic_vector(4 downto 0);
        rs2hilo         : out    vl_logic_vector(31 downto 0);
        npc2c0          : out    vl_logic_vector(31 downto 0);
        c0_eret         : out    vl_logic;
        mtc0            : out    vl_logic;
        mfc0            : out    vl_logic;
        mthi            : out    vl_logic;
        mfhi            : out    vl_logic;
        mtlo            : out    vl_logic;
        mflo            : out    vl_logic;
        mult            : out    vl_logic;
        multu           : out    vl_logic;
        div             : out    vl_logic;
        divu            : out    vl_logic
    );
end cpu55;
