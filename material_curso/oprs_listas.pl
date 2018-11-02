% Ejemplos varios sobre uso de listas en Prolog
% Compilación, Traducción, Adaptación, Explicación y Pruebas:
% Luis Casillas, Diciembre 2015
% Revisado, Septiembre 2016

% Determina si el parámetro es una lista...
esLista([]):-!.
esLista([X|Y]):-esLista(Y).

/*
?- esLista(x).
false.
?- esLista([a,b,c]).
true.
*/

% Miembro de una lista
esMiembroLista(A,[A|B]).
esMiembroLista(A,[B|C]):-esMiembroLista(A,C).

/*
?- esMiembroLista(c,[x,a,c]).
true .
?- esMiembroLista(y,[x,a,c]).
false.
*/

% Suma los elementos de una lista de números
sumaElemsLista([],0).
sumaElemsLista([C|R],T):-sumaElemsLista(R,T1),T is T1+C.

/*
?- sumaElemsLista([2,4,6],R).
R = 12.
*/

% Longitud de una lista
longitudLista([],0).
longitudLista([_|R],L):-longitudLista(R,L1),L is L1+1.

/*
?- sumaElemsLista([2,4,6],R).
R = 12.
*/

% Concatenar dos listas
concatenarDosListas([],L,L).
concatenarDosListas([C|R],L,[C|R1]):-concatenarDosListas(R,L,R1).

/*
?- concatenarDosListas([a,b,c],[d,e,f],Lr).
Lr = [a, b, c, d, e, f].
*/

invertirLista([],[]).
invertirLista([C|T],R):- invertirLista(T,Rt), concatenarDosListas(Rt,[C],R).

/*
?- invertirLista([a,b,c,d,e,f],Lr).
Lr = [f, e, d, c, b, a] .
*/

% Agregar un elemento en la cabeza de una lista
ponCabeza(X,[],[X]).
ponCabeza(X,L,[X|L]).

/*
?- ponCabezaLista(w,[f,g,h,j],Lr).
Lr = [w, f, g, h, j].
*/

% Borrar la cabeza de una lista
borraCabezaLista([C|R],R).

/*
?- borraCabezaLista([q,w,e,r,t,y],Lr).
Lr = [w, e, r, t, y].
*/

% Agregar un elemento al final de una lista
agregaFinLista(X,[],[X]).
agregaFinLista(X,L,R):-invertirLista(L,R1),ponCabeza(X,R1,R2),invertirLista(R2,R).

/*
?- agregaFinLista(h,[a,s,d,f,g],Lr).
Lr = [a, s, d, f, g, h] .
*/

% Borrar el ultimo elemento de una lista
borrarFinLista([_],[]).
borrarFinLista(L,R):-invertirLista(L,R1),borraCabezaLista(R1,R2),invertirLista(R2,R).

/*
?- borrarFinLista([a,b,c,d,e],Lr).
Lr = [a, b, c, d] .
*/

% Insertar un elemento en una lista dada una posición
insertarEnLista(X,0,L,[X|L]).
insertarEnLista(X,Pos,[C|R],[C|R1]):-Pos1 is Pos-1,insertarEnLista(X,Pos1,R,R1).

/*
?- insertarEnLista(q,2,[c,v,b,n,m],Lr).
Lr = [c, v, q, b, n, m] .
*/

% Borrar un elemento de una lista dada una posición
borrarPosLista(0,[_|L],L).
borrarPosLista(Pos,[C|R],[C|R1]):-Pos1 is Pos-1,borrarPosLista(Pos1,R,R1).

/*
?- borrarPosLista(3,[d,r,f,t,g],Lr).
Lr = [d, r, f, g] .
*/

% Devuelve la posición en la que se encuentra un elemento X
posEnLista(X,[X|_],0).
posEnLista(_,[],_):-!,fail.
posEnLista(X,[_|R],Pos):-posEnLista(X,R,Pos1),Pos is Pos1+1.

/*
?- posEnLista(j,[g,h,j,k,l],P).
P = 2 .
*/

% Clona una lista
clonaLista([],[]).
clonaLista([C|R],[C|R1]):-clonaLista(R,R1).

/*
?- clonaLista([a,b,c,d,e,f],Lr).
Lr = [a, b, c, d, e, f].
*/

% Recupera el elemento en la posición P de una lista
recuperaElemLista(0,[C|_],C):-!.
recuperaElemLista(P,[_|R],Elem):-P1 is P-1,recuperaElemLista(P1,R,Elem).

