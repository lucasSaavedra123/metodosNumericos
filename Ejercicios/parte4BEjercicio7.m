disp("Parte 4 B-Ejercicio 7")
disp("\n")
disp("a)")
disp("\n")

x=(0:0.5:12)'; 
y=[0.5;0.9;1.4;1.8;2.3;0.28;3.2;3.7;4.2;4.6;5.1;5.6;6;6.5;7;7.4;7.9;8.4;8.8;9.3;9.8;10.2;10.7;11.1; 11.6];

[x y]

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

[F,n,p] = busca_grado_pol(x,y,0.04)


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

errorRelativo = norm(y-F(x))/norm(y)

plot(x,y,'o',x,F(x))

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("d)")
disp("\n")

plot(x,y,'o');

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("e)")
disp("\n")

y(6) = 2.80;
plot(x,y,'o');

input("Pulsar ENTER para continuar...");

[F,n,p] = busca_grado_pol(x,y,0.04)
errorRelativo = norm(y-F(x))/norm(y)

plot(x,y,'o',x,F(x));