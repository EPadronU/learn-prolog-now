% Module Setup ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:- module(dcg, [s/3]).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
s(s(NP, VP)) --> np(NP, Number, subject), vp(VP, Number).
s(s(NP)) --> np(NP, _, subject).

np(np(DET, AP, N, PREP), Number, _) --> det(DET, Number), ap(AP), n(N, Number), prep(PREP).
np(np(Word), Number, X) --> [Word], {lex(Word, pro, Number, X)}.

vp(vp(V, NP), Number) --> v(V, Number), np(NP, _, object).
vp(vp(V), Number) --> v(V, Number).

ap(ap('λ')) --> [].
ap(ap(Word, AP)) --> [Word], {lex(Word, a)}, ap(AP).

prep(prep('λ')) --> [].
prep(prep(Word, NP)) --> [Word], {lex(Word, prep)}, np(NP, _, _).
prep(prep(Word, NP, VP)) --> [Word], {lex(Word, prep)}, np(NP, _, _), vp(VP, _).

det(det(Word), Number) -->  [Word], {lex(Word, det, Number)}.

n(n(Word), Number) --> [Word], {lex(Word, n, Number)}.

v(v(Word), Number) --> [Word], {lex(Word, v, Number)}.

lex(the, det, _).
lex(a, det, singular).

lex(apple, n, singular).
lex(apples, n, plural).
lex(cow, n, singular).
lex(cows, n, plural).
lex(man, n, singular).
lex(men, n, plural).
lex(pear, n, singular).
lex(pears, n, plural).
lex(shower, n, singular).
lex(showers, n, plural).
lex(table, n, singular).
lex(tables, n, plural).
lex(woman, n, singular).
lex(women, n, plural).

lex(eats, v, singular).
lex(eat, v, plural).
lex(likes, v, singular).
lex(like, v, plural).
lex(shoots, v, singular).
lex(shoot, v, plural).

lex(he, pro, singular, subject).
lex(she, pro, singular, subject).
lex(him, pro, singular, object).
lex(her, pro, singular, object).

lex(dead, a).
lex(big, a).
lex(fat, a).
lex(pretty, a).
lex(short, a).
lex(small, a).
lex(tall, a).
lex(thin, a).
lex(ugly, a).

lex(above, prep).
lex(at, prep).
lex(below, prep).
lex(on, prep).
lex(over, prep).
lex(under, prep).
% ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
