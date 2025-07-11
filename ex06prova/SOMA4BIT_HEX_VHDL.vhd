Library IEEE;
use ieee.std_logic_1164.all;

entity SOMA4BIT_HEX_VHDL is
    port (
        E : in  std_logic_vector(3 downto 0);
        S   : out std_logic_vector(6 downto 0) -- 7 segmentos
    );
	end SOMA4BIT_HEX_VHDL;
	
architecture GATE_LEVEL of SOMA4BIT_HEX_VHDL is
	begin
	S(0) <= ( not(E(3)) and not(E(2)) and not(E(1)) and E(0) ) or
			( not(E(3)) and E(2) and not(E(1)) and not(E(0)) ) or
			( E(3) and E(2) and not(E(1)) and E(0) ) or
			( E(3) and not(E(2)) and E(1) and E(0));
	S(1)<= ( not(E(3)) and E(2) and not(E(1)) and E(0) ) or
			( E(3) and E(1) and E(0) ) or
			( E(2) and E(1) and not(E(0)) ) or 
			( E(3) and E(2) and not(E(0)) );
	S(2) <= ( not(E(3)) and not(E(2)) and E(1) and not(E(0)) ) or
			( E(3) and E(2) and not(E(0)) ) or
			( E(3) and E(2) and E(1));
	S(3) <= ( not(E(3)) and not (E(2)) and not(E(1)) and E(0)) or
			( not(E(3)) and E(2) and not(E(1)) and not(E(0))) or
			( E(3) and not(E(2)) and E(1) and not(E(0)) ) or
			( E(2) and E(1) and E(0) );
	S(4) <= ( not(E(3)) and E(2) and not(E(1)) ) or
			( not(E(2)) and not(E(1)) and E(0) ) or
			( not(E(3)) and E(0) );
	S(5)	<= ( E(3) and E(2) and not(E(1)) and E(0) ) or
			( not(E(3)) and E(1) and E(0) ) or
			( not(E(3)) and not(E(2)) and E(0) ) or
			( not(E(3)) and not(E(2)) and E(1));
	S(6) <= ( E(3) and E(2) and not(E(1)) and not(E(0)) ) or
			( not(E(3)) and E(2) and E(1) and E(0) ) or
			( not(E(3)) and not(E(2)) and not(E(1)) );
	
	end GATE_LEVEL;