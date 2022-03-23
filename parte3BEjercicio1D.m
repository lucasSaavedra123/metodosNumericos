function x = parte3BEjercicio1D(t)
    f = @(t,X) ( cos(t^2) );

    X0 = 0;

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,X0,t,abs(t-0)/1000);
    x = puntosDeLaTrayectoria(1,end);