member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

set([], []).
set([X|T], [X|Set]) :- set(T, Set), not(member(X, Set)).
set([X|T], Set) :- set(T, Set), member(X, Set).
