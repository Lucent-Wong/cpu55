library verilog;
use verilog.vl_types.all;
entity freq_div is
    port(
        clko            : in     vl_logic;
        clk             : out    vl_logic
    );
end freq_div;
