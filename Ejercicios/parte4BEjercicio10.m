disp("Parte 4 B-Ejercicio 10")
disp("\n")
disp("a)")
disp("\n")

x=[0;0.5;1;1.5;2;2.5;3;3.5;4;4.5;5];
y= [2.0*10^0;3.1*10^-1;4.7*10^-2;7.1*10^-3;1.08*10^-3;1.6*10^-4;2.5*10^-5;3.8*10^-6;5.7*10^-7;8.7*10^-8;1.3*10^-8]; 

[x y]

z = log(y);
p = polyfit(x,z,1)

k = exp(p(2))
a = exp(p(1))

F = @(x) k * a .^(x)

plot(x,y,'o',0:0.01:5,F(0:0.01:5))

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

disp("ERROR:")
norm(y-F(x))/norm(y)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

F(6.5)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("d)")
disp("\n")

G = @(t) F(t) - (0.1*10^-6);
t = bisec(G,4,4.5,100)

F(t)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("e)")
disp("\n")

G = @(t) F(t) - (y(1)/2);
t = NR_ap(G, 1, 100)

y(1)
F(t)