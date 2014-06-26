reverse([], Accumulator, Accumulator).
reverse([H|T], Accumulator, Result) :- reverse(T, [H|Accumulator], Result).

reverse(List, ReversedList) :- reverse(List, [], ReversedList).

palindrome(List) :- reverse(List, List).
