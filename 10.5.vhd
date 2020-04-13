library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
entity full_adder is
port (A,B,C: in std_logic; S, C_out: out std_logic);
end full_adder;

architecture arch of full_adder is

type truth_table is array (0 to 7) of std_logic_vector(0 to 4);
constant full_adder_truth_table: truth_table:=("00000", "00101", "01001", "01110", "10001", "10110", "11010", "11111");
signal index: integer range 0 to 7;
signal num: std_logic_vector(0 to 2);
begin
num <= A&B&C;
index <= to_integer(unsigned(num));
S <= full_adder_truth_table(index)(4);
C_out <= full_adder_truth_table(index)(3);
end arch;