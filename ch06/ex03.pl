reverse(List, ReversedList) :- reverse(List, [], ReversedList).

reverse([], Accumulator, Accumulator).
reverse([H|T], Accumulator, Result) :- reverse(T, [H|Accumulator], Result).

append([], L, L).
append([H|T], L, [H|Tp]) :- append(T, L, Tp).

toptail_reverse([_|Tail], OutList) :-
  reverse(Tail, [_|ReversedTail]),
  reverse(ReversedTail, OutList).

toptail_append([_|Tail], OutList) :-
  append(OutList, [_], Tail).
