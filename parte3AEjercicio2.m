disp("Parte 3 A-Ejercicio 2")
disp("\n")
disp("a)")
disp("\n")

f = @(t,X) [ 0.5 - t * X(1) ; sin(t) - t * X(2) ; 0.2 * t - t * X(3) ]

[arregloDeTiempos, arregloMatricialX] = RK2(f,1,[0.25;-0.4;0.35],3.5,0.01);
plot3(arregloMatricialX(1,:), arregloMatricialX(2,:), arregloMatricialX(3,:), 'o');


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("b)")
disp("\n")

f = @(t,X) [ -X(2) - 0.5 ; X(1) - 1 - 0.5 * (t^2) ]
fExacta = @(t) [ 0.5 * t^2 + 0.5 * cos(t) ; 0.5 * sin(t) - t - 0.5 ]

[arregloDeTiempos, arregloMatricialX] = RK2(f,0,[0.5;-0.5],1.5,0.01);
cantidadDeIntervalos = size(arregloDeTiempos)(2);
arregloMatricialExacta = zeros(2,cantidadDeIntervalos);

for indiceDeColumna = 1:cantidadDeIntervalos
    arregloMatricialExacta(:,indiceDeColumna) = fExacta(arregloDeTiempos(indiceDeColumna));
endfor

plot(arregloMatricialX(1,:), arregloMatricialX(2,:), 'o', arregloMatricialExacta(1,:),arregloMatricialExacta(2,:), '*');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("c)")
disp("i y ii)")
disp("\n")

f = @(t,X) [ t * X ]
fExacta = @(t) [ exp((t.^2)/2) ]
[arregloDeTiemposEuler,XEuler] = euler(f,0,1,2,0.1);
[arregloDeTiemposRK2,Xrk2] = RK2(f,0,1,2,0.1);
arregloDeTiemposExacta = arregloDeTiemposRK2;
XExacto = fExacta(arregloDeTiemposExacta);

plot(   arregloDeTiemposEuler,XEuler,"*",
        arregloDeTiemposRK2,Xrk2,"+",
        arregloDeTiemposExacta,XExacto,"o")

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");

disp("\n")
disp("d)")
disp("\n")

f = @(t,X) cos(3*t) .* X;
X0 = [0.5;0.1;-0.7];
intervalo = [0;2.5];
[arregloDeTiemposRK2_1,Xrk2_1] = RK2(f,intervalo(1),X0,intervalo(2),0.1);
[arregloDeTiemposRK2_2,Xrk2_2] = RK2(f,intervalo(1),X0,intervalo(2),0.01);
[arregloDeTiemposRK2_3,Xrk2_3] = RK2(f,intervalo(1),X0,intervalo(2),0.001);

plot(   Xrk2_1(1,:),Xrk2_1(2,:),"*",
        Xrk2_2(1,:),Xrk2_2(2,:),"+",
        Xrk2_3(1,:),Xrk2_3(2,:),"o")

disp("Para notar las diferencias, hacer zoom");

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");


disp("\n")
disp("e)")
disp("\n")

f = @(t,X) [0.6 * X(2) - 0.1 * t * X(1) + 0.3 * sin(t) ;
            0.5 * X(1) - 0.2 * t * X(2) - 0.3 * sin(2*t) ];
X0 = [-0.4;0.75];
intervalo = [0;5];
[arregloDeTiemposRK2_1,Xrk2] = RK2(f,intervalo(1),X0,intervalo(2),0.01);

plot( Xrk2(1,:),Xrk2(2,:),"*")

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");