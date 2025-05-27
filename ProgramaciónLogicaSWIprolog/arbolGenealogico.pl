%Hechos si quieres empezar con mayusculas debes ponerlo con comillas si
% no lo pones lo tomara como variable y no atomo ''
esPadre(juan, carlos).
esPadre(juan, luis).
esPadre(carlos,pedro).
esPadre(carlos, sofia).
esPadre(luis,diego).
esPadre(luis,laura).
%reglas
esHijo(H,P):-esPadre(P,H).
esHermano(H1,H2):-esPadre(P,H1),esPadre(P,H2),H1\=H2.
esPrimo(PR1,PR2):-esPadre(P,PR1),esHermano(P,P1),esPadre(P1,PR2),PR1\=PR2.
esNieto(N,A):-esHijo(N,P),esPadre(A,P).
esSobrino(S,T):-esPadre(P,S),esHermano(P,T).
esTio(T,S):-esHijo(T,P),esPadre(P,H1),esHermano(H1,T),esPadre(H1,S).


