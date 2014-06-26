combine3([], [], []).
combine3([H1|T1], [H2|T2], [j(H1, H2)|Tc]) :- combine3(T1, T2, Tc).
