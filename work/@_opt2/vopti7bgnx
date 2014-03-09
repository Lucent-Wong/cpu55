library verilog;
use verilog.vl_types.all;
entity decoder is
    generic(
        \IN\            : integer := 5;
        \OUT\           : integer := 32
    );
    port(
        en              : in     vl_logic;
        data_in         : in     vl_logic_vector;
        data_out        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \IN\ : constant is 1;
    attribute mti_svvh_generic_type of \OUT\ : constant is 1;
end decoder;
