library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity volei is
    port (
        clk: in std_logic;
        timeA : in std_logic;
        timeB : in std_logic;
        correction_sw : in std_logic; 
        placarA : out std_logic_vector(7 downto 0);
        placarB : out std_logic_vector(7 downto 0);
        reset: in std_logic;
        setA : out std_logic_vector(3 downto 0);
        setB : out std_logic_vector(3 downto 0);
        reset_led : out std_logic;
        correction_led : out std_logic;
        tie_break_led : out std_logic
    );
end volei;


architecture beavorial of volei is
    signal scoreA : integer range 0 to 100 := 0;
    signal scoreB : integer range 0 to 100 := 0;
    signal setAs: integer range 0 to 3 := 0;
    signal setBs: integer range 0 to 3 := 0;
    signal reset_leds : std_logic := '0';
    signal correction_leds : std_logic := '0';
    signal tie_break_leds : std_logic := '0';
    signal timeA_prev : std_logic := '1';
    signal timeB_prev : std_logic := '1';

begin

    process(reset, clk)
    begin
        if reset = '1' then
            scoreA <= 0;
            scoreB <= 0;
            setAs <= 0;
            setBs <= 0;
            timeA_prev <= '1';
            timeB_prev <= '1';
        elsif rising_edge(clk) then
            timeA_prev <= timeA;
            timeB_prev <= timeB;

            if setAs < 3 and setBs < 3 then
                
                if timeA = '0' and timeA_prev = '1' then
                    if correction_sw = '1' then 
                        if scoreA > 0 then
                            scoreA <= scoreA - 1;
                        end if;
                    else 
                        if setAs = 2 and setBs = 2 then 
                            if scoreA >= 14 and scoreA >= scoreB + 1 then
                                setAs <= setAs + 1;
                                scoreA <= 0; scoreB <= 0;
                            else
                                scoreA <= scoreA + 1;
                            end if;
                        else 
                            if scoreA >= 24 and scoreA >= scoreB + 1 then
                                setAs <= setAs + 1;
                                scoreA <= 0; scoreB <= 0;
                            else
                                scoreA <= scoreA + 1;
                            end if;
                        end if;
                    end if;
                end if;

                
                if timeB = '0' and timeB_prev = '1' then
                    if correction_sw = '1' then 
                        if scoreB > 0 then
                            scoreB <= scoreB - 1;
                        end if;
                    else 
                        if setAs = 2 and setBs = 2 then
                            if scoreB >= 14 and scoreB >= scoreA + 1 then
                                setBs <= setBs + 1;
                                scoreA <= 0; scoreB <= 0;
                            else
                                scoreB <= scoreB + 1;
                            end if;
                        else
                            
                            if scoreB >= 24 and scoreB >= scoreA + 1 then
                                setBs <= setBs + 1;
                                scoreA <= 0; scoreB <= 0;
                            else
                                scoreB <= scoreB + 1;
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end if;

        if reset = '1' then
            reset_leds <= '1';
        else
            reset_leds <= '0';
        end if;
        if correction_sw = '1' then
            correction_leds <= '1';
        else
            correction_leds <= '0';
        end if;
        if setAs = 2 and setBs = 2 then
            tie_break_leds <= '1';
        else
            tie_break_leds <= '0';
        end if;

    end process;


	placarA <= std_logic_vector(to_unsigned(scoreA, 8));
	placarB <= std_logic_vector(to_unsigned(scoreB, 8));
    setA <= std_logic_vector(to_unsigned(setAs, 4));
    setB <= std_logic_vector(to_unsigned(setBs, 4));
    reset_led <= reset_leds;
    correction_led <= correction_leds;
    tie_break_led <= tie_break_leds;


end beavorial;
