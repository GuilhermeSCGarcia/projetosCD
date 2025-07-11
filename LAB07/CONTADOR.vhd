library ieee;
use ieee.std_logic_1164.all;

entity LOGICA_JK_CONT09 is
    port(
        ENABLE : in std_logic; -- Habilita a lógica JK
        X_IN  : in  std_logic_vector(3 downto 0); -- Entrada dos estados atuais Q3, Q2, Q1, Q0
        J_OUT : out std_logic_vector(3 downto 0); -- Saídas J para os Flip-Flops
        K_OUT : out std_logic_vector(3 downto 0)  -- Saídas K para os Flip-Flops
    );
end entity LOGICA_JK_CONT09;

architecture Behavioral of LOGICA_JK_CONT09 is
begin
    J_OUT(0) <= '1'                when ENABLE = '1' else '0';
    K_OUT(0) <= '1'                when ENABLE = '1' else '0';
	 
    J_OUT(1) <= (X_IN(0) and not(X_IN(3))) when ENABLE = '1' else '0';
    K_OUT(1) <= (X_IN(0) and not(X_IN(3))) when ENABLE = '1' else '0';
	 
    J_OUT(2) <= (X_IN(0) and X_IN(1))      when ENABLE = '1' else '0';
    K_OUT(2) <= (X_IN(0) and X_IN(1))      when ENABLE = '1' else '0';
	 
    J_OUT(3) <= (X_IN(0) and X_IN(1) and X_IN(2)) when ENABLE = '1' else '0';
    K_OUT(3) <= X_IN(0)                when ENABLE = '1' else '0';

end architecture Behavioral;