library ieee;
use ieee.std_logic_1164.all;

entity CONTROLADOR is
    port (  
        CLK : in std_logic;
        CLK_STOP : in std_logic;
        PAUSE : in std_logic;            
        DETECTOR_STATE: in std_logic_vector(2 downto 0); -- Estado atual do DETECTOR
        MEMORYCONTROL : out std_logic;
        PISOCONTROL : out std_logic;
        RESETCONTROL : out std_logic;
        DETECTORCONTROL : out std_logic; -- Ligado ao ENABLE do DETECTOR
        ESTADO : out std_logic_vector(3 downto 0);       -- Estado do contador
        pause_stateS : out std_logic                     -- LED de pausa
    );
end entity CONTROLADOR;

architecture Behavioral of CONTROLADOR is

    component CONTADOR9 is
        port (
            CLK : in std_logic;
            CLEAR : in std_logic;
            PRESET : in std_logic;
            ENABLE : in std_logic := '1';
            CARRY_OUT : out std_logic;
            Q_OUT : out std_logic_vector(3 downto 0)
        );
    end component;

    signal qout : std_logic_vector(3 downto 0);
    signal sistema_pausado : std_logic := '0';
    signal last_pause : std_logic := '0';

begin

    -- Instância do contador
    inst_CONTADOR9 : CONTADOR9
        port map (
            CLK => CLK,
            CLEAR => '0',
            PRESET => '0',
            ENABLE => (not sistema_pausado), -- controla o sistema pausado
            CARRY_OUT => open,
            Q_OUT => qout
        );

    -- Controle de pausa
    process(CLK)
    begin
        if falling_edge(CLK) then
            if PAUSE = '1' and last_pause = '0' then       -- a pausa pelo botão
                sistema_pausado <= not sistema_pausado; 
            elsif CLK_STOP = '1' then                      -- se botão de pausa não for estiver pressionado, pausa pelo CLK_STOP
                sistema_pausado <= '1'; 
            end if;
            last_pause <= PAUSE; -- troca o ultimo sinal do botão
        end if;
    end process;

    
    DETECTORCONTROL <= '1' when (
        sistema_pausado = '0' and 
        qout /= "0000" and        
        qout /= "1001"           
    ) else '0';

    -- LED de pausa
    pause_stateS <= sistema_pausado;
 
    -- Saída do estado para o display (ESTADO)
    ESTADO <= qout; 
 

    -- Controle das saídas do sistema
    process(qout, sistema_pausado)
    begin
        MEMORYCONTROL   <= '0';
        PISOCONTROL     <= '0';
        RESETCONTROL    <= '0';
        case qout is
            when "0000" =>
                PISOCONTROL <= '1';

            when "1001" =>
                if sistema_pausado = '0' then
                    MEMORYCONTROL <= '1';
                    RESETCONTROL  <= '1';
                end if;

            when others =>
                null;
        end case;
    end process;
end Behavioral;
