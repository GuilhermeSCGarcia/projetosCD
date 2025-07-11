library ieee;
use ieee.std_logic_1164.all;

entity DETECTORDESEQUENCIA_TOP is
    port(
        clk: in std_logic;
        M0: in std_logic; -- Renomeada de 'chave' para 'chave0'
        M1: in std_logic; -- Nova chave para M1
        led_chave0: out std_logic; -- Renomeada de 'led_chave'
        led_seqdetectada :out std_logic;
        Q0_out : out std_logic; -- Saída para monitorar q0
        Q1_out : out std_logic; -- Saída para monitorar q1
        Q2_out : out std_logic; -- Saída para monitorar q2
        Hex_out: out std_logic_vector(6 downto 0)
    );
end DETECTORDESEQUENCIA_TOP;


architecture COMPORTALMENTAL of DETECTORDESEQUENCIA_TOP is

component FFJK is  -- Componente para Flip-Flop JK (precisa ser definido/fornecido)
    port(
        clk: in std_logic;
        J: in std_logic;
        K: in std_logic;
        Q: out std_logic
    );  
end component;

component state_machine_jk is -- Novo componente da máquina de estados
    Port (
        M0, M1        : in  std_logic;
        Q0, Q1, Q2    : in  std_logic;   -- estado atual
        J0, K0        : out std_logic;
        J1, K1        : out std_logic;
        J2, K2        : out std_logic
    );
end component;

-- O componente DETECTORDESEQUENCIA e FFD foram removidos pois não são mais usados diretamente aqui
-- para a lógica principal da máquina de estados.
-- Se FFD fosse usado para outros propósitos, sua declaração poderia permanecer.


component LED7SEG_VHDL is
    port(
        A,B,C,D: in std_logic;
        S0, S1, S2, S3, S4, S5, S6: out std_logic
        );
end component;

-- Sinais para as saídas J e K da state_machine_jk
signal s_j0, s_k0 : std_logic;
signal s_j1, s_k1 : std_logic;
signal s_j2, s_k2 : std_logic;

-- Sinais para o estado atual (saídas dos Flip-Flops JK)
signal q0, q1, q2: std_logic;

signal led_out : std_logic_vector(6 downto 0);

begin
    -- Instâncias dos Flip-Flops JK
    ffjk0 : FFJK port map(clk => clk, J => s_j0, K => s_k0, Q => q0);
    ffjk1 : FFJK port map(clk => clk, J => s_j1, K => s_k1, Q => q1);
    ffjk2 : FFJK port map(clk => clk, J => s_j2, K => s_k2, Q => q2);

    -- Instância da nova máquina de estados (lógica combinacional para J e K)
    maq_estado_jk : state_machine_jk
        port map(
            M0 => M0,      -- Conectando chave0 a M0
            M1 => M0,      -- Conectando chave1 a M1
            Q0 => q0, Q1 => q1, Q2 => q2, -- Estado atual
            J0 => s_j0, K0 => s_k0,
            J1 => s_j1, K1 => s_k1,
            J2 => s_j2, K2 => s_k2
        );



    --led
    led7seg : LED7SEG_VHDL PORT MAP('0',q2, q1, q0, led_out(0), led_out(1), led_out(2), led_out(3), led_out(4), led_out(5), led_out(6));
    --led chave0
    led_chave0 <= M0; -- led_chave agora reflete chave0. SSe precisar de um LED para chave1, adicione outra porta e atribuição.

    --saida HEX
    Hex_out <= led_out;
	 
    -- Saídas para monitorar o estado atual
    Q0_out <= q0;
    Q1_out <= q1;
    Q2_out <= q2;

    process(q2, q1, q0)
    begin
        if (q2 = '1' and q1 = '1' and q0 = '1') then
            led_seqdetectada <= '1';
        else
            led_seqdetectada <= '0';
        end if;
    end process;
	 
	 

end COMPORTALMENTAL;