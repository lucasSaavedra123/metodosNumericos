disp("Parte 2 B-Ejercicio 2")
disp("\n")
disp("a)")
disp("\n")

H = @(X) [
    ((X(1))^2) + (2*X(1)*X(2)) - 2 - ((X(1))^3)  ;
    (((X(1))^2)*((X(2))^2)) + 3 - (X(2)) - ((X(2)) * (X(1))^4)
];

disp("Utilizando el JACOB_APROXs")
dH = @(X) JACOB_APROX(H,X);
solucion = NR(H,dH, [1;1] , 100)
H(solucion)

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("b)i)")
disp("\n")

H = @(X) [
    ( cos( (2*X(1)) - ((X(3))^2) ) + 1 - ( X(1)*X(2) ) )  ;
    ( (X(3)^4)- ( 4 * X(1) * (X(3)^2) ) + X(2) + 2 );
    ( sin(X(1)*X(2) - 2) + 2 * X(1) - (X(3))^2 )
    ];

dH = @(X) JACOB_APROX(H,X);
solucion = NR(H,dH, [1.5;2.5;1.5] , 100)
H(solucion)

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("b)ii)")
disp("\n")

solucion = NR(H,dH, [1.5;2.5;-1.5] , 100)
H(solucion)

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("c)")
disp("\n")
disp("Hace lo mismo que antes pero usamos NR_MULTI");

solucion = NR_MULTI(H, [1.5;2.5;-1.5], 100)
H(solucion)

disp("Obtuvimos exactamente lo mismo");

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("d)")
disp("\n")

H = @(X) [
    
    ( ( (X(1)^2) * (X(3)) ) - (X(2)) - ( (X(4)^3) * (X(5)) ) - (1) );
    ( ( X(2) * X(5) ) - 2 - (X(1)) - (X(4)) - 1 );
    ( ( (X(3)^2) * (X(4)) * (X(2)) ) - (X(1)) - cos(2*X(3)) );
    ( ( (X(2)) * X(3) ) - X(1) - (X(2) * X(5)) - 1 );
    ( ( (X(2)^2) * X(4) ) - X(4) + (X(1) * X(5)) + 1 ) 

    ];

solucion = NR_MULTI(H, [1;1;1;1;1], 100)
H(solucion)

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("e)")
disp("\n")

H = @(X) [
    (cos(X(1)-X(2)) - 1);
    (X(1)+(X(2)^2)-6)
    ];

solucion = NR_MULTI(H, [pi;1], 100)
H(solucion)

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("f)")
disp("\n")

H = @(X) atan(X) - (1/X)
solucion = NR_MULTI(H, 1, 100)
H(solucion)

disp("\n");
input("Pulsar ENTER para continuar");

disp("\n")
disp("g)")
disp("\n")

disp("Para este ejercicio voy a obtener una aproximación del gradiente por medio de JACOB_APROX")

H = @(X) (X(1)^2) + (X(2)^2) + (X(3)^2) + ((sin(X(2)-X(3)))^2) + 2 * X(2) * X(3) - 2 * X(1) + 4;

dH = @(X) (JACOB_APROX(H,X)(1,:))';

solucion = NR_MULTI(dH, [1.2;0.1;0.15], 100)
dH(solucion)

disp("\n");
input("Pulsar ENTER para continuar");
