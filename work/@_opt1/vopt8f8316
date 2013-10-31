library verilog;
use verilog.vl_types.all;
entity data_ram is
    generic(
        DEPTH           : integer := 3;
        INIT            : integer := 1
    );
    port(
        clk             : in     vl_logic;
        ram_ena         : in     vl_logic;
        wena            : in     vl_logic;
        w               : in     vl_logic;
        h               : in     vl_logic;
        b               : in     vl_logic;
        z               : in     vl_logic;
        addr            : in     vl_logic_vector;
        data_in         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0);
        AddressError    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of INIT : constant is 1;
end data_ram;
