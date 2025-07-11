Library IEEE;
use ieee.std_logic_1164.all;

entity LED7SEG_VHDL is
	port(
		X: in std_logic_vector(3 downto 0);
		S: out std_logic_vector(6 downto 0) 
		);
end LED7SEG_VHDL;

architecture GATE_LEVEL of LED7SEG_VHDL is
	begin
	S(0) <= (not(X(3)) and not(X(2)) and not(X(1)) and X(0)) or 
			(not(X(3)) and X(2) and not(X(1)) and not(X(0))) or
			(X(3) and X(2) and not(X(1)) and X(0)) or
			(X(3) and not(X(2)) and X(1) and X(0));
			
	S(1) <= (not(X(3)) and X(2) and not(X(1)) and X(0)) or
			(X(3) and X(2) and not(X(0))) or
			(X(3) and X(1) and X(0)) or
			(X(2) and X(1) and not(X(0)));
			
	S(2) <= (not(X(3)) and not(X(2)) and X(1) and not(X(0))) or
			(X(3) and X(2) and not(X(0))) or
			(X(3) and X(2) and X(1));
			
	S(3) <= (not(X(3)) and X(2) and not(X(1)) and not(X(0))) or
			(not(X(3)) and not(X(2)) and not(X(1)) and X(0)) or
			(X(2) and X(1) and X(0)) or
			(X(3) and not(X(2)) and X(1) and not(X(0)));
	
	S(4) <= (not(X(3)) and X(2) and not(X(1))) or
			(not(X(1)) and X(0) and not(X(2))) or
			(X(0) and not(X(3)));
			
	S(5) <= (X(3) and X(2) and not(X(1)) and X(0)) or
			(not(X(3)) and X(1) and X(0)) or
			(X(0) and not(X(3)) and not(X(2))) or
			(not(X(3)) and not(X(2)) and X(1));
			
	S(6) <= (X(3) and X(2) and not(X(1)) and not(X(0))) or
			(not(X(3)) and X(2) and X(1) and X(0)) or
			(not(X(3)) and not(X(2)) and not(X(1)));
end GATE_LEVEL;