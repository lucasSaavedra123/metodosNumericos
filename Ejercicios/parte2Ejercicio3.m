disp("Parte 2-Ejercicio 3")
disp("\n")
disp("a)")
disp("\n")


f = @(x) (x.^3) - (3 * x);
g = @(x) 7 - (exp(x));
h = @(x) f(x) - g(x);
dh = @(x) (3 * (x.^2) - 3) - (-exp(x));

x0 = NR(h,dh,1,100);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);
disp("\n")


f = @(x) (9 * (x.^3)) + (3 * x);
g = @(x) (6 * (x.^2)) + 2;
h = @(x) f(x) - g(x);
dh = @(x) ((9 * 3 * (x.^2)) + (3)) - ((12 * (x)));

x0 = NR(h,dh,1,10);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);
disp("\n")


f = @(x) cos(x);
g = @(x) x;
h = @(x) f(x) - g(x);
dh = @(x) (-sin(x)) - (1);

x0 = NR(h,dh,1,100);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);


disp("\n")
input("Pulsar ENTER para continuar con el b)");
disp("\n")
disp("b)")
disp("\n")

disp("Me base para tomar estos valores en el resultado que dan al evaluar f(x) en muchos puntos.");
disp("En ciertos intervalos buscaba donde prodria habia una maximo o minimo y probaba para valores tanto de la izq como de la der de ese punto critico.");

n = 100

f = @(x) (x.^5) - 27 * x.^3 + 5 * x.^2 + 72 * x - 15;
g = @(x) 0;
h = @(x) f(x) - g(x);
dh = @(x) 5 * x.^4 - 27 * 3 * x.^2 + 5 * 2 * x.^1 + 72;

disp("Empezando en 0 y con n iteraciones...")
x0 = NR(h,dh,0,n);
disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("Empezando en 1 y con n iteraciones...")
x0 = NR(h,dh,1,n);
disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("Empezando en 3 y con n iteraciones...")
x0 = NR(h,dh,2,n);
disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("Empezando en 4 y con n iteraciones...")
x0 = NR(h,dh,4,n);
disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("Empezando en -3 y con n iteraciones...")
x0 = NR(h,dh,-3,n);
disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);

disp("\n")
input("Pulsar ENTER para continuar con el c)");
disp("\n")
disp("c)")
disp("\n")

f = @(x) exp(0.5 * x) + 2 * x - 8;
g = @(x) 0;
h = @(x) f(x) - g(x);
dh = @(x) 0.5 * exp(0.5 * x) + 2;

x0 = NR2(h,dh,2,0.0001);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);