/*
?- recuperaElemLista(4,[u,g,f,w,z],Er).
Er = z.
?- recuperaElemLista(3,[u,g,f,w,z],Er).
Er = w.
?- recuperaElemLista(0,[u,g,f,w,z],Er).
Er = u.
*/

% Existencia de un elemento X en una lista
existeElemEnLista(_,[]):-fail.
existeElemEnLista(X,[X|_]):-!.
existeElemEnLista(X,[_|R]):-existeElemEnLista(X,R).

/*
?- existeElemEnLista(d,[r,t,y,u]).
false.
?- existeElemEnLista(y,[r,t,y,u]).
true.
*/

% Eliminar un elemento de la lista
eliminarElemDeLista(_,[],[]):-fail.
eliminarElemDeLista(X,[X|R],R).
eliminarElemDeLista(X,[C|R],[C|R1]):-eliminarElemDeLista(X,R,R1).

/*
?- eliminarElemDeLista(d,[a,s,d,f,g],Lr).
Lr = [a, s, f, g] .
*/

% Verifica si una lista es una sublista de otra
esSublistaDeLista([],[]).
esSublistaDeLista([C|R],[C|R1]):-esSublistaDeLista(R,R1).
esSublistaDeLista(L,[_|R1]):-esSublistaDeLista(L,R1).

/*
?- esSublistaDeLista([a,b,c],[q,w,e,a,b,c,r,t]).
true .
?- esSublistaDeLista([a,b,x],[q,w,e,a,b,c,r,t]).
false.
*/

% Permutaciones de una lista
listasPermutadas([],[]).
listasPermutadas([C1|R1],L):-eliminarElemDeLista(C1,L,Resto),listasPermutadas(R1,Resto).

/*
?- listasPermutadas([q,w,e,r,t,y],[w,q,e,t,r,y]).
true .
?- listasPermutadas([q,w,e,r,t,y],[w,q,e,t,r,o]).
false.
*/

% Invertir una lista
invertirLista([],[]).
invertirLista([C|R],L):-invertirLista(R,X),agregaFinLista(C,X,L).

/*
?- invertirLista([t,y,o,p],Lr).
Lr = [p, o, y, t] .
*/

% Descubre el elemento mayor de una lista de números
mayorEnLista([C|[]],C):-!.
mayorEnLista([C|R],C1):-mayorEnLista(R,C2),C>C2,C1 is C,!.
mayorEnLista([_|R],C1):-mayorEnLista(R,C1).

/*
?- mayorEnLista([3,8,2,4,1,9,4],May).
May = 9.
*/

% Descubre el elemento menor de una lista de números
menorEnLista([C|[]],C):-!.
menorEnLista([C|R],C1):-menorEnLista(R,C2),C<C2,C1 is C,!.
menorEnLista([_|R],C1):-menorEnLista(R,C1).

/*
?- menorEnLista([3,8,2,4,1,9,4],Men).
Men = 1.
*/


% Verifica si una lista de número está en orden ascendente
listaEsAscendente([_|[]]).
listaEsAscendente([C|[C1|R1]]):-C<C1,listaEsAscendente([C1|R1]).

/*
?- listaEsAscendente([1,3,5,6,8]).
true .
?- listaEsAscendente([1,3,6,5,8]).
false.
*/

% Verifica si una lista de número está en orden descendente
listaEsDescendente([_|[]]).
listaEsDescendente([C|[C1|R1]]):-C>C1,listaEsDescendente([C1|R1]).

/*
?- listaEsDescendente([8,5,3,1]).
true .
?- listaEsDescendente([8,3,5,9]).
false.
*/

% Número de repeticiones de un elemento X en una lista
numRepsElemEnLista(_,[],0).
numRepsElemEnLista(X,[X|R],Cant):-numRepsElemEnLista(X,R,Cant1),Cant is Cant1+1.
numRepsElemEnLista(X,[_|R],Cant):-numRepsElemEnLista(X,R,Cant).

/*
?- numRepsElemEnLista(w,[q,w,e,r,w,t],Nr).
Nr = 2.
*/

% Aplanar una lista
aplanarLista([],[]):-!.
aplanarLista([C|R],L):-aplanarLista(C,L1),aplanarLista(R,L2),concatenarDosListas(L1,L2,L).
aplanarLista(X,[X]).

/*
?- aplanarLista([[a,[b,[c,d],[e]],f],g],Lp).
Lp = [a, b, c, d, e, f, g].
*/

% Calcula el producto escalar de 2 vectores
prodEscalar([],[],0).
prodEscalar([C|R],[C1|R1],Res):-prodEscalar(R,R1,Res1),Res is C * C1 + Res1.

