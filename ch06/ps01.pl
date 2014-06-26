append([], L, L).
append([H|T], L, [H|Tp]) :- append(T, L, Tp).

member(X, List) :- append(_, [X|_], List).


member2(X, [X|_]).
member2(X, [_|T]) :- member(X, T).
