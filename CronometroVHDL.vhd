-- Dentro do arquivo, por exemplo, CronometroVHDL.vhd

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CronometroVHDL IS  -- <--- ESTE É O NOME QUE VOCÊ PRECISA
    PORT (
        clk   : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        led   : OUT STD_LOGIC
    );
END ENTITY CronometroVHDL;

ARCHITECTURE comportamental OF CronometroVHDL IS
BEGIN
    -- sua lógica aqui
END ARCHITECTURE comportamental;