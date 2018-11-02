% C: Campesino, Z: Zorro, G: Gallina, S: Semillas

inseguro(estado(C,Z,G,S)):-Z=G,not(C=G). 
inseguro(estado(C,Z,G,S)):-G=S,not(C=S).

opuesto(der,izq).
opuesto(izq,der).

mover(estado(X,X,G,S),estado(Y,Y,G,S)):-opuesto(X,Y),
                                        not(inseguro(estado(Y,Y,G,S))).
mover(estado(X,Z,X,S),estado(Y,Z,Y,S)):-opuesto(X,Y),
                                        not(inseguro(estado(Y,Z,Y,S))).
mover(estado(X,Z,G,X),estado(Y,Z,G,Y)):-opuesto(X,Y),
                                        not(inseguro(estado(Y,Z,Y,S))).
mover(estado(X,Z,G,S),estado(Y,Z,G,S)):-opuesto(X,Y),
                                        not(inseguro(estado(Y,Z,G,S))).

imprimirPilaInversa([]).
imprimirPilaInversa([X|Y]) :- imprimirPilaInversa(Y),write(X),nl.

camino(Meta,Meta,E):-write('La solución es:'),nl,
                     imprimirPilaInversa(E).
camino(Estado,Meta,E):-mover(Estado,SigEstado),not(member(SigEstado,E)),
                       NEdo=[SigEstado|E],camino(SigEstado,Meta,NEdo),!.

haz(Inicio,Meta):-E=[Inicio],camino(Inicio,Meta,E).

% Uso:
% ?- haz(estado(izq,izq,izq,izq),estado(der,der,der,der)).

