disp("Parte 4 B-Ejercicio 3")
disp("\n")
disp("a)")
disp("\n")

A = [ -2 1 ; 1 2 ; 1 1];
B = [ 7 ; 28 ; 14 ];

X0 = resuelve_ch(A' * A,A' * B)

disp("ERROR: ")
norm(norm(A*X0-B))

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")