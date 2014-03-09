library verilog;
use verilog.vl_types.all;
entity DIV is
    port(
        rfd             : out    vl_logic;
        clk             : in     vl_logic;
        dividend        : in     vl_logic_vector(31 downto 0);
        quotient        : out    vl_logic_vector(31 downto 0);
        divisor         : in     vl_logic_vector(31 downto 0);
        fractional      : out    vl_logic_vector(31 downto 0)
    );
end DIV;
