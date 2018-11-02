mover(1,A,_,C) :-  
    write('Mover disco en torre ['), 
    write(A), 
    write('] hacia torre ['), 
    write(C),write(']'),nl. 
mover(N,A,B,C) :- 
    N>1, 
    M is N-1, 
    mover(M,A,C,B), 
    mover(1,A,B,C), 
    mover(M,B,A,C).  
