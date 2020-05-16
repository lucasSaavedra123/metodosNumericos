disp("Parte 4 A-Ejercicio 7");
disp("\n");
disp("a)");
disp("\n");

tamanoAdoptado = 3000

A = randn(tamanoAdoptado,tamanoAdoptado);
b = randn(tamanoAdoptado,1);

disp("Por LU: ");
tic; solucion = resuelve(A,b);  toc;
errorDeRedondeo = norm( (A*solucion) - b)

disp("Por QR: ");
tic; solucion = resuelve_con_qr(A,b);  toc;
errorDeRedondeo = norm( (A*solucion) - b)

disp("Por INV: ");
tic; solucion = inv(A) * b;  toc;
errorDeRedondeo = norm( (A*solucion) - b)