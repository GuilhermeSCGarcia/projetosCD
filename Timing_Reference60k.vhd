library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Timing_Reference60k is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_outHz: out std_logic);-- Can check it using PIN A8 - LEDR0

	end Timing_Reference60k;
  
architecture freq_div of Timing_Reference60k is
  
signal count: integer:=1; --conta cada iteração
signal tmp : std_logic := '1'; -- usado para controlar o clock de saída
  
begin
  
process(clk)
	begin
	if(clk'event and clk='1') then
		count <=count+1;
		if (count = 50000000/120000) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clk_outHz <= tmp;
end process;
 
end freq_div;