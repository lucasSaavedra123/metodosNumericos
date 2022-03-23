function velocidad = parte3CEjercicio2F(t)
    
    Z0 = [1; 0.5; -0.766411958653270];

    z=@(t,Z)[
        Z(2);
        Z(3);
        0.1 * t * Z(1) + 0.3 + 0.4 * Z(2) ];

    [arregloDeTiempos, arregloDePuntos] = RK4(z,0,Z0,t,0.01);

    velocidad = arregloDePuntos(2,end);