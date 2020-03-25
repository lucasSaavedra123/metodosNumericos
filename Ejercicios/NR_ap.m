function solucion = NR_ap(h, x1, n, epsilon)
  
  numeroDeParametros = nargin; %nargin nos pasa la cantidad de parametros que
                               % que ingreso el usuario
  if numeroDeParametros == 3
     epsilon = 0.001;
  endif
  
  xn = x1;
  numeroDePaso = 0;
  
  while numeroDePaso < n && derivadaAproximada(h,xn,epsilon) != 0
    xn = xn - h(xn)/derivadaAproximada(h,xn,epsilon);
    numeroDePaso+=1;
  endwhile
  
  solucion = xn;

  
endfunction
