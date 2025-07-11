library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DETECTOR is
    Port (
        I       : in STD_LOGIC;                     
        S       : out std_logic_vector(2 downto 0); 
        ENABLE  : in std_logic;                     
        clk     : in std_logic;                     
        RESET   : in std_logic;                     
        clkstop : out std_logic                     
    );
end DETECTOR;

architecture behavorial of DETECTOR is

    component LOGICADETECTOR is
        Port (
            I : in STD_LOGIC;
            X : in std_logic_vector(2 downto 0);
            Q : out std_logic_vector(2 downto 0)
        );
    end component;

    component FFD is
        port(
            clk : in std_logic;
            D   : in std_logic;
            Q   : out std_logic
        );
    end component;

    signal X_e          : std_logic_vector(2 downto 0); 
    signal S_s          : std_logic_vector(2 downto 0); 
    signal enable_input : std_logic_vector(2 downto 0);

begin

    
    LOGICADETECTOR_inst : LOGICADETECTOR
        port map (
            I => I,
            X => X_e,
            Q => S_s
        );

    
    process(S_s, ENABLE, X_e, RESET)
    begin
        if RESET = '1' then
            enable_input <= "000"; -- Força reset
        else
            if ENABLE = '1' then
                enable_input <= S_s; -- Avança normalmente
            else
                enable_input <= X_e; -- Mantém o estado, ja que os bits vão ser iguais, o valor se manté,
            end if;
        end if;
    end process;

    FFD_inst0 : FFD port map (clk => clk, D => enable_input(0), Q => X_e(0));
    FFD_inst1 : FFD port map (clk => clk, D => enable_input(1), Q => X_e(1));
    FFD_inst2 : FFD port map (clk => clk, D => enable_input(2), Q => X_e(2));

   
    process(X_e)
    begin
        if X_e = "111" then
            clkstop <= '1';
        else
            clkstop <= '0';
        end if;
    end process;

    
    S <= X_e;

end behavorial;
