function solucion = NR(h, dh, x1, n)
  
  xn = x1;
  
  for numeroDePaso = 1:n
    xn = xn - inv(dh(xn)) * (h(xn));
  endfor
  
  solucion = xn;
  
endfunction