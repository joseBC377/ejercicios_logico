%Colocar n reinas en un tablero de ajedres de NxN
%!  DE forma que ninguna se ataque
%no puede haber reinas en la misma fila, columna o diagonal
% Hechos-> permutación en lista
perm([],[]).
perm(L,[X|P]):- select(X,L,R), perm(R,P).
%Ninguna reina se atacas
seguras([]).
seguras([Q|R]):- seguras(R), no_ataca(Q,R,1).
%verifica diagonales
no_ataca(_,[],_).
no_ataca(Q,[Q1|R],D):-
    Q=\=Q1+D,
    Q=\=Q1-D,
    D1 is D+1,
    no_ataca(Q,R,D1).
%resolver problema
reinas(N,Solucion):-
    numlist(1,N,L),
    perm(L,Solucion),
    seguras(Solucion).


