library ieee;
use ieee.std_logic_1164.all;

entity FFJK is
    port(
        clk: in std_logic;
        J: in std_logic;
        K: in std_logic;
        PRESET: in std_logic; -- Entrada de Preset assíncrono (ativo alto)
        CLEAR: in std_logic;  -- Entrada de Clear assíncrono (ativo alto)
        Q: out std_logic;
        Qn: out std_logic -- Opcional, Qn não foi usado no TOP
    );
end entity FFJK;

architecture behavioral of FFJK is
    signal Q_reg: std_logic := '0'; -- Estado interno inicializado para '0'
begin
    process(clk, PRESET, CLEAR) -- PRESET e CLEAR são assíncronos
    begin
        if CLEAR = '1' then
            Q_reg <= '0'; -- Clear assíncrono tem prioridade
        elsif PRESET = '1' then
            Q_reg <= '1'; -- Preset assíncrono
        elsif falling_edge(clk) then
            if J = '0' and K = '0' then     -- Manter estado
                Q_reg <= Q_reg;
            elsif J = '0' and K = '1' then  -- Reset síncrono
                Q_reg <= '0';
            elsif J = '1' and K = '0' then  -- Set síncrono
                Q_reg <= '1';
            elsif J = '1' and K = '1' then  -- Toggle síncrono
                Q_reg <= not Q_reg;
            end if;
        end if;
    end process;

    Q <= Q_reg;
    Qn <= not Q_reg; -- Se Qn for necessário
end behavioral;
