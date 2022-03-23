disp("Parte 2-Ejercicio 2")
disp("Tomamos alpha como 0.000001");
alfa = 0.000001

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")

f = @(x) (x.^3) - (3 * x);
g = @(x) 7 - (exp(x));
h = @(x) f(x) - g(x);

x0 = bisec3(h,0,4,alfa);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);
disp("\n")

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")

f = @(x) (9 * (x.^3)) + (3 * x);
g = @(x) (6 * (x.^2)) + 2;
h = @(x) f(x) - g(x);

x0 = bisec3(h,0,4,alfa);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")

f = @(x) cos(x);
g = @(x) x;
h = @(x) f(x) - g(x);

x0 = bisec3(h,0,pi,alfa);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("\n")