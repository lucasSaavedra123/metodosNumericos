function x0 = bisec(f,a,b,n)
  numeroDePaso = 0; 
  
  if( f(a) * f(b) > 0 )
    error("Elegir valores tal que f(a) y f(b) sean opuestos");
  endif
  
  while numeroDePaso < n
    x0 = (a+b)/2;
    
    if f(x0) == 0
      return % termina toda la ejecucion
    elseif sign(f(x0)) == sign(f(a))
      a = x0;
    elseif sign(f(x0)) == sign(f(b))
      b = x0;
    endif
    
    numeroDePaso+=1;
    
  endwhile
  
endfunction