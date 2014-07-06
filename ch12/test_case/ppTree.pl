% Module Setup ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:- module(pptree, [ppTree/2]).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ppTree(Stream, T) :- ppTree(Stream, [T], 0).

ppTree(_, [], _).

ppTree(Stream, [T], Indent) :- =..(T, [F|Args]), write(Stream, F), NewIndent is Indent + 2, ppArgs(Stream, Args, NewIndent).


ppArgs(_, [], _).

ppArgs(Stream, [H|T], Indent) :- nl(Stream), tab(Stream, Indent), ppTree(Stream, [H], Indent), ppArgs(Stream, T, Indent).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
