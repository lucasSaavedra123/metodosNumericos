function x = parte3BEjercicio1B(t)
    f = @(t,X) [ t * X(1) - 0.2 * X(2)  ;
                 X(2) * 0.5 + X(1)     ;
                 X(1) + 0.5 * X(2)];

    X0 = [1;-0.5;-2];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,X0,t,abs(t-0)/1000);
    x = puntosDeLaTrayectoria(1,end);