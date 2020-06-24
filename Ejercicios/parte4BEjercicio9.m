disp("Parte 4 B-Ejercicio 9")
disp("\n")
disp("a)")
disp("\n")

x=linspace(0,2*pi,100);
y=sin(x);

[F,n,p] = busca_grado_pol(x,y,0.01)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

disp("\n")
disp("N=5")
disp("Mirar Grafico...")
p=polyfit(x,y,5);
F = @(k) polyval(p,k);
plot(x,y,'o',0:0.01:2*pi,F(0:0.01:2*pi));
input("Pulsar ENTER para continuar");
disp("\n")

disp("\n")
disp("N=10")
disp("Mirar Grafico...")
p=polyfit(x,y,10);
F = @(k) polyval(p,k);
plot(x,y,'o',0:0.01:2*pi,F(0:0.01:2*pi));
input("Pulsar ENTER para continuar");
disp("\n")