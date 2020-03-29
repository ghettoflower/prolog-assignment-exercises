power(_,0,1).
power(R1,Int,R2) :- M is Int - 1, power(R1,M,N), R2 is N*R1.