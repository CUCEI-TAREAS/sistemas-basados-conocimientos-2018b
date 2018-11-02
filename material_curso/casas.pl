%% casas(Solucion)
% La Solucion contendrá una lista de casas que satisfacen todas las restricciones
% La gente atribuye este acertijo a Einstein. No hay mayor evidencia sobre ello

% Adaptado de: http://swish.swi-prolog.org/example/houses_puzzle.pl


/* Reto lógico de las casas: ¿quién posee el gato y quién bebe agua?

	 1) Hay cinco casas de colores diferentes en una calle, cada casa con: un posee, una mascota, una marca de cigarros y una bebida diferentes, todos entre sí.
	 2) El Chiapaneco vive en la casa roja.
	 3) El Tabasqueño tiene un perro.
	 4) Beben café en la casa verde.
	 5) El Duranguense bebe té.
	 6) La casa verde está a un lado de la casa naranja.
	 7) El fumador de Montana tiene una serpiente.
	 8) En la casa amarilla fuman Delicados.
	 9) En la casa de enmedio beben leche.
	10) El Zacatecano vive en la primer casa a la izquierda.
	11) El fumador de Faros vive cerca del hombre con la iguana.
	12) En la casa cercana a la casa con el caballo, fuman Delicados.
	13) El fumador Alas bebe jugo.
	14) El Michoacano fuma Fiesta.
	15) El Zacatecano vive cerca de la azul casa.

        ¿Quién tiene un gato y quién bebe agua?

*/

posee_gato(Propietario) :-
	casas(Calle),
	member(c(Propietario,gato,_,_,_), Calle).

bebedor_agua(Bebedor) :-
	casas(Calle),
	member(c(Bebedor,_,_,agua,_), Calle).


casas(Calle) :-
	% Cada casa en la lista Calle de casas es representada como:
	%  c(Nacionalidad, Mascota, Cigarros, Bebida, Color)
	length(Calle, 5),                                         %  1
	member(c(chiapaneco,_,_,_,roja), Calle),                  %  2
	member(c(tabasqueño,perro,_,_,_), Calle),                 %  3
	member(c(_,_,_,café,verde), Calle),                       %  4
	member(c(duranguense,_,_,té,_), Calle),                   %  5
	junto(c(_,_,_,_,verde), c(_,_,_,_,naranja), Calle),       %  6
	member(c(_,víbora,montana,_,_), Calle),                   %  7
	member(c(_,_,delicados,_,amarilla), Calle),               %  8
	Calle = [_,_,c(_,_,_,leche,_),_,_],                       %  9
	Calle = [c(zacatecano,_,_,_,_)|_],                        % 10
	junto(c(_,iguana,_,_,_), c(_,_,faros,_,_), Calle),        % 11
	junto(c(_,_,delicados,_,_), c(_,caballo,_,_,_), Calle),   % 12
	member(c(_,_,alas,jugo,_), Calle),                        % 13
	member(c(michoacano,_,fiesta,_,_), Calle),                % 14
	junto(c(zacatecano,_,_,_,_), c(_,_,_,_,azul), Calle),     % 15
	member(c(_,_,_,agua,_), Calle),		                  % uno de ellos bebe agua
	member(c(_,gato,_,_,_), Calle).		                  % uno de ellos posee un gato

junto(A, B, ListaRes) :- append(_, [A,B|_], ListaRes).
junto(A, B, ListaRes) :- append(_, [B,A|_], ListaRes).

/** <ejemplos>

?- posee_gato(Propietario).

?- bebedor_agua(Bebedor).

?- casas(Casas).

*/
