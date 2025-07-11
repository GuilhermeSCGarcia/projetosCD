library ieee;
use ieee.std_logic_1164.all;

entity multiplex24 is
    port(
        A : in std_logic;
        B : in std_logic;
        ENABLE : in std_logic;
        S : out std_logic_vector(3 downto 0)
    );
end entity multiplex24;

architecture behavioral of multiplex24 is
    signal sel : std_logic_vector(1 downto 0);
begin
    sel <= B & A;  -- Combina A e B para formar o seletor

    process(sel, ENABLE)
    begin
        if ENABLE = '1' then
            case sel is
                when "00" => S <= "0001";
                when "01" => S <= "0010";
                when "10" => S <= "0100";
                when "11" => S <= "1000";
                when others => S <= "0000";
            end case;
        else
            S <= "0000";  -- Saída desligada quando desabilitado
        end if;
    end process;
end architecture;
