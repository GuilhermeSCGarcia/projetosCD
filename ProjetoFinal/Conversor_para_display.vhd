library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Conversor_para_display is
    port (
        Numero :  in std_logic_vector(7 downto 0);
        dezena: out std_logic_vector(3 downto 0);
        unidade: out std_logic_vector(3 downto 0)
    );
end Conversor_para_display;



architecture Behavioral of Conversor_para_display is
    signal num : integer range 0 to 99;
    signal dez : integer range 0 to 9;
    signal uni : integer range 0 to 9;
begin
        num <= to_integer(unsigned(Numero));
        dez <= (num/10) mod 10;
        uni <= num mod 10;

        dezena <= std_logic_vector(to_unsigned(dez, 4));
        unidade <= std_logic_vector(to_unsigned(uni, 4));
    end Behavioral;