readWord(InStream,W):-
  get_code(InStream,Char),
  checkCharAndReadRest(Char,Chars,InStream),
  atom_codes(W,Chars).


checkCharAndReadRest(10,[],_):-  !.

checkCharAndReadRest(32,[],_):-  !.

checkCharAndReadRest(-1,[],_):-  !.

checkCharAndReadRest(end_of_file,[],_):-  !.

checkCharAndReadRest(Char,[Char|Chars],InStream):-
  get_code(InStream,NextChar),
  checkCharAndReadRest(NextChar,Chars,InStream).
