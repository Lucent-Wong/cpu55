library verilog;
use verilog.vl_types.all;
entity controlunit is
    port(
        op              : in     vl_logic_vector(5 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        negative        : in     vl_logic;
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        rd              : in     vl_logic_vector(4 downto 0);
        rt_sel          : out    vl_logic;
        w               : out    vl_logic;
        h               : out    vl_logic;
        b               : out    vl_logic;
        z               : out    vl_logic;
        aluc            : out    vl_logic_vector(3 downto 0);
        wrf             : out    vl_logic;
        sext_i          : out    vl_logic;
        sext_s          : out    vl_logic;
        shift           : out    vl_logic;
        regwa           : out    vl_logic;
        immc            : out    vl_logic;
        wena            : out    vl_logic;
        wdc             : out    vl_logic;
        aludc           : out    vl_logic;
        pcsource        : out    vl_logic_vector(1 downto 0)
    );
end controlunit;
