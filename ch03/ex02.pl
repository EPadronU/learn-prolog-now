directlyIn(katarina, olga).
directlyIn(olga, natasah).
directlyIn(natasah, irina).

in(X, Y) :- directlyIn(X, Y).
in(X, Y) :- directlyIn(X, Z), in(Z, Y).
