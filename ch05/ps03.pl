dot(L1, L2, R) :- dot(L1, L2, 0, R).

dot([], [], R, R).

dot([H1|T1], [H2|T2], Acc, R) :-
  Accp is +(Acc, *(H1, H2)),
  dot(T1, T2, Accp, R).
