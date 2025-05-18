library ieee;
use ieee.std_logic_1164.all;

entity LOGICA_JK_CONT05 is
    port (
        X_IN  : in  std_logic_vector(3 downto 0); -- Entrada do estado atual (X3 X2 X1 X0)
        J_OUT : out std_logic_vector(3 downto 0); -- Saídas J (J3 J2 J1 J0)
        K_OUT : out std_logic_vector(3 downto 0)  -- Saídas K (K3 K2 K1 K0)
    );
end entity LOGICA_JK_CONT05;

architecture Behavioral of LOGICA_JK_CONT05 is
begin
    J_OUT(0) <= '1';
    K_OUT(0) <= '1';
	 
    J_OUT(1) <= X_IN(0) and not(X_IN(2));
    K_OUT(1) <= X_IN(0);
	 
    J_OUT(2) <= X_IN(0) and X_IN(1);
    K_OUT(2) <= X_IN(0);
	 
    J_OUT(3) <= X_IN(3);
    K_OUT(3) <= '1';

end architecture Behavioral;