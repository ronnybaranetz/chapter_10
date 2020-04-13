entity behavioral is
port (A,B,C,D,E: in bit; I: out bit);
end behavioral;
architecture e_1 of behavioral is
signal not_a: bit;
signal not_e: bit;
signal not_d: bit;
signal not_b: bit;
signal not_c: bit;
begin
process(A, B, C, D, E)
begin
not_a <= not A;
not_e <= not E;
not_d <= not D;
not_b <= not B;
not_c <= not C;
if (not_a = '1' and B = '1' and C = '1' and D = '1' and not_e = '1') then I <= '1';
elsif (not_d = '0' and E = '0') then I <= '0';
elsif (A = '0' and not_b = '0' and not_c = '0') then I <= '0';
else I <= '1';
end if;
end process;
end e_1;