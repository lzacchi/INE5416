posicao(_, [], P) :- P is 0.
posicao(X, [X|_], P) :- P is 1.
posicao(X, [_|Y], P) :- posicao(X, Y, P1), P is P1 + 1.
