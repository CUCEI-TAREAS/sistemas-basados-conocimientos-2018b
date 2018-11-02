%Hechos:
agrada(juan, lucía).
agrada(rodolfo, telma).
agrada(esmeralda, pablo).
agrada(lucía, rodolfo).
agrada(pablo, esmeralda).
%Regla:
amigos(X,Y):-agrada(X,Y),
             agrada(Y,X).

