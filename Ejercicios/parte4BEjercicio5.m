disp("Parte 4 B-Ejercicio 5")
disp("\n")
disp("a)")
disp("\n")

x =(0:0.5:5)'; 
y=[2.55;2.52;2.45;2.32;2.14;1.91;1.64;1.31;0.93;0.50;0.02];

plot(x,y,'o');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

A = [x.^0 x x.^2 ]
P = pinv(A) * y

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

Y = @(x) P(1) .+ (P(2) .* x) .+ (P(3) .* (x.^ 2) );
V = @(x) derivadaAproximada(Y,x,0.001)
A = @(x) derivadaAproximada(V,x,0.001)

posicionInicial = Y(x(1))
velocidadInicial = V(x(1))
aceleracion = A(x(1))


plot(x,y,'o',x,Y(x),x,V(x),x,A(x));
disp("ERROR: ")
norm(y-Y(x))/norm(y)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("d)")
disp("\n")

tiempoQueLlegaAlSuelo = NR(Y, V, 2, 100)
Y(tiempoQueLlegaAlSuelo)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")