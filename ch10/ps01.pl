nu1(X, Y) :- \+ (X = Y).

nu2(X, Y) :- X \= Y.

nu3(X, X) :- !, fail.
nu3(_, _).
