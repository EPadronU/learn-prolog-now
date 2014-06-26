s([a, b|T], T).

s(List, ListDiff) :-
  a(List, ADiff),
  s(ADiff, SDiff),
  b(SDiff, ListDiff).


a([a|T], T).


b([b|T], T).
