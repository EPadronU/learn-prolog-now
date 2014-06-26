combine1([], [], []).
combine1([H1|T1], [H2|T2], [H1, H2|Tc]) :- combine1(T1, T2, Tc).
