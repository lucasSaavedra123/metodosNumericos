disp("Parte 4 B-Ejercicio 2")

A = randn(3000,2000);
B = randn(3000,1);

disp("\n")
disp("Con Cholesky...)")
disp("\n")

tic;
x = resuelve_ch(A' * A, A' * B);
toc;

disp("ERROR: ")
norm(norm(A*x-B))

disp("\n")
disp("Con pinv...)")
disp("\n")

tic;
x = pinv(A)*B;
toc;

disp("ERROR: ")
norm(norm(A*x-B))