disp("Parte 4 B-Ejercicio 1")
disp("\n")
disp("i)")
disp("\n")

M = randn(2000,2000);
M = 0.5 * (M + M');
A = M+(10-min(eig(M)))*eye(size(M));

disp("Vemos si A es simetrica, entonces ||A-A'||=0. Verifiquemos: ");

norm(A-A')

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("ii)")
disp("\n")

disp("Vemos si es una matriz positiva. Tomamos el menor de los autovalores: ")

min(eig(A))

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("iii)")
disp("\n")

b=randn(2000,1);
tic;
x = resuelve(A,b);
toc;

disp("El error nos queda: ");
norm( (A*x)-b )


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("iv)")
disp("\n")

b=randn(2000,1);
tic;
x = resuelve_ch(A,b);
toc;

disp("El error nos queda: ");
norm( (A*x)-b )