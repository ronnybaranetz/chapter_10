entity two_gates is
port (A,B,C,D,E: in bit; I: out bit);
end two_gates;
architecture gates of two_gates is
signal not_a: bit;
signal not_e: bit;
begin
not_a <= not A;
not_e <= not E;
I <= (not_a and B and C) xnor (D and not_e);
end gates;