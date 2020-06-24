function x=resuelve_ch(A,b)

    R=chol(A);   
    x=resuelveU(R, resuelveL(R',b));

endfunction