disp("Parte 3 A-Ejercicio 3")
disp("\n")
disp("a)")
disp("\n")

f = @(t,X) ( (1/2) - sin(t) + 0.6 * t ) .* [-0.5 * X(2);   
                                            X(1) + (1/2) * X(3); 
                                            -X(2)]

X0 = [0.1;0.2;0.1];

[arregloDeTiempos, X] = RK2(f,0,X0,4.5,0.1);

plot3(X(1,:),X(2,:),X(3,:),"o",X0(1),X0(2),X0(3),"*");

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("b)")
disp("\n")

disp("Observemos el grafico. Como arrancamos en (0.1,0.2,0.1), miremos cuando el punto en el eje 'y' pasa a -0.2. Si vamos contando puntito por puntito, obtenemos que T se encuentra en la posicion 'cantidadDePuntito - 6' (el grafico baja lentamente y luego sube otra vez mas rapido) del arreglo donde se encuentran todos los tiempos tomados, es decir:")
arregloDeTiempos(size(arregloDeTiempos)(2)-6)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("c)")
disp("\n")

disp("Para obtener una respuesta mas aproximada, pensemos que podemos graficar x2(t) + 0.2 (lo cual llamaremos h(t)) lo cual se ve como lo graficado. Observar que se ven dos soluciones posibles. Hay dos posibles valores para T. Usaremos el metodo NR para este ejercicio")

h = (X(2,:) .+ 0.2);

plot(arregloDeTiempos,h,"o")

disp("\n");
input("Pulsar ENTER para finalizar ejercicio (corremos NR)...");
disp("\n");

h = @(t) X2(t) + 0.2;
T = NR_ap(h, 4, 100)