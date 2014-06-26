flatten([], []).

flatten([H|T], ListFlatten) :-
  flatten(H, Hf),
  flatten(T, Tf),
  !,
  append(Hf, Tf, ListFlatten).

flatten([H|T], [H|Tf]) :-
  flatten(T, Tf).
