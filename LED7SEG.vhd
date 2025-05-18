Library IEEE;
use ieee.std_logic_1164.all;

entity LED7SEG_VHDL is
    port(
        Q : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
        S : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  
    );
end LED7SEG_VHDL;

architecture GATE_LEVEL of LED7SEG_VHDL is
begin
    -- 
    -- Q(3) A (MSB)
    -- Q(2) B
    -- Q(1) C
    -- Q(0) D (LSB)

    S(0) <= (NOT(Q(3)) AND NOT(Q(2)) AND NOT(Q(1)) AND Q(0)) OR      -- S0
            (NOT(Q(3)) AND Q(2) AND NOT(Q(1)) AND NOT(Q(0))) OR
            (Q(3) AND Q(2) AND NOT(Q(1)) AND Q(0)) OR
            (Q(3) AND NOT(Q(2)) AND Q(1) AND Q(0));

    S(1) <= (NOT(Q(3)) AND Q(2) AND NOT(Q(1)) AND Q(0)) OR          -- S1
            (Q(3) AND Q(2) AND NOT(Q(0))) OR
            (Q(3) AND Q(1) AND Q(0)) OR
            (Q(2) AND Q(1) AND NOT(Q(0)));

    S(2) <= (NOT(Q(3)) AND NOT(Q(2)) AND Q(1) AND NOT(Q(0))) OR      -- S2
            (Q(3) AND Q(2) AND NOT(Q(0))) OR
            (Q(3) AND Q(2) AND Q(1));

    S(3) <= (NOT(Q(3)) AND Q(2) AND NOT(Q(1)) AND NOT(Q(0))) OR      -- S3
            (NOT(Q(3)) AND NOT(Q(2)) AND NOT(Q(1)) AND Q(0)) OR
            (Q(2) AND Q(1) AND Q(0)) OR
            (Q(3) AND NOT(Q(2)) AND Q(1) AND NOT(Q(0)));

    S(4) <= (NOT(Q(3)) AND Q(2) AND NOT(Q(1))) OR                  -- S4
            (NOT(Q(1)) AND Q(0) AND NOT(Q(2))) OR
            (Q(0) AND NOT(Q(3)));

    S(5) <= (Q(3) AND Q(2) AND NOT(Q(1)) AND Q(0)) OR              -- S5
            (NOT(Q(3)) AND Q(1) AND Q(0)) OR
            (Q(0) AND NOT(Q(3)) AND NOT(Q(2))) OR
            (NOT(Q(3)) AND NOT(Q(2)) AND Q(1));

    S(6) <= (Q(3) AND Q(2) AND NOT(Q(1)) AND NOT(Q(0))) OR          -- S6
            (NOT(Q(3)) AND Q(2) AND Q(1) AND Q(0)) OR
            (NOT(Q(3)) AND NOT(Q(2)) AND NOT(Q(1)));

			
end GATE_LEVEL;