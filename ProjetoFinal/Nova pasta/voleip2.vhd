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

                
