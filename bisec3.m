function x0 = bisec3(f,a,b,alfa)
  numeroDePaso = 0; 
  
  if( f(a) * f(b) > 0 )
    error("Elegir valores tal que f(a) y f(b) sean opuestos");
  elseif( !(alfa > 0 && alfa < 1) )
    error("alfa tiene que ser positivo y cercano a 0")
  endif
  
  x0 = (a+b)/2;
  
  while abs(f(x0)) >= alfa
    
    if f(x0) == 0
      return % termina toda la ejecucion
    elseif sign(f(x0)) == sign(f(a))
      a = x0;
    elseif sign(f(x0)) == sign(f(b))
      b = x0;
    endif
    
    x0 = (a+b)/2;
    
  endwhile
  
endfunction