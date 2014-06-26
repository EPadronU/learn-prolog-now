s(List, ListDifference) :-
  foo(List, FooDifference),
  bar(FooDifference, BarDifference),
  wiggle(BarDifference, ListDifference).

foo([choo|T], T).

foo(List, ListDifference) :-
  foo(List, FooDifference),
  foo(FooDifference, ListDifference).

bar(List, ListDifference) :-
  mar(List, MarDifference),
  zar(MarDifference, ListDifference).

mar(List, ListDifference) :-
  me(List, MeDiffirence),
  my(MeDiffirence, ListDifference).

me([i|T], T).

my([am|T], T).

zar(List, ListDifference) :-
  blar(List, BlarDifference),
  car(BlarDifference, ListDifference).

blar([a|T], T).

car([train|T], T).

wiggle([toot|T], T).

wiggle(List, ListDifference) :-
  wiggle(List, WiggleDifference),
  wiggle(WiggleDifference, ListDifference).
