function Aap = aproxima(A, l)
    [Ur, Sr, Vr] = svdr(A,l);
    Aap = Ur * Sr * (Vr');
endfunction