fib(0, 0) :- !.
fib(1, 1) :- !.
fib(N, R) :-
        N > 1,
        Next1 is N-1,
        fib(Next1, R1),
        Next2 is N-2,
        fib(Next2, R2),
        R is R1+R2.

fibToN(L,L):- !.
fibToN(S,L):-
    fib(S,R),
    write(S), write(' '), write(R), nl,
    Next is S + 1,
    fibToN(Next, L).
    
main :- fibToN(1, 11).
