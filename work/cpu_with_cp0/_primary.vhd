library verilog;
use verilog.vl_types.all;
entity cpu_with_cp0 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end cpu_with_cp0;