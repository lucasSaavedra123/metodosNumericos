function [P,Q]=padefit(x,y,n,m) 

    A=[]; 
    
    for k=n:-1:0     
        A=[A x.^k]; 
    endfor 
    
    for k=m:-1:1
        A=[A -y.*(x.^k)]; 
    endfor 
    
    param=pinv(A)*y; 
    P=param(1:n+1); 
    Q=param(n+2:end); 
    
endfunction