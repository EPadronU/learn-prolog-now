prop_p --> [].
prop_p --> and, prop, prop_p.
prop_p --> or, prop, prop_p.
prop_p --> implies, prop, prop_p.

prop --> p, prop_p.
prop --> q, prop_p.
prop --> r, prop_p.
prop --> not, prop, prop_p.
prop --> open_parentesis, prop, close_parentesis, prop_p.

p --> [p].
q --> [q].
r --> [r].

not --> [not].
and --> [and].
or --> [or].
implies --> [implies].

open_parentesis --> ['('].
close_parentesis --> [')'].
