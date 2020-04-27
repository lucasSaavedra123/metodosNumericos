function x3_final = PA_A(x3_inicial)

    f = @(t,X) [
        0.4-t*X(1);
        sin(X(2))-t*X(1);
        0.25*X(1)-t*X(3)
    ];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,[0.4;0.2;x3_inicial],1.5,0.001);
    x3_final = puntosDeLaTrayectoria(3,end);

endfunction