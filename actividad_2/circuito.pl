% Felipe Ruiz Garcia
% Circuito Modo Legendario
% Algebra Booleana

% compAND solo tiene un caso postivo
% cuando E1 y E2 son positivos
% podemos expresar esto mediante la multiplicacion
% 1 * 1 = 1
% y los demas
% 1 * 0 = 0
compAND(E1, E2, S):-
	S is E1 * E2.

% La compOR tiene 3 casos positivos
% cuando uno o ambas entradas son positivas.
% Si nos enfocamos en el unico caso donde no es positiva la respuesta
% Podemos resolverlo con una suma de valores y division entre la cantidad de ellos
% 	(0 + 0) / 2 = 0 cumple
% Pero que pasa en los otros tres casos
% 	(1 + 1) / 2 = 1 cumple
% 	(0 + 1) / 2 = 0.5 NO cumple
% 	(1 + 0) / 2 = 0.5 NO cumple
%
% Entonces pense que seria mas facil manejar la division sin valores decimales
% Por ello agregue un valor constante mas la entrada de los dos valores:
% 	(1 + 1 + 1 ) / 2 = 1.5 NO cumple
% 	(0 + 1 + 1 ) / 2 = 1 cumple
% 	(1 + 0 + 1)  / 2 = 1 cumple
%
% Pero me encontre que asi, en el caso donde todos son positivos se obtiene 1.5 y no 1
% y esta vez los decimales me guiaron a la respuesta...
%
% Porque no ignoro los decimales y solo tomo en cuenta la division entera ? Bingo!
%
% Para representar esta compuerta nos auxiliamos de una
% hermosa, maravillosa, sorprendente bondad de prolog : La division entera
% representada por //
% Vuala!
compOR(E1, E2, S):-
	S is (E1 + E2 + 1 ) // 2.

% Para la compNOT tome el ejemplo que dio en clase, jeje.
compNOT(E, S):-
	S is 1 - E.

% Para la compNAND donde en unico escenario negativo
% es cuando ambas entradas son positivas
% pense en negar la compAND con compNOT
compNAND(E1, E2, S):-
	compAND(E1, E2, T),
	compNOT(T, S).

% Para la compNOR negue la compOR con compNOT
compNOR(E1, E2, S):-
	compOR(E1, E2, T),
	compNOT(T, S).

% Para compXOR, donde el resultado es valor positivo solo en los casos
% donde ambas entradas son diferentes, pense ...
% si ambos son 1, y los sumo, es 2, si lo divido entre 2 el resultado sera 0
% y su residuo tambien sera 0 ...
% En el otro caso donde ( 0 + 0 ) / 2 = 0  y residuo igual a 0
% Residuo!!! Bingo!
% Bendito, hermoso prolog
% Con la preciosa funcionalidad de mod
% mod que me permite obtener el residuo de una division
% Elegante y fino en una linea, vaia vaia
compXOR(E1, E2, S):-
	S is (E1 + E2) mod 2.

% Para compXNOR negue compXOR con compNOT
% Touche :D
% por cierto https://www.youtube.com/watch?v=rZU2N-4UGtQ
% touche!! jaja
compXNOR(E1, E2, S):-
	compXOR(E1, E2, T),
	compNOT(T, S).

% circuito legendario
% organizado de arriba izquierda a derecha abajo
% de acuerdo a la imagen que representa el circuito
% comenzamos con la compAND y en ese orden
% de igual las entradas del circuito
circuito(E1, E2, E3, S1, S2):-
	compAND(E1, E3, AND1),
	compNOR(E2, E3, NOR1),
	compNAND(AND1, NOR1, NAND1),
	compNOT(E3, NOT1),
	compOR(NOT1, E2, OR1),
	compXOR(NAND1, OR1, XOR1),
	compXNOR(OR1, E1, S2),
	compAND(XOR1, OR1, S1).



