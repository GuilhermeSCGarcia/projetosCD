library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DIVISOR_VETOR is
    Port (
        X     : in  STD_LOGIC_VECTOR(7 downto 0);
        S0   : out STD_LOGIC_VECTOR(3 downto 0); -- menos significativo
        S1   : out STD_LOGIC_VECTOR(3 downto 0)  -- mais significativo
    );
end DIVISOR_VETOR;

architecture Behavioral of DIVISOR_VETOR is
begin
    S0 <= X(3 downto 0); -- 4 bits menos significativos
    S1 <= X(7 downto 4); -- 4 bits mais significativos
end Behavioral;
