function x=resuelve_con_qr (A,b)
    [Q,R,P]=qr(A);
    z=resuelveU(R,(Q') * b);
    x = P*z;
    endfunction