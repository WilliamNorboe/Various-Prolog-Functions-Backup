addOne([],[]).
addOne([H|T], [M|T2]):-
    M is H + 1,
    addOne(T, T2).

update(N, N , V , [_|T], [M|T]):-
    M is V,!.
update(I, N , V , [H|T], [H|R]):-
    Next is I + 1,
    update(Next,N,V,T,R).
update(N, V, L, R):-
    update(0,N,V,L,R).

update2(H, V ,[H|T], [M|T]):-
    M is V,!.
update2(N ,V,[H|T], [H|R]):-
    update2(N,V,T,R).

update2all(_, _, [], []):-!.
update2all(N, V ,[N|T], [M|R]):-
    M is V,update2all(N,V,T,R),!.
update2all(N ,V,[H|T], [H|R]):-
    update2all(N,V,T,R).

access(N, N ,[H|_], R):-
    R is H,!.
access(I, N , [_|T], R):-
    Next is I + 1,
    access(Next,N,T,R).
access(N, L, R):-
    access(0,N,L,R).

mysum([],S,S):-!.
mysum([H|T],S,R):-
    S1 is S + H,
    mysum(T,S1,R).
% length([0,1,2,2,4,5,6523,7,2], R).
