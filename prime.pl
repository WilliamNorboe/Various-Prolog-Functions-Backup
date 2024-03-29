
primeLoop(N,N,_):-!.
primeLoop(I,N, X):- 
    not(X mod I =:= 0),
    Next is I + 1,
    primeLoop(Next, N, X).

isPrime(0):-!.
isPrime(1):-!.
isPrime(X):-
    R is floor(sqrt(X)),
    N is R + 1,
    primeLoop(2,N, X).

isComposite(X):-
    not(isPrime(X)).


printToN(N,N).
printToN(I,N):-
	(isPrime(I) ->  write(I), nl;!),
	Next is I + 1,
	printToN(Next,N).

main:- printToN(0,101),!.
