function aproximacion = derivadaAproximada(h,x,epsilon)
  
  aproximacion = (h(x+epsilon)-h(x-epsilon))/(2 * epsilon);
  
endfunction