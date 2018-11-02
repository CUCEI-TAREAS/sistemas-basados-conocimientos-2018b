% Hechos: Base de Recursión.
tn(1,1).
% Regla Recursiva.
tn(N,R) :-  
   N>1, 
   N1 is N-1,
   tn(N1,R1),
   R is 2*R1+1.


