disp("Parte 2-Ejercicio 4")
disp("\n")
disp("a)")
disp("\n")


f = @(x) cos(x);
g = @(x) x;
h = @(x) f(x) - g(x);

x0 = NR_ap(h,0.8,100);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);
disp("\n")

disp("\n")
input("Pulsar ENTER para continuar con el b)");
disp("\n")
disp("b)")
disp("\n")

f = @(x) 9 * (x.^3) + 3 * x;
g = @(x) 6 * (x.^2) + 2;
h = @(x) f(x) - g(x);

disp("NR_ap esta modificada. Si la derivada da 0, el programa se corta y devuelve la ultima proximación dada");

x0 = NR_ap(h,1,500);

disp(["x0 = ", num2str(x0)]);
disp(["h(x0) =", mat2str(h(x0))]);
disp(["f(x0) =", mat2str(f(x0))]);
disp(["g(x0) =", mat2str(g(x0))]);
disp("\n")