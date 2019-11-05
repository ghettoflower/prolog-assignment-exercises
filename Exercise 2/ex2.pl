qr(N1,N2,Quotient,Remainder):- (Quotient is N1//N2, Remainder is N1 mod N2).

qr(N1,N2):- qr(N1,N2,Quotient,Remainder), write(N1), write(' divided by '), write(N2), write(' is '),
write(Quotient), write(' Remainder '), write(Remainder), nl.

/*qr(N1,N2):- (Quotient is N1//N2, Remainder is N1 mod N2), write('The quotient is '), write(Quotient), nl, write('The remainder is '), write(Remainder), nl.
*/

q3():- write('Enter the dividend'), read(N1), nl, write('Enter the divisor'), read(N2), nl,
write('The quotient is '), Q is N1//N2, write(Q), nl,
write('The remainder is '), R is N1 mod N2, write(R), nl.

q4():- write('Enter a number'), read(N1), nl, write('Another number'), read(N2), nl,
write('Which operation do you wish to perform?'), nl,
write('a. Add'), nl, write('s. Subtract'), nl,
write('m. Multiply'), nl, write('d. Divide'), nl,
write('e. Exit'), nl,
write('Enter either a, s, m, d or e'), read(X), nl,
option(X, N1, N2), nl.

option(a, N1, N2):- N3 is N1+N2, write(N1), write(' + '), write(N2), write(' = '), write(N3).
option(s, N1, N2):- N3 is N1-N2, write(N1), write(' - '), write(N2), write(' = '), write(N3).
option(m, N1, N2):- N3 is N1*N2, write(N1), write(' * '), write(N2), write(' = '), write(N3).
option(d, N1, N2):- N3 is N1//N2, N4 is N1 mod N2, write(N1), write(' ÷ '), write(N2), write(' = '), write(N3), write(' remainder '), write(N4).
option(e, N1, N2):- write('Exiting...').

q5():- write('Input length'), read(LENGTH),
write('Input width'), read(WIDTH),
area(LENGTH, WIDTH, Z), write('Area of rectangle is '), write(Z), nl,
perimeter(LENGTH, WIDTH, P), write('Perimeter is '), write(P), nl.
area(X, Y, Z):- Z is X*Y.
perimeter(X, Y, Z):- Z is (X+Y) * 2.