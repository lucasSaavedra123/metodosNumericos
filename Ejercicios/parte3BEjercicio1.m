disp("Parte 3 A-Ejercicio 3")
disp("\n");
disp("a)");
disp("\n");

disp(" 'parte3BEjercicio1A()' es una funcion que nos entrega el valor de x1 en funcion de un valor de T determinado.")

h = @(t) parte3BEjercicio1A(t) + 1
T = NR_ap(h, 1, 10)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)");
disp("\n");

h = @(t) parte3BEjercicio1B(t) - 4
T = NR_ap(h, 1, 20)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("c)");
disp("\n");

h = @(t) parte3BEjercicio1C(t) - (2 * pi)
T = NR_ap(h, 1, 20)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("d)");
disp("\n");

h = @(t) parte3BEjercicio1D(t) - 0.9
T = NR_ap(h, 1, 50)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("e)");
disp("\n");

h = @(t) parte3BEjercicio1E(t) - 10
T = NR_ap(h, 1, 50)