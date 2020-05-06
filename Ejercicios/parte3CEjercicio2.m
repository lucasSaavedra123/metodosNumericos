disp("Parte 3 C-Ejercicio 2")
disp("\n")
disp("a)")
disp("\n")

z = @(t,Z) [
        Z(3);
        Z(4);
        Z(5);
        Z(6);
        (-0.5 * Z(3)) - 0.2 * t * Z(1)-Z(5);
        (-0.5 * Z(4)) - 0.2 * t * Z(2)-Z(6)
]

z0 = [-1 ;0.5; 0.25; -0.3; 0.25; -0.3]

[arregloDeTiempos, arregloDePuntos] = RK4(z,0,z0,2.5,0.001);

arregloDePuntos = arregloDePuntos(1:2,1:end);
plot(arregloDePuntos(1,1:end), arregloDePuntos(2,1:end));

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)i) y ii)")
disp("\n")

z = @(t,Z) [
        Z(2);
        Z(1) * (-4);
]

z0 = [-1; 2]
solucion = @(t) [ sin(2*t) - cos(2*t) ]

[arregloDeTiempos, arregloDePuntos] = RK4(z,-pi,z0,pi,0.01);

arregloDePuntos = arregloDePuntos(1,1:end);
plot(arregloDeTiempos, arregloDePuntos,'-', arregloDeTiempos, solucion(arregloDeTiempos), 'o');

disp("Hacer zoom en el grafico para notar ambas funciones")

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("c)")
disp("\n")

disp("Usaré una funcion que se llama kineticEnergy() que le pasamos como parametro la masa y la funcion que cumple el movimiento y un tiempo determinado. Nos devolvera la energia cinética del cuerpo en un tiempo determinado segun el movimiento comprendido. La funcion que describe el movimiento tiene que ser como minimo de orden 1. Tambien hay que pasarle las condiciones iniciales" )
Z0 = [1; 0]

z = @(t,Z) [
    Z(2);
    (1-(Z(2)^2))/(Z(1))
]

[arregloDeTiempos informacionDelMovimiento] = RK4(z,0,Z0,10,0.01);

plot(arregloDeTiempos, informacionDelMovimiento(1,1:end),'o', arregloDeTiempos, informacionDelMovimiento(2,1:end), 'x' );

f = @(t) kineticEnergy(z, Z0, 1, t) - 0.25

T = NR_ap(f, 1, 100)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("d)")
disp("\n")

f = @(t) parte3CEjercicio2D(t) - 1.2
T = NR_ap(f, 0.1, 100)

z0 = [0.1; 0.3; 0.2; -0.2; 0.5; 0.7];

z = @(t,Z) [
    Z(4);
    Z(5);
    Z(6);
    0.25 * Z(2) + 0.2 * sin(t) * Z(5);
    -0.25 * Z(3) - 0.2 * 2 * sin(t) * Z(6);
    0.25 * Z(1) + 0.2 * sin(t) * Z(4);
];

[arregloDeTiempos, arregloDePuntos] = RK4(z,0,z0,T,0.01);
arregloDePuntos = arregloDePuntos(1:3,1:end);

plot3(arregloDePuntos(1,:),arregloDePuntos(2,:),arregloDePuntos(3,:));

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("e)")
disp("\n")

disp("Tome contor3() de la guia y lo modifique para el ejercicio\n")

f = @(xi) contor3(xi) - 0
xi = NR_ap(f, 2, 100)

g=@(t,Z)[
    Z(2);
    Z(3);
    0.2*sin(t)*Z(3)-Z(2) * t * Z(1)+ 0.1 * cos(t)
    ];
        
[arregloDeTiempos, arregloDePuntos] = RK4(g,0,[xi;1.5;-1],5,0.01);

plot(arregloDeTiempos, arregloDePuntos(1,1:end));

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("f) i)")
disp("\n")


F = @(X) contor3_2(X) - [1.2;0.6]
XI = NR_MULTI(F, [1;1], 100)

g=@(t,Z)[
    Z(2);
    Z(3);
    0.1 * t * Z(1) + 0.3 + 0.4 * Z(2) ];

[arregloDeTiempos,arregloDePuntos] = RK4(g,0,[XI(1);XI(2);-0.2],2.4,0.01);

plot(arregloDeTiempos,arregloDePuntos(1,1:end));

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("f) ii)")
disp("\n")

f = @(ai) contor3_3(ai) - 1
ai = NR_ap(f, 2, 100)

g=@(t,Z)[
    Z(2);
    Z(3);
    0.1 * t * Z(1) + 0.3 + 0.4 * Z(2) ];

[arregloDeTiempos,arregloDePuntos] = RK4(g,0,[1;0.5;ai],2.4,0.01);

plot(arregloDeTiempos,arregloDePuntos(1,1:end));

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("f) iii)")
disp("\n")

disp("De la solucion hallada ahora obtenemos lo pedido (nos piden hallar un minimo o maximo):")

f = @(t) parte3CEjercicio2F(t)
T = NR_ap(f, 1, 100)