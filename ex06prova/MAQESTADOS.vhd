library ieee;
use ieee.std_logic_1164.all;

entity MAQESTADOS is
    port(
        CLK   : in  std_logic;  -- Clock externo
        M0    : in  std_logic;
        M1    : in  std_logic;
        S     : out std_logic_vector(2 downto 0)  -- Saída do contador
    );
end entity;

architecture struct of MAQESTADOS is
    signal Q0, Q1, Q2 : std_logic := '0';  -- Inicializa os flip-flops
    signal QV : std_logic_vector(2 downto 0);  -- Vetor de estado atual

begin
    QV <= Q2 & Q1 & Q0;  -- Estado atual
    
    process(CLK)
    begin
        if rising_edge(CLK) then
            if (M0='0' AND M1='0') then --crescente
                if (QV="000") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '0';  -- 001
                elsif (QV="001") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '0';  -- 010
                elsif (QV="010") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '0';  -- 011
                elsif (QV="011") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '1';  -- 100
                elsif (QV="100") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '1';  -- 101
                elsif (QV="101") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '1';  -- 110
                elsif (QV="110") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '1';  -- 111
                elsif (QV="111") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 000
--                else
--                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 000
                end if;
            elsif (M0='0' AND M1='1') then -- 10 --pares e impares
                if (QV="000") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '0';  -- 010
                elsif (QV="001") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '0';  -- 000
                elsif (QV="010") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '1';  -- 001
                elsif (QV="011") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '1';  -- 010
                elsif (QV="100") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '1';  -- 011
                elsif (QV="101") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '1';  -- 100
                elsif (QV="110") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '0';  -- 101
                elsif (QV="111") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 110
--                else
--                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 000
               end if;

            elsif (M0='1' AND M1='0') then --01 -- decrescente
                if (QV="000") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '1';  -- 111
                elsif (QV="001") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 011
                elsif (QV="010") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '0';  -- 100
                elsif (QV="011") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '0';  -- 101
                elsif (QV="100") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '0';  -- 110
                elsif (QV="101") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '1';  -- 111
                elsif (QV="110") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '1';  -- 001
                elsif (QV="111") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '1';  -- 000
--                else
--                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 000
                end if;
            elsif (M0='1' AND M1='1') then -- gray
                if (QV="000") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '0';  -- 001
                elsif (QV="001") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '0';  -- 011
                elsif (QV="010") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '1';  -- 110
                elsif (QV="011") then
                    Q0 <= '0'; Q1 <= '1'; Q2 <= '0';  -- 010
                elsif (QV="100") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 000
                elsif (QV="101") then
                    Q0 <= '0'; Q1 <= '0'; Q2 <= '1';  -- 100
                elsif (QV="110") then
                    Q0 <= '1'; Q1 <= '1'; Q2 <= '1';  -- 111
                elsif (QV="111") then
                    Q0 <= '1'; Q1 <= '0'; Q2 <= '1';  -- 101
--                else
--                    Q0 <= '0'; Q1 <= '0'; Q2 <= '0';  -- 000
              end if;
            end if;
        end if;
    end process;

    -- Saída
    S <= Q2 & Q1 & Q0;
end architecture;