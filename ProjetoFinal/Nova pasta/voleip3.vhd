                
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
