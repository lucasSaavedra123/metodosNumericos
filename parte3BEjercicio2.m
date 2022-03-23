disp("Parte 3 B-Ejercicio 2")
disp("\n");
disp("a)");
disp("\n");

h = @(x) (PA_A(x) - e)
x3_inicial = NR_ap(h, 1, 100)

f = @(t,X) [
    0.4-t*X(1);
    sin(X(2))-t*X(1);
    0.25*X(1) - t*X(3)
];

X0 = [0.4;0.2;x3_inicial];

[arregloDeTiempos X] = RK2(f,0,X0,4.2,4.2/1000);

plot3(X(1,:),X(2,:),X(3,:),X(1,1),X(2,1),X(3,1),'o',X(1,end),X(2,end),X(3,end),'x');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)");
disp("\n");


h = @(x) (PA_B(x) - 0.4)
x2_inicial = NR_ap(h, 1, 25)

f = @(t,X) [X(2);-X(1)];

[arregloDeTiempos X] = RK2(f,-pi,[-0.6;x2_inicial],pi,0.001);

plot(X(1,:),X(2,:),X(1,1),X(2,1),'o',X(1,end),X(2,end),'x');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("c)");
disp("\n");


H = @(X) (PA_C(X) - [2.8;3.5])
X_inicial = NR_MULTI(H,[1;2],100)

f = @(t,X) [0.1*X(1);
            0.1*X(2);
            0.5*X(1)+0.5*X(2)
            ];
            
[arregloDeTiempos X] = RK2(f,0,[X_inicial(1);X_inicial(2);0.2],1.2,0.001);

plot3(X(1,:),X(2,:),X(3,:),X(1,1),X(2,1),X(3,1),'o',X(1,end),X(2,end),X(3,end),'x');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");