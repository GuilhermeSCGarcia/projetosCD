library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MSB is
    Port (
        X  : in  STD_LOGIC; 
        S0 : out STD_LOGIC_VECTOR(3 downto 0)  
    );
end MSB;

architecture Behavioral of MSB is
begin
    S0 <= "000" & X; 
end Behavioral;

