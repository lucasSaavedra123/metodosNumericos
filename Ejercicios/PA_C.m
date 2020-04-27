function X_FINAL = PA_C(X_INICIAL)

    f = @(t,X) [0.1*X(1);
                0.1*X(2);
                0.5*X(1)+0.5*X(2)
                ];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,0,[X_INICIAL(1);X_INICIAL(2);0.2],1.2,0.001);
    X_FINAL = [puntosDeLaTrayectoria(2,end); puntosDeLaTrayectoria(3,end)];

endfunction