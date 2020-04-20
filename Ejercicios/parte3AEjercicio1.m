distanciaEntreTiempos = 0.1;

disp("Parte 3 A-Ejercicio 1")
disp("\n")
disp("i)")
disp("\n")

arregloDeTiempos = 0:0.1:1.5

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("ii)")
disp("\n")

arregloMatricialX = zeros(2,16)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("iii)")
disp("\n")

arregloMatricialX(:,1) = [0.5 ; -0.5]

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("iv)")
disp("\n")

f = @(t,X) [ -X(2) - 0.5 ; X(1) - 1 - 0.5 * (t^2) ]

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("v)")
disp("\n")

disp("Realizamos el metodo de Euler...")
for indiceDeFila = 2:1:16
    arregloMatricialX(:,indiceDeFila) = arregloMatricialX(:,indiceDeFila-1) + f(arregloDeTiempos(indiceDeFila-1), arregloMatricialX(:,indiceDeFila-1) ) * distanciaEntreTiempos;
endfor

arregloMatricialX

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("vi)")
disp("\n")

disp("A mano dio X(2) = (0.5,-0.55) y X(3) = (0.505, -0.6005)");
disp("Si miramos la impresion de la matriz anteriormente, vemos que coinciden (o son muy parecidos)")


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("vii)")
disp("\n")

disp("Grafico la solución obtenida y la solución exacta")

fExacta = @(t) [ 0.5 * t^2 + 0.5 * cos(t) ; 0.5 * sin(t) - t - 0.5 ]
arregloMatricialExacta = zeros(2,16);

for indiceDeFila = 1:1:16
    arregloMatricialExacta(:,indiceDeFila) = fExacta(arregloDeTiempos(indiceDeFila));
endfor

plot(arregloMatricialX(1,:), arregloMatricialX(2,:),arregloMatricialExacta(1,:),arregloMatricialExacta(2,:), 'o');


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("Vamos a hacer una prueba con la funcion euler")
disp("\n")

[arregloDeTiempos, arregloMatricialX] = euler(f,0,[0.5;-0.5],1.5,0.01);
plot(arregloMatricialX(1,:), arregloMatricialX(2,:),arregloMatricialExacta(1,:),arregloMatricialExacta(2,:), 'o');


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n");
disp("Vamos a hacer una prueba con la funcion euler pero con una funcion con codominio en R3")
disp("\n")

f = @(t,X) [ 0.5 - t * X(1) ; sin(t) - t * X(2) ; 0.2 * t - t * X(3) ]

[arregloDeTiempos, arregloMatricialX] = euler(f,1,[0.25;-0.4;0.35],3.5,0.01);
plot3(arregloMatricialX(1,:), arregloMatricialX(2,:), arregloMatricialX(3,:), 'o');


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");