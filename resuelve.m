function x=resuelve(A,b)

    [L,U,P]=lu(A);
    x=resuelveU(U, resuelveL(L,P*b));

endfunction