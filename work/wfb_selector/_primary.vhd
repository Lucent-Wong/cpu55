library verilog;
use verilog.vl_types.all;
entity wfb_selector is
    port(
        data_in         : in     vl_logic_vector(31 downto 0);
        sign_extend     : in     vl_logic;
        w               : in     vl_logic;
        h               : in     vl_logic;
        b               : in     vl_logic;
        z               : in     vl_logic;
        data_out        : out    vl_logic_vector(31 downto 0)
    );
end wfb_selector;
