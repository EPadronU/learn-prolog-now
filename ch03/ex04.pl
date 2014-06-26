numeric(0).

numeric(succ(X)) :-
  numeric(X).

greater_than(succ(X), 0) :-
  numeric(X).

greater_than(succ(X), succ(Y)) :-
  numeric(X),
  numeric(Y),
  greater_than(X, Y).
