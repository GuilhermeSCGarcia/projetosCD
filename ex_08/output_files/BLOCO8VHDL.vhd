library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BLOCO8PROVA is
    Port (
        EA0, EA1, EA2, EA3 : in std_logic;
        EB0, EB1, EB2, EB3 : in std_logic;
        EC0, EC1, EC2, EC3 : in std_logic;
        ED0, ED1, ED2, ED3 : in std_logic;
        S0, S1             : in std_logic;
        X0, X1, X2, X3     : out std_logic
    );
end BLOCO8PROVA;

architecture GATELEVEL of BLOCO8PROVA is
begin


    X0 <= (EA0 and not(S0) and not(S1)) or (EB0 and S0 and not(S1)) or (EC0 and not(S0) and S1) or (ED0 and S0 and S1);
	 
	 
    X1 <= (EA1 and not(S0) and not(S1)) or (EB1 and S0 and not(S1)) or (EC1 and not(S0) and S1) or (ED1 and S0 and S1);
	 
	 
    X2 <= (EA2 and not(S0) and not(S1)) or (EB2 and S0 and not(S1)) or (EC2 and not(S0) and S1) or (ED2 and S0 and S1);
	 
	 
    X3 <= (EA3 and not(S0) and not(S1)) or (EB3 and S0 and not(S1)) or (EC3 and not(S0) and S1) or (ED3 and S0 and S1);
	 
	 
end GATELEVEL;


