Library ieee;
use ieee.std_logic_1164.all;

Entity DETECTORDESEQUENCIA is
    Port (  
           D_in : in STD_LOGIC_VECTOR (3 downto 0);
           Q_out : out STD_LOGIC_Vector (2 downto 0)
    );
end DETECTORDESEQUENCIA;

architecture GATE_LEVEL of DETECTORDESEQUENCIA is

    begin

    Q_out(0) <= (not D_in(2) and D_in(1) and not D_in(0)) or (D_in(2) and not D_in(1) and not D_in(0)) or (D_in(3) and not D_in(2)) or (D_in(3) and D_in(1));
    Q_out(1) <= (not D_in(3) and not D_in(2) and not D_in(1) and D_in(0)) or (not D_in(3) and D_in(1) and not D_in(0)) or (not D_in(3) and D_in(2) and D_in(1)) or (D_in(3) and D_in(2) and not D_in(1) and D_in(0)) or (D_in(2) and D_in(1) and not D_in(0));
    Q_out(2) <=  (not D_in(3) and not D_in(2) and D_in(1) and D_in(0)) or (not D_in(3) and D_in(2) and not D_in(1) and not D_in(0)) or (D_in(3) and D_in(2) and not D_in(1) and D_in(0)) or (D_in(3) and D_in(2) and D_in(1) and not D_in(0));

end GATE_LEVEL;