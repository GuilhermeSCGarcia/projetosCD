library ieee;
use ieee.std_logic_1164.all;

entity MULTIPLEX8 is
    port(
        I0, I1 : in std_logic_vector(7 downto 0);
        C : in std_logic;
        S : out std_logic_vector(7 downto 0)
    );
end entity MULTIPLEX8;

architecture behavioral of MULTIPLEX8 is

begin
    process(I0, I1, C)
    begin
        if C = '0' then
            S <= I0;  -- Seleciona a entrada I0 quando C é 0
        else
            S <= I1;  -- Seleciona a entrada I1 quando C é 1
        end if;
    end process;

end architecture;
