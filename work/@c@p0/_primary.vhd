library verilog;
use verilog.vl_types.all;
entity CP0 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        Mfc0            : in     vl_logic;
        Mtc0            : in     vl_logic;
        npc_fromcpu_2   : in     vl_logic_vector(31 downto 0);
        ERET            : in     vl_logic;
        Rd              : in     vl_logic_vector(4 downto 0);
        Reg_In          : in     vl_logic_vector(31 downto 0);
        Reg_Out         : out    vl_logic_vector(31 downto 0);
        Int             : in     vl_logic_vector(4 downto 0);
        reset           : in     vl_logic;
        Addr_Err        : in     vl_logic;
        EXC_Ov          : in     vl_logic;
        EXC_Tr          : in     vl_logic;
        EXC_Sys         : in     vl_logic;
        EXC_Bp          : in     vl_logic;
        EXC_RI          : in     vl_logic;
        epc             : out    vl_logic
    );
end CP0;
