bruja(X):- arde(X),femina(X).
arde(X):- de_madera(X).
de_madera(X) :- flota(X).
flota(X) :- pesa_igual(pato, X).
femina(chica).
pesa_igual(pato,chica).

