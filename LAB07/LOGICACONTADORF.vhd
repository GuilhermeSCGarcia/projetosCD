library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LOGICACONTADORF is
    port(
        current_state : in std_logic_vector(3 downto 0);
        ENABLE: in std_logic;
        next_state: out std_logic_vector(3 downto 0);
        carry_out: out std_logic
    );
end entity LOGICACONTADORF;

architecture behavorial of LOGICACONTADORF is

begin
    process(current_state, ENABLE)
    begin
        if ENABLE = '1' then
            next_state <= std_logic_vector(unsigned(current_state) + 1); -- converte o vetor para número, soma um e dps volta para vvetor
            if unsigned(current_state) = 15 then
                carry_out <= '1'; 
            else
                carry_out <= '0'; 
            end if;
        else
            next_state <= current_state;
            carry_out <= '0';
        end if;
    end process;

end architecture behavorial;