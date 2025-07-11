Library ieee;
use ieee.std_logic_1164.all;

entity FFD is
    port(
        clk: in std_logic;
        D: in std_logic;
        Q: out std_logic
    );  
end FFD;

architecture behavorial of FFD is


begin
    process(clk)
    begin
        if(falling_edge(clk)) then
            Q <= D;
        end if;
    end process;
end behavorial;