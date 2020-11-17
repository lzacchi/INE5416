soma([], 0).
soma([H|T], X) :- soma(T,T_), X is H + T_.

comprimento([],X) :- X is 0.
comptimento([_|T], X) :- comprimento(T, X1), X is X1 + 1.

media(L,X) :- soma(L, SOMA), comprimento(L, COMPRIMENTO), X is SOMA/COMPRIMENTO.
