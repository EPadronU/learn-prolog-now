:-
  open('hogwart.houses', write, Stream),
  tab(Stream, 8), write(Stream, 'gryfindor'), nl(Stream),
  write(Stream, 'hufflepuff'), tab(Stream, 4), write(Stream, 'revenclaw'), nl(Stream),
  tab(Stream, 8), write(Stream, 'slytherin'), nl(Stream),
  close(Stream).
