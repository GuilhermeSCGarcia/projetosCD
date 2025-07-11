library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PISO8BITS is
    Port (
        clk : in std_logic;
        mode : in std_logic;
        enable : in std_logic; 
        data_in : in std_logic_vector(7 downto 0);
        data_out : out std_logic
    );
end PISO8BITS;

architecture behavorial of PISO8BITS is

signal data_s : std_logic_vector(7 downto 0);

begin


    process(clk)
    begin
        if falling_edge(clk) then
            if enable = '1' then -- Só atualiza se o enable estiver ativo
                if mode = '1' then
                    data_s <= data_in;
                else
                    data_s <= data_s(6 downto 0) & '0'; -- desloca os bits agrupando os 7 primeiros nas próximas posições e atribuindo zero ao ultimo
                end if;
            end if; -- Se enable = '0', não faz nada.
        end if;
    end process;



    data_out <= data_s(7);


end behavorial;