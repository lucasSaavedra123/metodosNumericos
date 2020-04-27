function x = parte3BEjercicio1C(t)
    f = @(t,X) ( t - sin(t*X) );

    X0 = [pi/2];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,(-pi),X0,t,abs(t-(-pi))/1000);
    x = puntosDeLaTrayectoria(1,end);