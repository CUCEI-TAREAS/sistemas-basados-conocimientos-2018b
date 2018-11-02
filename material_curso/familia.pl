femenino(daniela).
femenino(beatriz).
femenino(luz).
femenino(marisela).
femenino(karla).
femenino(adriana).
femenino(lunia).
femenino(alondra).

masculino(gabriel).
masculino(alfredo).
masculino(aaron).
masculino(rafael).
masculino(hector).
masculino(cuauhtemoc).
masculino(ernesto).
masculino(armando).

matrimonio(alfredo,luz).
matrimonio(aaron,marisela).
matrimonio(rafael,karla).
matrimonio(daniela,hector).
matrimonio(cuauhtemoc,adriana).
matrimonio(beatriz,gabriel).

padre(hector,ernesto).
padre(alfredo,lunia).
padre(alfredo,armando).
padre(cuauhtemoc,alondra).

madre(beatriz,ernesto).
madre(luz,lunia).
madre(luz,armando).
madre(beatriz,alondra).

casado(X,Y):-X\==Y,(matrimonio(X,Y);matrimonio(Y,X)).

es_desc_dir(X,Y):-padre(Y,X);madre(Y,X).

padres(X,Y,Z):-es_desc_dir(Z,X),es_desc_dir(Z,Y),X\==Y,X\==Z,Y\==Z.

esposo(X):-masculino(X),casado(X,_).
esposa(X):-femenino(X),casado(X,_).

hijo(X):-masculino(X),(padre(_,X);madre(_,X)).
hija(X):-femenino(X),(padre(_,X);madre(_,X)).

hijo(X,Y):-masculino(X),(padre(Y,X);madre(Y,X)),X\==Y.
hija(X,Y):-femenino(X),(padre(Y,X);madre(Y,X)),X\==Y.

hermanos_de_sangre(X,Y):- padres(P1,P2,X),padres(P1,P2,Y),X\==Y,muestra_ensamble(P1,P2,X).
medios_hermanos(X,Y):- padres(P1,P2,X),padres(P3,P4,Y),X\==Y,
                       ((P1==P3,P2\==P4);(P1\==P3,P2==P4)),
                       muestra_ensamble(P1,P2,X),muestra_ensamble(P1,P2,Y).

muestra_ensamble(X,Y,Z):-write(X+" "+Y+" "+Z),nl.

