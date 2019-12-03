gcd(Int1, 0, Int1):- !.
gcd(0, Int1, Int1):- !.
gcd(Int1, Int2, Gcd):- Int1 > 0, Int1 > Int2, !, N is Int1 mod Int2, gcd(Int2, N, Gcd).
gcd(Int1, Int2, Gcd):- Int2 > 0, Int1 < Int2, !, N is Int2 mod Int1, gcd(Int1, N, Gcd).