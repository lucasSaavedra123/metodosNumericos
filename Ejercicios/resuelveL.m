function X = resuelveL(L,C)       
    % Para L * X=C
    
    X=zeros(size(C)); 
    X(1,1)=C(1)/L(1,1); 

    for j=2:max(size(C))     
        X(j,1)=(C(j) - L(j,1: j-1)*X(1: j-1 ,1))/L(j,j); 
    endfor 

endfunction 