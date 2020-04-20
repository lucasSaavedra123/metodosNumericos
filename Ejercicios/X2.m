function x = X2(t)
    
    f = @(t,X) ( (1/2) - sin(t) + 0.6 * t ) .* [-0.5 * X(2);   
                                                X(1) + (1/2) * X(3); 
                                                -X(2)];

    X0 = [0.1;0.2;0.1];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,X0,t,0.1);
    x = puntosDeLaTrayectoria(2,end);