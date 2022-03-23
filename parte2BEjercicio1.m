## X = [x;y]

disp("Parte 2 B-Ejercicio 1")
disp("\n")
disp("a)")
disp("\n")

disp("Con dH 'escrita a mano' ")

H = @(X) [
    ((X(1))^2) + (2*X(1)*X(2)) - 2 - ((X(1))^3)  ;
    (((X(1))^2)*((X(2))^2)) + 3 - (X(2)) - ((X(2)) * (X(1))^4)
];

dH = @(X) [
    ((2*X(1))+(2*X(2))-(3*(X(1))^2))  (2*X(1))  ;
    ((2*X(1)*(X(2))^2)-(4*X(2)*(X(1))^3))  ((2*X(2)*(X(1))^2)-1-(X(1))^4)
];

solucion = NR(H,dH, [1;1] , 100)
H(solucion)