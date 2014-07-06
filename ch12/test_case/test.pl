% Modules ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:- use_module(ppTree).
:- use_module(dcg).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
test(InStream, OutStream) :-
  read(InStream, String),
  \+ (String = end_of_file),
  test_string(String, OutStream),
  test(InStream, OutStream).

test(_, _) :- !.


test_string(String, OutStream) :-
  s(T, String, []), !,
  write(OutStream, String),
  nl(OutStream), nl(OutStream),
  ppTree(OutStream, T), !,
  nl(OutStream), nl(OutStream), nl(OutStream).

test_string(String, OutStream) :-
  write(OutStream, String),
  nl(OutStream), nl(OutStream),
  write(OutStream, 'no.'), !,
  nl(OutStream), nl(OutStream), nl(OutStream).


main :-
  open('input.txt', read, InStream),
  open('ouput.txt', write, OutStream),
  test(InStream, OutStream),
  close(OutStream),
  close(InStream).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
