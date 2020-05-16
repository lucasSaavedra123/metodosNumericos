function velocidad = tarea1Auxiliar2(Z0,t)

    Z = @(t,z) [
        z(2);
        z(3);
        0.3 * z(2) + 0.1 * t * z(1) + 0.4;    
    ];

    [arregloDeTiempos,puntosDeLaTrayectoria] = RK4(Z,0,Z0,t,0.01);
    
    velocidad = puntosDeLaTrayectoria(2,end);