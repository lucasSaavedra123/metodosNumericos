function af = contor3(xi)
    #af hace referencia a la acelaración final
    g=@(t,Z)[
        Z(2);
        Z(3);
        0.2*sin(t)*Z(3)- Z(2) - 0.05 * t * Z(1) + 0.1 * cos(t)];
        
    [t,Z] = RK4(g,0,[xi;1.5;-1],5,0.01);
    
    af=Z(3,end);
    
    endfunction