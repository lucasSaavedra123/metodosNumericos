disp("Parte 4 A-Ejercicio 4");
disp("\n");

U=[2 -4 -1;0 1 2.5;0 0 0.5]
w=[6;17;3]
L = flipud(fliplr(U))
m = flipud(w)

solucion = resuelveU(U,w)

L * flipud(solucion)