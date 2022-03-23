function x = parte3BEjercicio1E(t)
    f = @(t,X) (  ((0.1)/(1+(t^2))) .* X );

    X0 = [0.1;0.2;0.3];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,X0,t,abs(t-0)/1000);
    x = norm(puntosDeLaTrayectoria(:,end));