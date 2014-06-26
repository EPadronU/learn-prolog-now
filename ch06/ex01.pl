append([], L, L).
append([H|T], L, [H|Tp]) :- append(T, L, Tp).

doubled(L) :- append(X, X, L).