/*
?- prodEscalar([1,2,3,4],[8,7,6,5],Pe).
Pe = 60.
*/

% Determina la cantidad de filas de una matriz
cantFilMat(L,CF):-length(L,CF).

/*
?- cantFilMat([[2,3,4],[1,2,3],[7,4,3]],F).
F = 3.
*/

% Determina la cantidad de columnas de una matriz
cantColMat([C|_],CC):-length(C,CC).

/*
?- cantColMat([[2,3,4],[1,2,3],[7,4,3]],F).
F = 3.
*/

% Recupera columna N de una matriz
recuperaColN_Matriz([],_,[]).
recuperaColN_Matriz([C|R],N,[C1|R1]):-recuperaElemLista(N,C,C1),recuperaColN_Matriz(R,N,R1).

/*
?- recuperaColN_Matriz([[2,3,4],[1,2,3],[7,4,3]],2,C).
C = [4, 3, 3].
?- recuperaColN_Matriz([[2,3,4],[1,2,3],[7,4,3]],1,C).
C = [3, 2, 4].
*/

% Recupera fila N de una matriz
recuperaFilN_Matriz(L,Num,L1):-recuperaElemLista(Num,L,L1).

/*
?- recuperaFilN_Matriz([[2,3,4],[1,2,3],[7,4,3]],2,C).
C = [7, 4, 3].
?- recuperaFilN_Matriz([[2,3,4],[1,2,3],[7,4,3]],1,C).
C = [1, 2, 3].
*/

% Suma dos matrices
crearFilaSum([],[],[]).
crearFilaSum([C|R],[C1|R1],[C2|R2]):-C2 is C+C1,crearFilaSum(R,R1,R2).
sumaMat([],[],[]).
sumaMat([C|R],[C1|R1],[C2|R2]):-crearFilaSum(C,C1,C2),sumaMat(R,R1,R2).

/*
?- sumaMat([[2,3,4],[5,6,7]],[[5,6,7],[1,2,3]],Ms).
Ms = [[7, 9, 11], [6, 8, 10]] .
*/


% Multiplicar dos matrices
crearFilaMult(_,Col,[],_,M2):-cantColMat(M2,Cant),Cant=Col,!.
crearFilaMult(Fil,Col,[C|R],M1,M2):-recuperaFilN_Matriz(M1,Fil,Fila),
                                recuperaColN_Matriz(M2,Col,Columna),
                                prodEscalar(Fila,Columna,C),
                                CTmp is Col+1,crearFilaMult(Fil,CTmp,R,M1,M2).

mult(F,[],M1,_):-cantFilMat(M1,Cant),Cant=F,!.
mult(F,[C|R],M1,M2):-crearFilaMult(F,0,C,M1,M2),FTmp is F+1,mult(FTmp,R,M1,M2).

multMat(M1,M2,M):-mult(0,M,M1,M2).

/*
?- multMat([[1,2],[3,4]],[[5,6],[7,8]],Mr).
Mr = [[19, 22], [43, 50]].
*/

% Recupera un elemento de una matriz
recuperaElemMat(Fil,Col,[C|R],X):-recuperaElemLista(Fil,[C|R],L),
                                  recuperaElemLista(Col,L,X).

/*
?- recuperaElemMat(1,2,[[7, 9, 11], [6, 8, 10]],E).
E = 10.
*/

% Sobreescribir un elemento en posición de una lista
sobreescEnLista(_,_,[],[]).
sobreescEnLista(E,0,[_|R],[E|R1]):-sobreescEnLista(E,-1,R,R1),!.
sobreescEnLista(E,Pos,[C|R],[C|R1]):-PTmp is Pos-1,
                                     sobreescEnLista(E,PTmp,R,R1).

/*
?- sobreescEnLista(f,3,[q,w,e,r,t,y],Lr).
Lr = [q, w, e, f, t, y].
*/

% Sobreescribir un elemento en coordenada de una matriz

sobreescEnMat(_,_,_,[],[]):-!.
sobreescEnMat(0,Col,E,[C|R],[C1|R1]):-sobreescEnLista(E,Col,C,C1),
                                      FTmp is -1,
                                      sobreescEnMat(FTmp,Col,E,R,R1),!.
sobreescEnMat(Fil,Col,E,[C|R],[C|R1]):-FTmp is Fil-1,
                                       sobreescEnMat(FTmp,Col,E,R,R1).

/*
?- sobreescEnMat(1,2,a,[[x,c,b],[g,h,j]],Mr).
Mr = [[x, c, b], [g, h, a]].
*/

