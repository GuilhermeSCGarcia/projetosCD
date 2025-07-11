
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LAB05 is
    Port (
        clk1     : in  STD_LOGIC;   -- PB1
        Saida    : out  std_logic_vector(6 downto 0)
    );
end LAB05;

architecture struct of LAB05 is
component SOMA4BIT_HEX_VHDL is
    port (
        E : in  std_logic_vector(3 downto 0);
        S   : out std_logic_vector(6 downto 0) -- 7 segmentos
    );
	end component;
	
	component MAQESTADOS is
    port(
        CLK   : in  std_logic;  -- Clock externo
		  M0   : in  std_logic;
		  M1   : in  std_logic;
        S : out std_logic_vector(2 downto 0)  -- Saída do contador
    );
end component;

signal SM : std_logic_vector(2 downto 0);

begin

	ME: MAQESTADOS port map ( clk1,'1','1', SM);
	
	--D1: SOMA4BIT_HEX_VHDL port map( SM,Saida);
	Saida<= "0000" & SM(2 downto 0);

end struct;