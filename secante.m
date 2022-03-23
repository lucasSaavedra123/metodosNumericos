function sol=secante(H,x0,x1,n)
  sol=x1;
  
  for k=1:n
    sol=x1-H(x1)*(x1-x0)/(H(x1)-H(x0));
    x0=x1;
    x1=sol;
  endfor