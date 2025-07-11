library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BLOCO8PROVA is
    Port (
        A, B, C, D : in  std_logic_vector(3 downto 0);
        S0, S1     : in  std_logic;
        X          : out std_logic_vector(3 downto 0)
    );
end BLOCO8PROVA;

architecture GATELEVEL of BLOCO8PROVA is
begin

    X(0) <= (A(0) and not S0 and not S1) or (B(0) and S0 and not S1) or (C(0) and not S0 and S1) or (D(0) and S0 and S1);
	 
    X(1) <= (A(1) and not S0 and not S1) or (B(1) and S0 and not S1) or (C(1) and not S0 and S1) or (D(1) and S0 and S1);
	 
    X(2) <= (A(2) and not S0 and not S1) or (B(2) and S0 and not S1) or (C(2) and not S0 and S1) or (D(2) and S0 and S1);
	 
    X(3) <= (A(3) and not S0 and not S1) or (B(3) and S0 and not S1) or (C(3) and not S0 and S1) or (D(3) and S0 and S1);
	 
end GATELEVEL;



