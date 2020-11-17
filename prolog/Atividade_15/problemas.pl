% Problema 3
divisivel(X,Y) :- mod(X,Y) =:= 0.

% Problema 6
potencia(X,Y, Resultado) :- Resultado is X ^ Y.

% Problema 7
absoluto(N,X) :- (N >= 0, X is N); (N < 0, X is N * -1).

% problema 8
areatriangulo(A,B,Area) :- Area is A * B / 2.
