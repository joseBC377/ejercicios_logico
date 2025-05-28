%Acceder a elementos: cabeza y cola
%[H|T] = [1,2,3,4].
% H = 1 (cabeza)
% T = [2,3,4] (cola)
% CONCATENAR LISTAS append
% append([1,2,3],[4,5],L).
% dividir lista
% Append(X,Y,[1,2,3]).
% Buscar elemento en lista
% member(3, [1,2,3,4]).
%true.
%?- member(X, [a,b,c]).
%X = a ;
%X = b ;
%X = c.
%Longitud de una lista
%?- length([1,2,3,4], N).
%N = 4.
%suma de lista vacia
sumar([],0).
sumar([X|Resto],Total):- sumar(Resto,Subtotal),Total is X+Subtotal.
%contar elementos de una lista
contar([],0).
contar([_|R],N):-contar(R,N1), N is N1+1.
%pertenencia
pertenece(X,[X|_]).
pertenece(X,[_|R]):-pertenece(X,R).
%concatenar
concatenar([],L,L).
concatenar([X|R],L2,[X|R2]):-concatenar(R,L2,R2).
