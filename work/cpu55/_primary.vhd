library verilog;
use verilog.vl_types.all;
entity cpu55 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        add_err         : out    vl_logic
    );
end cpu55;
