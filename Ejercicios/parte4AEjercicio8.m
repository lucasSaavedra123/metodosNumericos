disp("Parte 4 A-Ejercicio 8");
disp("\n");
disp("i)");
disp("\n");

A = [1 2 4; 3 5 11];
b = [3;8];

matriz = pinv(A);
x0 = matriz * b;

A * x0

disp("Vamos a encontrar W tal que A*W = b, lo cual podriamos decir que A*W - b = 0");
disp("Como tenemos una variable mas, podemos proponer un valor para una de ellas, y apartir de ella, las otras dos");
disp("Consideremos X=0. Construimos una funcion apartir de eso:");

xinicial = 5

F = @(X) A * [xinicial;X(1);X(2)] - b;
W = NR_MULTI(F, [1;6], 100)

disp("Por lo tanto, otra solución, es: ");

solucion = [xinicial;W(1);W(2)]

disp("Comprobemoslo...");

A*solucion

disp("Comparemos Normas...")

norm(x0)
norm(solucion)