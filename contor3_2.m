function XF = contor3_2(XI)
    #af hace referencia a la acelaración final
    g=@(t,Z)[
        Z(2);
        Z(3);
        0.1 * t * Z(1) + 0.3 + 0.4 * Z(2) ];
    
    [t,Z] = RK4(g,0,[XI(1);XI(2);-0.2],2.4,0.01);
    
    XF = [0;0];

    XF(1) = Z(1,end);
    XF(2) = Z(2,end);
    
    endfunction