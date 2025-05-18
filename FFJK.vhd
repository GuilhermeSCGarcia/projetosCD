library ieee;
use ieee.std_logic_1164.all;

entity FFJK is
    port (
        J     : in  std_logic;                             -- Entrada J
        K     : in  std_logic;                             -- Entrada K
        CLK   : in  std_logic;                             -- Entrada de Clock
        PRE   : in  std_logic;                             -- Entrada de Preset (ativo alto)
        CLEAR : in  std_logic;                             -- Entrada de Clear (ativo alto)
        Q     : out std_logic
    );
end entity FFJK;

architecture Behavioral of FFJK is
    signal s_Q : std_logic := '0';                        -- Estado atual do flip-flop

begin  
    process (CLK, CLEAR, PRE)
    begin
        if CLEAR = '1' then
            s_Q <= '0';                                   -- Clear assíncrono: zera o flip-flop
        elsif PRE = '1' then
            s_Q <= '1';                                   -- Preset assíncrono: seta o flip-flop
        elsif rising_edge(CLK) then
            if J = '1' and K = '0' then
                s_Q <= '1';                               -- Set (J=1, K=0)
            elsif J = '0' and K = '1' then
                s_Q <= '0';                               -- Reset (J=0, K=1)
            elsif J = '1' and K = '1' then
                s_Q <= not s_Q;                            -- Toggle (J=1, K=1)
            end if;
        end if;
    end process;

    Q <= s_Q;                                            -- Saída do flip-flop

end architecture Behavioral;