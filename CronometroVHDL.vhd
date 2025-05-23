LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CronometroVHDL IS  
    PORT (
        clk : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        button_stop : IN  STD_LOGIC;
        seletorclk : IN  STD_LOGIC;
        ledclk : OUT STD_LOGIC;
        saidahex0, saidahex1, saidahex2, saidahex3, saidahex4, saidahex5 : out STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END ENTITY CronometroVHDL;

ARCHITECTURE comportamental OF CronometroVHDL IS

    -- Declaração do componente CONTADOR9 que você criou
    COMPONENT CONTADOR9 IS
        PORT (
            CLK       : IN  STD_LOGIC;
            CLEAR     : IN  STD_LOGIC;
            PRESET    : IN  STD_LOGIC;
            CARRY_OUT : OUT STD_LOGIC;
            Q_OUT     : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT CONTADOR9;

    component CONTADOR5 is
        port (
            CLK       : in  std_logic;
            CLEAR     : in  std_logic;
            PRESET    : in  std_logic;
            CARRY_OUT : out std_logic;
            Q_OUT     : out std_logic_vector(3 downto 0)
        );
    end component CONTADOR5;
    
    component Timing_Reference is
        port (
            CLK: in std_logic; 
            CLK_OUTHZ: out std_logic
        );
    end component Timing_Reference;

    component Timing_Reference60k is
        port (
            CLK: in std_logic; 
            CLK_OUTHZ: out std_logic
        );
    end component Timing_Reference60k;

    component LED7SEG_VHDL is
        port(
            Q : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
            S : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)  
        );
    end component LED7SEG_VHDL;


    -- Sinais internos para conectar ao contador
    SIGNAL s_carry_c91, s_carry_c92, s_carry_c93, s_carry_c94, s_carry_c95 : STD_LOGIC;
    SIGNAL s_q_c91, s_q_c92, s_q_c93, s_q_c94, s_q_c95 : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL hexout0, hexout1, hexout2, hexout3, hexout4, hexout5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL s_carry_c51 : STD_LOGIC;
    SIGNAL s_q_c51 : STD_LOGIC_VECTOR(3 DOWNTO 0);

    SIGNAL clk_outHz1k : STD_LOGIC; -- Sinal de clock de saída
    SIGNAL clk_outHz60k : STD_LOGIC; -- Sinal de clock de saída 60kHz
    SIGNAL clk_outHz : STD_LOGIC; -- Sinal de clock de saída convertido

    SIGNAL autopause_on : STD_LOGIC := '0'; -- Sinal de pausa automática
    SIGNAL autopause_estate: STD_LOGIC := '0'; -- Sinal de estado de pausa automática
    SIGNAL estado_stop : STD_LOGIC := '1'; -- Sinal de estado de parada
    SIGNAL sinal_anterior : std_logic := '1'; -- Sinal anterior para detectar borda de subida
    SIGNAL stop: std_logic := '0'; -- Sinal de parada

BEGIN

    
    ledclk <= seletorclk; -- Conecta o clock de saída ao ledclk
    process(clk, reset)
    begin
        if reset = '0' then -- botão ativado no baixo
            estado_stop    <= '1'; --deixa o cronometro parado
            sinal_anterior <= '1'; -- botão inicia em um
            autopause_on   <= '0'; -- autopause desligado no reset
        elsif rising_edge(clk) then
				if seletorclk = '0' then
					clk_outHz <= clk_outHz1k;
				else
					clk_outHz <= clk_outHz60k;
				end if;
				
            if button_stop = '0' and sinal_anterior = '1' then
                estado_stop  <= not estado_stop; -- Alterna o estado de parada
                autopause_on <= '0'; -- Limpa o latch de auto-pause
            else
                -- verifica o estado do RA no display e verifica se esta andando
                if autopause_estate = '1' and estado_stop = '0' then
                    autopause_on <= '1'; -- Ativa o latch de auto-pause
                end if;
            end if;
            sinal_anterior <= button_stop; -- Atualiza o sinal anterior
        end if;
    end process;


    autopause_estate <= '1' WHEN  s_q_c95 = "0110" AND -- Min(saida6) = 6
                           s_q_c51 = "0000" AND -- SecTens(saida5) = 0
                           s_q_c94 = "0010" AND -- SecUnidade(saida4) = 2
                           s_q_c93 = "0110" AND -- mscentena(saida3) = 6
                           s_q_c92 = "1000" AND -- msdezena(saida2) = 8
                           s_q_c91 = "0111"     -- msUnidade(saida1) = 7 
                            ELSE '0';



    stop <= estado_stop or autopause_on; -- controle do pause
    
    
    Base_Clock : Timing_Reference -- clock 1hz
        PORT MAP (
            CLK => clk,
            CLK_OUTHZ => clk_outHz1k
        );

    Clock_60kHz : Timing_Reference60k -- clock 60hz
        PORT MAP (
            CLK => clk,
            CLK_OUTHZ => clk_outHz60k
        );
    
    U_CONTADOR9_1 : CONTADOR9 -- contadores
        PORT MAP (
            CLK       => (clk_outHz) and (not(stop)), -- controle do clock e do pause é feito aqui 
            CLEAR     => NOT(reset),
            PRESET    => '0',
            CARRY_OUT => s_carry_c91,
            Q_OUT     => s_q_c91
        );

    U_CONTADOR9_2 : CONTADOR9
        PORT MAP (
            CLK       => not(s_carry_c91),
            CLEAR     => not(reset),
            PRESET    => '0',
            CARRY_OUT => s_carry_c92,
            Q_OUT     => s_q_c92
        );

    U_CONTADOR9_3 : CONTADOR9
        PORT MAP (
            CLK       => not(s_carry_c92),
            CLEAR     => not(reset),
            PRESET    => '0',
            CARRY_OUT => s_carry_c93,
            Q_OUT     => s_q_c93
        );

    U_CONTADOR9_4 : CONTADOR9
        PORT MAP (
            CLK       => not(s_carry_c93),
            CLEAR     => not(reset),
            PRESET    => '0',
            CARRY_OUT => s_carry_c94,
            Q_OUT     => s_q_c94
        );
    U_CONTADOR5_1 : CONTADOR5
        PORT MAP (
            CLK       => not(s_carry_c94),
            CLEAR     => not(reset),
            PRESET    => '0',
            CARRY_OUT => s_carry_c51,
            Q_OUT     => s_q_c51
        );
    U_CONTADOR9_5 : CONTADOR9
        PORT MAP (
            CLK       => not(s_carry_c51),
            CLEAR     => not(reset),
            PRESET    => '0',
            CARRY_OUT => s_carry_c95,
            Q_OUT     => s_q_c95
        );

        
    -- leds
    U_LED7SEG_1 : LED7SEG_VHDL
        PORT MAP (
            Q => s_q_c91,
            S => hexout0
        );
    U_LED7SEG_2 : LED7SEG_VHDL
        PORT MAP (
            Q => s_q_c92,
            S => hexout1
        );
    U_LED7SEG_3 : LED7SEG_VHDL
        PORT MAP (
            Q => s_q_c93,
            S => hexout2
        );
    U_LED7SEG_4 : LED7SEG_VHDL
        PORT MAP (
            Q => s_q_c94,
            S => hexout3
        );
    U_LED7SEG_5 : LED7SEG_VHDL
        PORT MAP (
            Q => s_q_c51,
            S => hexout4
        );
    U_LED7SEG_6 : LED7SEG_VHDL
        PORT MAP (
            Q => s_q_c95,
            S => hexout5
        );

    -- Saidas para os displays de 7 segmentos
    saidahex0 <= hexout0;
    saidahex1 <= hexout1;
    saidahex2 <= hexout2;
    saidahex3 <= hexout3;
    saidahex4 <= hexout4;
    saidahex5 <= hexout5;

END ARCHITECTURE comportamental;