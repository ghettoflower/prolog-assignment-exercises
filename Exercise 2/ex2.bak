qr(N1,N2,Quotient,Remainder):- (Quotient is N1//N2, Remainder is N1 mod N2).

qr(N1,N2):- qr(N1,N2,Quotient,Remainder), write(N1), write(' divided by '), write(N2), write(' is '),
write(Quotient), write(' Remainder '), write(Remainder), nl.

/*qr(N1,N2):- (Quotient is N1//N2, Remainder is N1 mod N2), write('The quotient is '), write(Quotient), nl, write('The remainder is '), write(Remainder), nl.
*/

q3():- write('Enter the first number'), read(N1), nl, write('Enter the second number'), read(N2), nl,
write('The quotient is '), Q is N1//N2, write(Q), nl,
write('The remainder is '), R is N1 mod N2, write(R), nl.

q5():- write('Input length'), read(LENGTH),
write('Input width'), read(WIDTH),
area(LENGTH, WIDTH, Z), write('Area of rectangle is '), write(Z), nl,
perimeter(LENGTH, WIDTH, P), write('Perimeter is '), write(P), nl.
area(X, Y, Z):- Z is X*Y.
perimeter(X, Y, Z):- Z is (X+Y) * 2.