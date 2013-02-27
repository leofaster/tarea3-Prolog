% Roberto Omaña
% Leopoldo Pimentel

/*
Pregunta 1
***********
Para esta pregunta utilizaremos el clasico juego de piedra,papel,tijera,lagarto,spock.
“Las tijeras cortan el papel,
 el papel cubre a la piedra,
 la piedra aplasta al lagarto,
 el lagarto envenena a spock, 
 spock destroza las tijeras,
 las tijeras decapitan al lagarto,
 el lagarto se come el papel,
 el papel refuta a spock, 
 spock vaporiza la piedra, 
 como es habitual… 
 la piedra aplasta las tijeras.”
*/

gana(tijeras,papel).
gana(papel,piedra).
gana(piedra,lagarto).
gana(lagarto,spock).
gana(spock,tijeras).
gana(tijeras,lagarto).
gana(lagarto,papel).
gana(papel,spock).
gana(spock,piedra).
gana(piedra,tijeras).

vence(A,B):-
  gana(A,B).
  
  
/*
Pregunta 2
*************
Suma y Resultado de una lista

*/

% Para lista vacia
suma([],0).
suma([H|T],Resultado):-
  suma(T,Suma),
  Resultado is H + Suma.
  
/*
Pregunta 3
****************
subconjunto, manteniendo el orden

*/
  
subconjunto([], []).
subconjunto([H|T], [H|T2]):-
  subconjunto(T, T2).
subconjunto([_|T], T2):-
  subconjunto(T, T2).
  
/*
Pregunta 4
***************
Dado un conjunto, la funcion devuelve true si cualquiera de sus 
subconjutos suma el resultado
*/
  
subset_sum
  
