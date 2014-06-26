combine2([], [], []).
combine2([H1|T1], [H2|T2], [[H1, H2]|Tc]) :- combine2(T1, T2, Tc).
