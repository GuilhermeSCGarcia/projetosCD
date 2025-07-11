library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CONTADORF is
    port(
        clk : in std_logic;
        ENABLE: in std_logic;
        q_out: out std_logic_vector(3 downto 0);
        c_out: out std_logic
    );
end entity CONTADORF;

architecture behavorial of CONTADORF is

    component FFD is
        port(
            clk: in std_logic;
            D: in std_logic;
            Q: out std_logic
        );
    end component FFD;

    component LOGICACONTADORF is
        port(
            current_state : in std_logic_vector(3 downto 0);
            ENABLE: in std_logic;
            next_state: out std_logic_vector(3 downto 0);
            carry_out: out std_logic
        );
    end component LOGICACONTADORF;


    signal D_s: std_logic_vector(3 downto 0);
    signal Q_s: std_logic_vector(3 downto 0);

begin
    
    inst_LOGICACONTADORF: LOGICACONTADORF
        port map(
            current_state => Q_s,
            Enable => ENABLE,
            next_state => D_s,
            carry_out => c_out
        );

    inst_FFD0: FFD
        port map(
            clk => clk,
            D => D_s(0),
            Q => Q_s(0)
        );
    inst_FFD1: FFD
        port map(
            clk => clk,
            D => D_s(1),
            Q => Q_s(1)
        );
    inst_FFD2: FFD
        port map(
            clk => clk,
            D => D_s(2),
            Q => Q_s(2)
        );
    inst_FFD3: FFD
        port map(
            clk => clk,
            D => D_s(3),
            Q => Q_s(3)
        );  

    q_out <= Q_s;
end architecture behavorial;
    