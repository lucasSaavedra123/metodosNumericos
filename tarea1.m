disp("TAREA 1 a)")
disp("\n")

f = @(XI) tarea1Auxiliar1(XI(1),XI(2)) - [1 ; 0.5]

solucion = NR_MULTI(f, [0;0], 100);

disp(solucion)

Z0 = [solucion(1) solucion(2) -0.15];

Z = @(t,z) [
    z(2);
    z(3);
    0.3 * z(2) + 0.1 * t * z(1) + 0.4;    
];

[arregloDeTiempos,puntosDeLaTrayectoria] = RK4(Z,0,Z0,2.5,0.01);

plot(arregloDeTiempos, puntosDeLaTrayectoria(1,1:end));

textoAMostrar = ["X(0) = ", num2str(puntosDeLaTrayectoria(1,1))];
disp(textoAMostrar);

textoAMostrar = ["X'(0) = ", num2str(puntosDeLaTrayectoria(2,1))];
disp(textoAMostrar);

textoAMostrar = ["X''(0) = ", num2str(puntosDeLaTrayectoria(3,1))];
disp(textoAMostrar);

disp("X''(0) = ")
puntosDeLaTrayectoria(3,1)

disp("X(2.5) = ")
puntosDeLaTrayectoria(1,end)
disp("X'(2.5) = ")
puntosDeLaTrayectoria(2,end)
disp("X''(2.5) = ")
puntosDeLaTrayectoria(3,end)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("TAREA 1 a)")

f = @(t) tarea1Auxiliar2(Z0,t);

solucion = NR_ap(f, 2, 100)