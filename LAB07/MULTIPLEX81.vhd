library ieee;
use ieee.std_logic_1164.all;

entity MULTIPLEX81 is
    port(
        X : in std_logic_vector(7 downto 0);
        C : in std_logic;
        S0 : out std_logic_vector(7 downto 0);
        S1 : out std_logic_vector(7 downto 0)
    );
end entity MULTIPLEX81;

architecture behavioral of MULTIPLEX81 is

begin
    process(C)
    begin
        if C = '0' then
            S0 <= X;  
        else
            S1 <= X;  
        end if;
    end process;

end architecture;
