library ieee;
use ieee.std_logic_1164.all;

entity MAQESTADO is
    port(
        X0  : in  std_logic; X1  : in  std_logic; X2  : in  std_logic; X3  : in  std_logic;
        XN0 : in  std_logic; XN1 : in  std_logic; XN2 : in  std_logic; XN3 : in  std_logic;
        J0  : out std_logic; K0  : out std_logic;
        J1  : out std_logic; K1  : out std_logic;
        J2  : out std_logic; K2  : out std_logic;
        J3  : out std_logic; K3  : out std_logic
    );
end entity MAQESTADO;

architecture Behavioral of MAQESTADO is
begin
    J0 <= (XN2 AND XN1) OR (X3 AND X2 AND X1);
    K0 <= X1 AND (XN3 OR X2); --
    J1 <= X3 OR (X2 AND XN0) OR (XN2 AND X0); 
    K1 <= ((XN3) AND X0) OR (X2 AND (not X0)) OR (X3 AND (not X2)); 
    J2 <= (X1 AND XN0) OR (X3 AND XN0) OR (X3 AND X1); 
    K2 <= (X3 AND X1 AND X0) OR (XN3 AND XN1) OR (XN3 AND XN0); 
    J3 <= (X2 AND XN1) OR (XN2 AND X1 AND X0); 
    K3 <= (XN2 AND XN1 AND XN0) OR (X2 AND X1); 

end architecture Behavioral;