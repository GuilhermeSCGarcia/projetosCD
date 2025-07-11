library ieee;
use ieee.std_logic_1164.all;

entity FFJK is
    port(
        clk: in std_logic;
        J: in std_logic;
        K: in std_logic;
        Q: out std_logic;
        Qn: out std_logic -- Opcional, Qn não foi usado no TOP
    );
end entity FFJK;

architecture behavioral of FFJK is
    signal Q_reg: std_logic := '0'; -- Estado interno, inicialização opcional
begin
    process(clk)
    begin
        if rising_edge(clk) then -- Ou falling_edge, conforme seu clock
            if J = '0' and K = '0' then
                -- Mantém o estado
                Q_reg <= Q_reg;
            elsif J = '0' and K = '1' then
                Q_reg <= '0'; -- Reset
            elsif J = '1' and K = '0' then
                Q_reg <= '1'; -- Set
            elsif J = '1' and K = '1' then
                Q_reg <= not Q_reg; -- Toggle
            end if;
        end if;
    end process;

    Q <= Q_reg;
    Qn <= not Q_reg; -- Se Qn for necessário
end behavioral;
