function solucion = BISECCIONPRUEBA(funcion,a,b, iteraciones)
    
  x0 = (a+b)/2;
  
  ##for i in range(1,iteraciones)
  for i = 1:iteraciones
      ##Si funcion(x0) = 0, retornar x0
      if ( funcion(x0) == 0 )
        solucion = x0;
        return
      endif 
      
      ##Si signo(funcion(x0)) = signo(funcion(a)), a = x0, y ahora x0 = (a+b)/2;
      if (sign(funcion(x0)) == sign(funcion(a)) )
        a = x0;
        x0 = (a+b)/2;
      endif
      
      ##Si signo(funcion(x0)) = signo(funcion(b)), b = x0, y ahora x0 = (a+b)/2;
      if (sign(funcion(x0)) == sign(funcion(b)) )
        b = x0;
        x0 = (a+b)/2;
      endif
   endfor
  
  solucion = x0;
  
endfunction