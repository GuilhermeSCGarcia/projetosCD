-- Flip-Flop D de 1 bit sem reset
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop_1bit is
    Port (
        clk     : in  STD_LOGIC;   -- Clock
        d       : in  STD_LOGIC;   -- Entrada de dados
        q       : out STD_LOGIC    -- Saída
    );
end flipflop_1bit;

architecture Behavioral of flipflop_1bit is
begin
    process(clk)
    begin
        if rising_edge(clk) then 
            q <= d;
        end if;
    end process;
end Behavioral;