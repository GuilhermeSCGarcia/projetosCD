library IEEE;
use ieee.std_logic_1164.all;

entity DECODER is
	port(
		X0, X1, X2, X3: in std_logic;
		S0, S1, S2, S3, S4, S5, S6: out std_logic
	);
end DECODER;

architecture LOGICA of DECODER is 
	begin
		S0 <= (not(X3) and not(X2) and not(X1) and X0) or (not(X3) and X2 and not(X1) and not(X0)) or (X3 and X2 and not(X1) and X0) or (X3 and not(X2) and X1 and X0);
		S1 <= (not(X3) and X2 and not(X1) and X0) or (X3 and x2 and not(X0)) or (X3 and X1 and X0) or (X2 and X1 and not(X0));
		S2 <= (not(X3) and not(X2) and X1 and not(X0)) or (X3 and X2 and not(X0)) or (X3 and X2 and X1); 
		S3 <= (not(X3) and not(X2) and not(X1) and X0) or (not(X3) and X2 and not(X1) and not(X0)) or (X3 and not(X2) and X1 and not(X0)) or (X2 and X1 and X0);
		S4 <= (not(X3) and X2 and not(X1)) or (not(X2) and not(X1) and X0) or (not(X3) and X0);
		S5 <= (X3 and X2 and not(X1) and X0) or (not(X3) and not(X2) and X0) or (not(X3) and X1 and X0) or (not(X3) and not(X2) and X1);
		S6 <= (not(X3) and not(X2) and not(X1)) or (not(X3) and X2 and X1 and X0) or (X3 and X2 and not(X1) and not(X0));
	end LOGICA;