library ieee;
use ieee.std_logic_1164.all;

entity D is
    port(
        E,CLK : in  std_logic;  -- checarrr
        Q : out std_logic
    );
end entity;

architecture Behavioral of D is
    signal Q_int : std_logic := '0';
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if (E = '1') then
                Q_int <= '1';
            elsif (E = '0') then
                Q_int <= '0';
            end if;
        end if;
    end process;
    Q  <= Q_int;

end architecture;