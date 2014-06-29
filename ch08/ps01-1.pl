s(s(NP, VP)) --> np(NP, Number, subject), vp(VP, Number).

np(np(DET, N), Number, _) --> det(DET, Number), n(N, Number).
np(np(Word), Number, X) --> [Word], {lex(Word, pro, Number, X)}.

vp(vp(V, NP), Number) --> v(V, Number), np(NP, _, object).
vp(vp(V), Number) --> v(V, Number).

det(det(Word), Number) -->  [Word], {lex(Word, det, Number)}.

n(n(Word), Number) --> [Word], {lex(Word, n, Number)}.

v(v(Word), Number) --> [Word], {lex(Word, v, Number)}.

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
