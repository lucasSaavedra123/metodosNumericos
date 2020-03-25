disp("Parte 2-Ejercicio 1")
disp("\n")
disp("a)")
disp("\n")

f = @(x) (x.^3) - (3 * x);
g = @(x) 7 - (exp(x));
h = @(x) f(x) - g(x);

b = 4;
a = 0;

%Pruebo con 7 iteraciones
disp("Con 7 iteraciones...")

x0 = bisec(h,a,b,5);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);
disp("\n")

%Con 25 iteraciones
disp("Con 25 iteraciones...")

x0 = bisec(h,a,b,25);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("\n")
input("Pulsar ENTER para continuar con el b)");
disp("\n")
disp("b) ESTA EN DUDA")
disp("\n")

f = @(x) (9 * (x.^3)) + (3 * x);
g = @(x) (6 * (x.^2)) + 2;

disp("Con 1000 iteraciones...")

x0 = bisec(h,a,b,1000);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("\n")
input("Pulsar ENTER para continuar con el c)");
disp("\n")
disp("c)")
disp("\n")

f = @(x) cos(x);
g = @(x) x;

disp("Con 9 iteraciones...")

x0 = bisec(h,0,pi,9);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("Al tomar 8 pasos, me daba una diferencia mayor a 0.001. Probe con nueve y me dió esa diferencia (h(x0))\n")
disp("\n")