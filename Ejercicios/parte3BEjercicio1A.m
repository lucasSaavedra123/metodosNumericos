function x = parte3BEjercicio1A(t)
    f = @(t,X) [ X(2) ; -X(1) ] ;

    X0 = [1;0];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,X0,t,abs(t-0)/1000);
    x = puntosDeLaTrayectoria(1,end);