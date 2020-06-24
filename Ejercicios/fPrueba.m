function y = fPrueba(x)

    F = F = @(t,X) [ -X(2)-X(1)-(t^2) ; X(1) ];
    
    [tiempo puntos] = RK4(F, 0,[0;x],1,0.001);

    y = puntos(1,end);

endfunction