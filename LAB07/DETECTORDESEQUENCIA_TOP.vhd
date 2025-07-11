library ieee;
use ieee.std_logic_1164.all;

entity DETECTORDESEQUENCIA_TOP is
    port(
        clk: in std_logic;
        chave: in std_logic;
        led_chave: out std_logic;
		  led_seqdetectada :out std_logic;
        Hex_out: out std_logic_vector(6 downto 0)
    );
end DETECTORDESEQUENCIA_TOP;


architecture COMPORTALMENTAL of DETECTORDESEQUENCIA_TOP is

component FFD is
    port(
        clk: in std_logic;
        D: in std_logic;
        Q: out std_logic
    );  
end component;

component DETECTORDESEQUENCIA is
    Port (  
           D_in : in STD_LOGIC_VECTOR (3 downto 0);
           Q_out : out STD_LOGIC_VECTOR (2 downto 0)
    );
end component;

component LED7SEG_VHDL is
    port(
        A,B,C,D: in std_logic;
        S0, S1, S2, S3, S4, S5, S6: out std_logic
        );
end component;

signal d0, d1, d2: std_logic;
signal q0, q1, q2: std_logic;
signal q_prox : std_logic_vector(2 downto 0);
signal led_out : std_logic_vector(6 downto 0);

begin
    --FFD
    ffd0 : FFD port map(clk, d0, q0);
    ffd1 : FFD port map(clk, d1, q1);
    ffd2 : FFD port map(clk, d2, q2);

    --MAQDETECSEQUENCIA
    maqdetecseq : DETECTORDESEQUENCIA
        PORT MAP(
            D_in => chave & q2 & q1 & q0,
            Q_out => q_prox
        );

    d0 <= q_prox(0);
    d1 <= q_prox(1);
    d2 <= q_prox(2);



    --led
    led7seg : LED7SEG_VHDL PORT MAP('0',q2, q1, q0, led_out(0), led_out(1), led_out(2), led_out(3), led_out(4), led_out(5), led_out(6));
    --led chave
    led_chave <= chave;

    --saida HEX
    Hex_out <= led_out;
	 
    process(q2, q1, q0)
    begin
        if (q2 = '1' and q1 = '1' and q0 = '1') then
            led_seqdetectada <= '1';
        else
            led_seqdetectada <= '0';
        end if;
    end process;
	 
	 

end COMPORTALMENTAL;