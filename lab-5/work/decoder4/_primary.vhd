library verilog;
use verilog.vl_types.all;
entity decoder4 is
    port(
        en              : in     vl_logic;
        sel             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end decoder4;
