swap(leaf(X), leaf(X)).

swap(tree(X, Y), tree(Ys, Xs)) :-
  swap(X, Xs),
  swap(Y, Ys).
