
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LOGICADETECTOR is
    Port (
        I : in STD_LOGIC;  -- Input signal
        X : in std_logic_vector(2 downto 0);  -- 3-bit input vector
        Q : out std_logic_vector(2 downto 0)  -- 3-bit output vector
    );
end LOGICADETECTOR;

architecture gate_level of LOGICADETECTOR is

begin
    Q(0) <= (NOT X(2) AND X(1) AND NOT X(0)) OR (X(2) AND NOT X(1) AND NOT X(0)) OR (I AND X(1)) OR (I AND NOT X(2));
    Q(1) <= (not I and not X(2) and not X(1) and X(0)) or (not I and X(1) and not X(0)) or (not I and X(2) and X(1)) or (I and X(2) and not X(1) and X(0)) or (X(2) and X(1) and not X(0));
    Q(2) <= (not I and not X(2) and X(1) and X(0)) or (not I and X(2) and not X(1) and not X(0)) or (I and X(2) and not X(1) and X(0)) or (I and X(2) and X(1) and not X(0));

end gate_level;