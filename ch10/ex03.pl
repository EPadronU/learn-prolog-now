split([], [], []).
split([H|T], [H|Tp], Tn) :- H >= 0, split(T, Tp, Tn).
split([H|T], Tp, [H|Tn]) :- H < 0, split(T, Tp, Tn).
