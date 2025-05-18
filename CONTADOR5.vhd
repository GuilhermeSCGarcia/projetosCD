library ieee;
use ieee.std_logic_1164.all;

entity CONTADOR5 is
    port (
        CLK    : in  std_logic;                             -- Entrada de Clock
        CLEAR  : in  std_logic;                             -- Entrada de Clear assíncrono (ativo alto)
        PRESET : in  std_logic;                             -- Entrada de Preset assíncrono (ativo alto)
        CARRY_OUT : OUT std_logic;
        Q_OUT  : out std_logic_vector(3 downto 0)         -- Saída do contador (Q3 Q2 Q1 Q0)
    );
end entity CONTADOR5;

architecture Behavorial of CONTADOR5 is
    
    component LOGICA_JK_CONT05 is
        port(
            X_IN  : in  std_logic_vector(3 downto 0);
            J_OUT : out std_logic_vector(3 downto 0);
            K_OUT : out std_logic_vector(3 downto 0)
        );
    end component LOGICA_JK_CONT05;

    component FFJK is
        port (
            J     : in  std_logic;
            K     : in  std_logic;
            CLK   : in  std_logic;
            PRE   : in  std_logic; -- Preset individual do FF (ativo alto, seta Q para '1')
            CLEAR : in  std_logic; -- Clear individual do FF (ativo alto, reseta Q para '0')
            Q     : out std_logic
        );
    end component FFJK;

    signal s_Q      : std_logic_vector(3 downto 0) := "0000"; -- Estado atual dos flip-flops (saídas Q)
    signal s_J_vec  : std_logic_vector(3 downto 0);         -- Sinais J para os flip-flops
    signal s_K_vec  : std_logic_vector(3 downto 0);         -- Sinais K para os flip


    begin

        U_LOGICA_PROX_ESTADO_05 : LOGICA_JK_CONT05
            port map(
                X_IN  => s_Q,
                J_OUT => s_J_vec,
                K_OUT => s_K_vec
            );
            
            
            U_FFJK_0 : FFJK
                port map(
                    J     => s_J_vec(0),
                    K     => s_K_vec(0),
                    CLK   => CLK,
                    PRE   => PRESET,
                    CLEAR => CLEAR,
                    Q     => s_Q(0)
                );

            U_FFJK_1 : FFJK
                port map(
                    J     => s_J_vec(1),
                    K     => s_K_vec(1),
                    CLK   => CLK,   
                    PRE   => PRESET,
                    CLEAR => CLEAR,
                    Q     => s_Q(1)
                );
            U_FFJK_2 : FFJK 
                port map(
                    J     => s_J_vec(2),
                    K     => s_K_vec(2),
                    CLK   => CLK,
                    PRE   => PRESET,
                    CLEAR => CLEAR,
                    Q     => s_Q(2)
                ); 
            U_FFJK_3 : FFJK
                port map(
                    J     => s_J_vec(3),
                    K     => s_K_vec(3),
                    CLK   => CLK,
                    PRE   => PRESET,
                    CLEAR => CLEAR,
                    Q     => s_Q(3)
                ); 
        Q_OUT <= s_Q; -- Saída do contador
        CARRY_OUT <= s_Q(2);
        
    END architecture Behavorial;



        

