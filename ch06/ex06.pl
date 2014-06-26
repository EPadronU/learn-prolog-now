house(blue).
house(green).
house(red).

family(english).
family(japanese).
family(spanish).

lives(english, red).
lives(japanese, House) :- house(House).
lives(spanish, House) :- house(House).

pet(jaguar, spanish).
pet(snail, Family) :- family(Family).
pet(zebra, Family) :- family(Family).

street([[H1, F1, P1], [H2, F2, P2], [H3, F3, P3]]) :-
  lives(F1, H1), lives(F2, H2), lives(F3, H3),
  pet(P1, F1), pet(P2, F2), pet(P3, F3),
  cond2([[H1, F1, P1], [H2, F2, P2], [H3, F3, P3]]),
  cond3([[H1, F1, P1], [H2, F2, P2], [H3, F3, P3]]),
  H1 \= H2, H1 \= H3, H2 \= H3,
  F1 \= F2, F1 \= F3, F2 \= F3,
  P1 \= P2, P1 \= P3, P2 \= P3.

cond2([[H1, F, snail], [H2, japanese, _]|_]) :-
  lives(F, H1), pet(snail, F), F \= japanese,
  lives(japanese, H2).
cond2([_|T]) :- cond2(T).

cond3([[H1, F, snail], [blue, _, _]|_]) :-
  lives(F, H1), pet(snail, F), H1 \= blue.
cond3([_|T]) :- cond3(T).

% Main method zebra/1 - Atom ~> Atom
zebra(Family) :- street(Houses), zebra(Family, Houses).
zebra(Family, [[_, Family, zebra]|_]).
zebra(Family, [_|T]) :- zebra(Family, T).
