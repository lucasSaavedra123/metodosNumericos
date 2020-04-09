function solucion = NR2(h, dh, x1, alfa)
  
  if(alfa <= 0)
    error("alfa tiene que ser positiva y distinto de 0")
  endif
  
  contadorDePasos = 0;
  xn = x1;
  
  while( contadorDePasos < 25 && abs(h(xn)) >= alfa )
    xn = xn - inv(dh(xn)) * (h(xn));
    contadorDePasos += 1;
  endwhile
    
  solucion = xn;
  
endfunction
