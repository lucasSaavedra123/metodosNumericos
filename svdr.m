function [Ur, Sr, Vr] = svdr(A,l)
    [ U, S, V] = svd(A);
    Ur = U(:,1:l);
    Vr = V(:,1:l);
    Sr = S(1:l,1:l);
endfunction