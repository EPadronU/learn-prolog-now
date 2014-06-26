reverse(List, ReversedList, Iters) :- reverse(List, [], ReversedList, Iters).

reverse([], Accumulator, Accumulator, 1).
reverse([H|T], Accumulator, Result, CurrentIter) :- reverse(T, [H|Accumulator], Result, LastIter), CurrentIter is LastIter + 1.

append([], L, L, 1).
append([H|T], L, [H|Tp], CurrentIter) :- append(T, L, Tp, LastIter), CurrentIter is LastIter + 1.

last_reverse(List, Last, Acc) :-
  reverse(List, [Last|_], Acc).

last_append(List, Last, Acc) :-
  append(_, [Last], List, Acc).
