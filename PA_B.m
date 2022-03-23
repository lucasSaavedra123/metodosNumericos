function x2_final = PA_B(x2_inicial)

    f = @(t,X) [X(2);-X(1)];

    [arreglo,puntosDeLaTrayectoria] = RK2(f,-pi,[-0.6;x2_inicial],pi,0.001);
    x2_final = puntosDeLaTrayectoria(2,end);
    
endfunction