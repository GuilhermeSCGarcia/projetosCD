Library IEEE;
use ieee.std_logic_1164.all;

entity LED7SEG_VHDL is
	port(
		A,B,C,D: in std_logic;
		S0, S1, S2, S3, S4, S5, S6: out std_logic
		);
end LED7SEG_VHDL;

architecture GATE_LEVEL of LED7SEG_VHDL is
	begin
	S0 <= (not(A) and not(B) and not(C) and D) or 
			(not(A) and B and not(C) and not(D)) or
			(A and B and not(C) and D) or
			(A and not(B) and C and D);
			
	S1 <= (not(A) and B and not(C) and D) or
			(A and B and not(D)) or
			(A and C and D) or
			(B and C and not(D));
			
	S2 <= (not(A) and not(B) and C and not(D)) or
			(A and B and not(D)) or
			(A and B and C);
			
	S3 <= (not(A) and B and not(C) and not(D)) or
			(not(A) and not(B) and not(C) and D) or
			(B and C and D) or
			(A and not(B) and C and not(D));
	
	S4 <= (not(A) and B and not(C)) or
			(not(C) and D and not(B)) or
			(D and not(A));
			
	S5 <= (A and B and not(C) and D) or
			(not(A) and C and D) or
			(D and not(A) and not(B)) or
			(not(A) and not(B) and C);
			
	S6 <= (A and B and not(C) and not(D)) or
			(not(A) and B and C and D) or
			(not(A) and not(B) and not(C));
end GATE_LEVEL;