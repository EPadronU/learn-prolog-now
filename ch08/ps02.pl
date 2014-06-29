s --> np(Number, subject), vp(Number).

np(Number, _) --> det(Number), n(Number).
np(Number, X) --> [Word], {lex(Word, pro, Number, X)}.

vp(Number) --> v(Number), np(_, object).
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

lex(he, pro, singular, subject).
lex(she, pro, singular, subject).
lex(him, pro, singular, object).
lex(her, pro, singular, object).
