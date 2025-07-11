library ieee;
use ieee.std_logic_1164.all;

entity FF_JK is
    port(
        J, K, CLK : in  std_logic;  -- checarrr
        Q, QN     : out std_logic
    );
end entity;

architecture Behavioral of FF_JK is
    signal Q_int : std_logic := '0';
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if (J = '1' and K = '1') then
                Q_int <= not Q_int;
            elsif (J = '1') then
                Q_int <= '1';
            elsif (K = '1') then
                Q_int <= '0';
            end if;
        end if;
    end process;
    Q  <= Q_int;
    QN <= not Q_int;
end architecture;