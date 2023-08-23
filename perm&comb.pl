factTail(0, R, R). % If N is 0
factTail(1, R, R). % return result when N is one
factTail(N, R1, R) :-
    N > 1, % all other cases
    N1 is N - 1, % decrement
    N2 is N * R1,
    factTail(N1, N2, R). % recursive tail call

factorial(I, R) :- factTail(I, 1, R).

perm(N,K,R):- K > N, R = 0,!.
perm(N, K, R) :-
    factorial(N, Top),
    T is N - K,
    factorial(T, Bottom),
    R is Top/Bottom,!.

comb(N,K,R):- K > N, R = 0,!.
comb(N,K,R):-
    factorial(N, Top),
    T is N - K,
    factorial(T, Bottom),
    factorial(K, Kfac),
    R is Top/(Bottom * Kfac),!.
