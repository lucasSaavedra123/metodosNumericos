disp("Parte 4 A-Ejercicio 5");
disp("\n");
disp("a)");
disp("\n");

tamanoAdoptado = 500

A = randn(tamanoAdoptado,tamanoAdoptado);
b = (1:tamanoAdoptado)';

solucion = resuelve(A,b);

A*solucion

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)");
disp("\n");

%Usamos tic; --- toc; para comparar tiempos
disp("Sin guardar L,U,P");

numeroDeIteraciones = 20;

tic;
for interaciones = 0:numeroDeIteraciones
    [L,U,P]=lu(A);
    resuelveU(U, resuelveL(L,P*randn(tamanoAdoptado,1)));
endfor
toc;

input("Pulsar ENTER para continuar");

disp("Guardando L,U,P");

tic;
[L,U,P]=lu(A);
for interaciones = 0:numeroDeIteraciones
    resuelveU(U, resuelveL(L,P*randn(tamanoAdoptado,1)));
endfor
toc;