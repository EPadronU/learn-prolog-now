twice([], []).
twice([H|T], [H,H|Tt]) :- twice(T, Tt).
