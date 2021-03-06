library ieee;
use ieee.std_logic_1164.all;

entity not_gate is
port(
	a: in std_logic;
	b: out std_logic
);
end not_gate;
architecture arch of not_gate is
begin
b <= not a;
end arch;

library ieee;
use ieee.std_logic_1164.all;

entity and2_gate is
port(
	a, b: in std_logic;
	c: out std_logic
);
end and2_gate;

architecture arch of and2_gate is
begin
c <= a and b;
end arch;

library ieee;
use ieee.std_logic_1164.all;
entity and3_gate is
port(
	a, b, c: in std_logic;
	d: out std_logic
);
end and3_gate;

architecture arch of and3_gate is
begin
d <= a and b and c;
end arch;

library ieee;
use ieee.std_logic_1164.all;
entity xor2_gate is 
port(
	a, b: in std_logic;
	c: out std_logic
);
end xor2_gate;
architecture arch of xor2_gate is
begin
c <= a xor b;
end arch;

library ieee;
use ieee.std_logic_1164.all;

entity c_structural is
port(
	A, B, C, D, E: in std_logic;
	I: out std_logic
);
end c_structural;

architecture arch of c_structural is

component not_gate
port(
	a: in std_logic;
	b: out std_logic
);
end component;

component xor2_gate
port(
	a, b: in std_logic;
	c: out std_logic
);
end component;

component and2_gate
port(
	a, b: in std_logic;
	c: out std_logic
);
end component;

component and3_gate
port(
	a, b, c: in std_logic;
	d: out std_logic
);
end component;

signal and1_to_xor1: std_logic;
signal and2_to_xor1: std_logic;
signal xor1_to_not1: std_logic;
signal not_e: std_logic;
signal not_a: std_logic;

begin

not_a <= not A;
not_E <= not E;
and1: and3_gate port map(a => not_a, b => B, c => C, d => and1_to_xor1);
and2: and2_gate port map(a => D, b => not_e, c => and2_to_xor1);
xor1: xor2_gate port map(a => and1_to_xor1, b => and2_to_xor1, c => xor1_to_not1);
not2: not_gate port map(a => xor1_to_not1, b => I);

end arch;
