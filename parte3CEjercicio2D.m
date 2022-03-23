function distancia = parte3CEjercicio2D(t)
    
    z0 = [0.1; 0.3; 0.2; -0.2; 0.5; 0.7];

    z = @(t,Z) [
        Z(4);
        Z(5);
        Z(6);
        0.25 * Z(2) + 0.2 * sin(t) * Z(5);
        -0.25 * Z(3) - 0.2 * 2 * sin(t) * Z(6);
        0.25 * Z(1) + 0.2 * sin(t) * Z(4);
    ];

    [arregloDeTiempos, arregloDePuntos] = RK4(z,0,z0,t,0.01);

    puntoFinal = arregloDePuntos(1:3,end);
    distancia = norm(puntoFinal);