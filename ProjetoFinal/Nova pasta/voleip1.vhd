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

