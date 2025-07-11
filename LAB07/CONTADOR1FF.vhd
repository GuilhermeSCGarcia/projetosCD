library ieee;
use ieee.std_logic_1164.all;

entity CONTADOR1FF is
    port(
        clk : in std_logic;
        ENABLE: in std_logic;
        q_out: out std_logic_vector(7 downto 0);
        c_out: out std_logic
    );
end entity CONTADOR1FF;


architecture behavorial of CONTADOR1FF is

    component CONTADORF is
        port(
            clk: in std_logic;
            ENABLE: in std_logic;
            q_out : out std_logic_vector(3 downto 0);
            c_out: out std_logic
        );
    end component CONTADORF;



signal q_0_s: std_logic_vector(3 downto 0);
signal c_out1: std_logic;
signal c_out2: std_logic;
signal q_1_s: std_logic_vector(3 downto 0);

signal latched_carry_value: std_logic := '0'; -- Sinal interno para armazenar o carry
begin

    inst_contadorf_0 : CONTADORF
        port map(
            clk => clk,
            ENABLE => ENABLE,
            q_out => q_0_s,
            c_out => c_out1
        );

    inst_contadorf_1 : CONTADORF
        port map(
            clk => clk,
            ENABLE => c_out1,
            q_out => q_1_s,
            c_out => c_out2
        );

    q_out <= q_1_s & q_0_s; -- Concatena os dois vetores de saída

    process(clk)
    begin
        if falling_edge(clk) then      
            if c_out2 = '1' then       -- vejo se tenho um valor de saída
                latched_carry_value <= not latched_carry_value;    -- Seta o latch
            end if;
        end if;
    
    end process;

    c_out <= latched_carry_value; 
end behavorial;