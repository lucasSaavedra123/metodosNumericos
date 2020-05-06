function xf = contor3_3(ai)
    g=@(t,Z)[
        Z(2);
        Z(3);
        0.1 * t * Z(1) + 0.3 + 0.4 * Z(2) ];
    
    [t,Z] = RK4(g,0,[1;0.5;ai],2.4,0.01);
    
    xf = Z(1,end);
    
    endfunction