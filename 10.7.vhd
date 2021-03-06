library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity divider is
port (A,B,C,D: in std_logic_vector(0 to 15); result: out integer);
end divider;

architecture arch of divider is

signal sum: std_logic_vector(16 downto 0);
signal int_sum: integer;
begin
sum <= '0'&A + B + C + D;
int_sum <= to_integer(unsigned(sum));
result <= int_sum / 4;
end arch;
© 2020 GitHub, Inc.