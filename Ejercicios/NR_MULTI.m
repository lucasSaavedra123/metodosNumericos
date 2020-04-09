function solucion = NR_MULTI(H, X, n)

    dH = @(X) JACOB_APROX(H,X);
    solucion = NR(H, dH, X, n);

endfunction