library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity state_machine_jk is
    Port (
        M0, M1        : in  std_logic;
        Q0, Q1, Q2    : in  std_logic;
        J0, K0        : out std_logic;
        J1, K1        : out std_logic;
        J2, K2        : out std_logic
    );
end state_machine_jk;

architecture gate_level of state_machine_jk is

begin
    J0 <= (not Q0) and ((not M1 and not Q0) or (Q2 and Q1 and not Q0) or (M1 and M0 and Q2 and Q1) or (M1 and M0 and not Q2 and not Q1) or (M1 and not M0 and not Q2 and Q0) or (M1 and not M0 and not Q1 and Q0));
    K0 <= Q0 and not((not M1 and not Q0) or (Q2 and Q1 and not Q0) or (M1 and M0 and Q2 and Q1) or (M1 and M0 and not Q2 and not Q1) or (M1 and not M0 and not Q2 and Q0) or (M1 and not M0 and not Q1 and Q0));

    J1 <= (not Q1) and ((M1 and not M0 and not Q1) or (not M0 and not Q1 and Q0) or (M1 and M0 and Q1 and not Q0) or (M1 and not Q2 and not Q1 and Q0) or (M0 and not Q2 and Q1 and Q0) or (not M1 and M0 and not Q1 and not Q0) or (not M1 and not M0 and Q1 and not Q0) or (not M1 and M0 and Q1 and Q0));
    K1 <= Q1 and not((M1 and not M0 and not Q1) or (not M0 and not Q1 and Q0) or (M1 and M0 and Q1 and not Q0) or (M1 and not Q2 and not Q1 and Q0) or (M0 and not Q2 and Q1 and Q0) or (not M1 and M0 and not Q1 and not Q0) or (not M1 and not M0 and Q1 and not Q0) or (not M1 and M0 and Q1 and Q0));

    J2 <= (not Q2) and ((not M0 and not Q2 and Q1 and Q0) or (not M1 and M0 and not Q2 and not Q1 and not Q0) or (M1 and not Q2 and Q1 and not Q0));
    K2 <= Q2 and not((not M0 and not Q2 and Q1 and Q0) or (not M1 and M0 and not Q2 and not Q1 and not Q0) or (not M0 and Q2 and not Q1) or (not M1 and not M0 and Q2 and not Q0) or (Q2 and not Q1 and Q0) or (M0 and Q2 and Q1) or (M1 and not Q2 and Q1 and not Q0));

end gate_level;
