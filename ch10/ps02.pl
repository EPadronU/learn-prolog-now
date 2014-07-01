unifiable([], _, []).
unifiable([H|T], Term, [H|Tp]) :- \+ (\+ (Term = H)), !, unifiable(T, Term, Tp).
unifiable([_|T], Term, Tp) :- unifiable(T, Term, Tp), !.
