soma([], X) :- X is 0.
soma([H|T], X) :- soma(T,T_), X is H + T_.
