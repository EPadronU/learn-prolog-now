flatten([], []).
flatten([X|[]], [X]).
flatten([H|T], [Hf|Tf]) :-
  flatten(H, Hf),
  flatten(T, Tf).
