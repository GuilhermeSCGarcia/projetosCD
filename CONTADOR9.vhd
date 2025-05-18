library ieee;
use ieee.std_logic_1164.all;

entity CONTADOR9 is
    port (
        CLK    : in  std_logic;                             -- Entrada de Clock
        CLEAR  : in  std_logic;                             -- Entrada de Clear assíncrono (ativo alto)
        PRESET : in  std_logic;                             -- Entrada de Preset assíncrono (ativo alto)
        CARRY_OUT : OUT std_logic;
        Q_OUT  : out std_logic_vector(3 downto 0)         -- Saída do contador (Q3 Q2 Q1 Q0)
    );
end entity CONTADOR9;

architecture Behavioral of CONTADOR9 is

    -- Declaração do componente para a lógica J/K do contador 0-9.
    -- Certifique-se de que você tem uma entidade chamada LOGICA_JK_CONT09
    -- definida em outro arquivo VHDL (por exemplo, no seu antigo arquivo
    -- que continha a MAQESTADO para o contador até 9, agora renomeada).
    component LOGICA_JK_CONT09 is
        port(
            X_IN  : in  std_logic_vector(3 downto 0);
            J_OUT : out std_logic_vector(3 downto 0);
            K_OUT : out std_logic_vector(3 downto 0)
        );
    end component LOGICA_JK_CONT09;

    -- Declaração do componente FFJK que você criou
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

    -- Sinais internos
    signal s_Q      : std_logic_vector(3 downto 0) := "0000"; -- Estado atual dos flip-flops (saídas Q)
    signal s_J_vec  : std_logic_vector(3 downto 0);         -- Sinais J para os flip-flops
    signal s_K_vec  : std_logic_vector(3 downto 0);         -- Sinais K para os flip-flops

    -- A constante COUNT_PRESET_VALUE não é mais necessária com a conexão direta
    -- constant COUNT_PRESET_VALUE : std_logic_vector(3 downto 0) := "1001";

begin

    -- Instanciação da lógica combinacional LOGICA_JK_CONT09
    U_LOGICA_PROX_ESTADO_09 : LOGICA_JK_CONT09
        port map (
            X_IN  => s_Q,
            J_OUT => s_J_vec,
            K_OUT => s_K_vec
        );

    -- Instanciação explícita dos 4 Flip-Flops JK
    -- As entradas PRESET e CLEAR do contador são conectadas diretamente
    -- aos pinos PRE e CLEAR de todos os flip-flops internos.

    -- Flip-Flop 0 (LSB)
    U_FF_JK_0 : FFJK
        port map (
            J     => s_J_vec(0),
            K     => s_K_vec(0),
            CLK   => CLK,
            PRE   => PRESET, -- Conexão direta
            CLEAR => CLEAR,  -- Conexão direta
            Q     => s_Q(0)
        );

    -- Flip-Flop 1
    U_FF_JK_1 : FFJK
        port map (
            J     => s_J_vec(1),
            K     => s_K_vec(1),
            CLK   => CLK,
            PRE   => PRESET, -- Conexão direta
            CLEAR => CLEAR,  -- Conexão direta
            Q     => s_Q(1)
        );

    -- Flip-Flop 2
    U_FF_JK_2 : FFJK
        port map (
            J     => s_J_vec(2),
            K     => s_K_vec(2),
            CLK   => CLK,
            PRE   => PRESET, -- Conexão direta
            CLEAR => CLEAR,  -- Conexão direta
            Q     => s_Q(2)
        );

    -- Flip-Flop 3 (MSB)
    U_FF_JK_3 : FFJK
        port map (
            J     => s_J_vec(3),
            K     => s_K_vec(3),
            CLK   => CLK,
            PRE   => PRESET, -- Conexão direta
            CLEAR => CLEAR,  -- Conexão direta
            Q     => s_Q(3)
        );

    -- Atribui o estado interno dos flip-flops à saída do contador
    Q_OUT <= s_Q;
    CARRY_OUT <= s_Q(3);

end architecture Behavioral;