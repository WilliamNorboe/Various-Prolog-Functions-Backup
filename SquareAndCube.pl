
square(N,N,S,S):-!.
square(I,N, S, R):-
    I2 is I * I,
    Sum is S + I2,
    Next is I + 1,
    square(Next,N,Sum, R).
    
square(N, R):-
    N2 is N + 1,
    square(1,N2,0,R).


cube(N,N,S,S):-!.
cube(I,N, S, R):-
    I2 is I * I * I,
    Sum is S + I2,
    Next is I + 1,
    cube(Next,N,Sum, R).
    
cube(N, R):-
    N2 is N + 1,
    square(1,N2,0,R).

printToN(N,N):-!.
printToN(I,N):-
    square(I, R),
    write(R), nl,
    Next is I + 1,
    printToN(Next, N).

main:-printToN(1,10).
