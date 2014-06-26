scalarMult(_, [], []).
scalarMult(N, [H|T], [H_|T_]) :- H_ is H * N, scalarMult(N, T, T_).
