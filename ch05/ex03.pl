reverseAcc([H|T], Acc, R) :- reverseAcc(T, [H|Acc], R).
reverseAcc([], R, R).

reverse(L1, L2) :- reverseAcc(L1, [], L2).

addOneToList([H|T], Acc, R) :- Hp is H + 1, addOneToList(T, [Hp|Acc], R).
addOneToList([], R, R).

addone(List, R) :- reverse(List, ListReversed), addOneToList(ListReversed, [], R).
