disp("Parte 3 C-Ejercicio 1")
disp("\n")
disp("a)")
disp("\n")

disp("Se encuentra en el archivo PM.m")

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("b)i")
disp("\n")

f = @(t,x) t * x
solucion = @(x) exp( (x.^2) / 2 )

[arregloDeTiempos, arregloDePuntos] = PM(f,0,1,2,0.01);
plot(arregloDeTiempos, arregloDePuntos, '-',arregloDeTiempos, solucion(arregloDeTiempos), 'o');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("b)ii")
disp("\n")

disp("Pasamos a ver las diferencias con diferentes metodos....")

disp("PM: ")
disp( abs(arregloDePuntos(end) - exp(2) ) )

[arregloDeTiempos, arregloDePuntos] = euler(f,0,1,2,0.01);
disp("Euler: ")
disp( abs(arregloDePuntos(end) - exp(2) ) )

[arregloDeTiempos, arregloDePuntos] = RK2(f,0,1,2,0.01);
disp("RK2: ")
disp( abs(arregloDePuntos(end) - exp(2) ) )

[arregloDeTiempos, arregloDePuntos] = RK3(f,0,1,2,0.01);
disp("RK3: ")
disp( abs(arregloDePuntos(end) - exp(2) ) )

[arregloDeTiempos, arregloDePuntos] = RK4(f,0,1,2,0.01);
disp("RK4: ")
disp( abs(arregloDePuntos(end) - exp(2) ) )

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

f = @(t,X) [  - X(2) - 0.5 ;
              X(1) - 1 - 0.5 * (t^2) ]

solucion = @(t) [  0.5 * (t.^2) + 0.5 * cos(t) ;
              0.5 * sin(t) - t - 0.5 ]

[arregloDeTiempos, arregloDePuntos] = RK4(f,0,[0.5 -0.5],1.5,0.01);
plot(arregloDeTiempos, arregloDePuntos, '-',arregloDeTiempos, solucion(arregloDeTiempos), 'o');

disp("\n")
disp("c)")
disp("\n")

