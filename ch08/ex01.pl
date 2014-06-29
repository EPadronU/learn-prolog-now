s --> np(Number), vp(Number).

np(Number) --> det(Number), n(Number).

vp(_) --> v(_), np(_).
vp(Number) --> v(Number).

det(Number) -->  [Word], {lex(Word, det, Number)}.

n(Number) --> [Word], {lex(Word, n, Number)}.

v(Number) --> [Word], {lex(Word, v, Number)}.

lex(the, det, _).
lex(a, det, singular).

lex(apple, n, singular).
lex(apples, n, plural).
lex(man, n, singular).
lex(men, n, plural).
lex(pear, n, singular).
lex(pears, n, plural).
lex(woman, n, singular).
lex(women, n, plural).

lex(eats, v, singular).
lex(eat, v, plural).
