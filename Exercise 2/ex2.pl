qr(N1,N2,Quotient,Remainder):- (Quotient is N1//N2, Remainder is N1 mod N2).
qr(N1,N2):- (Quotient is N1//N2, Remainder is N1 mod N2), write('The quotient is '), write(Quotient), nl, write('The remainder is '), write(Remainder), nl.

q3():- write('Enter the first number'), read(N1), nl, write('Enter the second number'), read(N2), nl,
write('The quotient is '), quotient(X), write(X), nl,
write('The remainder is '), remainder(Y), write(Y), nl.

quotient(X):- X is N1//N2.
remainder(Y):- Y is N1 mod N2.

q5():- write('Enter the lenth of the rectangle'), read(LENGTH), nl,
write('Enter the width of the rectange'), read(WIDTH), nl,
area(LENGTH, WIDTH, Z), write('The area of the rectangle is '), write(Z), write(' square units'), nl.
area(X, Y, Z):- Z is X*Y.