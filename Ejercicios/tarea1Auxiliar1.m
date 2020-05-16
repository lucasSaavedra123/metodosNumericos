function XF = tarea1Auxiliar1(posicionInicial,velocidadInicial)

    aceleracionInicial = -0.15;

    Z0 = [posicionInicial velocidadInicial aceleracionInicial];

    Z = @(t,z) [
        z(2);
        z(3);
        0.3 * z(2) + 0.1 * t * z(1) + 0.4;    
    ];

    [arregloDeTiempos,puntosDeLaTrayectoria] = RK4(Z,0,Z0,2.5,0.01);
    
    XF = [ puntosDeLaTrayectoria(1,end) ; puntosDeLaTrayectoria(2,end) ];