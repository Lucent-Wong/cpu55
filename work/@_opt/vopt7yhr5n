library verilog;
use verilog.vl_types.all;
entity pipe_mem is
    port(
        w               : in     vl_logic;
        h               : in     vl_logic;
        b               : in     vl_logic;
        z               : in     vl_logic;
        clk             : in     vl_logic;
        ram_ena         : in     vl_logic;
        ram_wena        : in     vl_logic;
        addr            : in     vl_logic_vector(31 downto 0);
        ram_indata      : in     vl_logic_vector(31 downto 0);
        ram_outdata     : out    vl_logic_vector(31 downto 0);
        AddressErr      : out    vl_logic
    );
end pipe_mem;
