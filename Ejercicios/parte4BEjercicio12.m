disp("Parte 4 B-Ejercicio 12")
disp("\n")
disp("a)")
disp("\n")

x=(-10:10)';  
y=(2*x+1)./(x.^2+1)+0.05*randn(size(x)); 
y=round(100*y)/100;

A = [x x.^0 (-y.*(x.^2)) (-y.*x)];
parametros = pinv(A) * y;

p = parametros(1:2)
q = parametros(3:4)

P = @(x) ( p(1) * x + p(2) )
Q = @(x) ( q(1) * x.^2 + q(2) * x + 1 )
F = @(x) P(x) ./ Q(x)

disp("ERROR:");
errorRelativo = norm(y-F(x))/norm(y)
plot(x,y,'o',(-10:0.01:10),F(-10:0.01:10));

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

[G,n,p] = busca_grado_pol(x,y,errorRelativo)

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

plot(x,y,'o',(-10:0.01:10),F(-10:0.01:10),(-10:0.01:10),G(-10:0.01:10));

disp("Dimension de parametros de modelo racional: ")
size(parametros)
disp("Dimension de parametros de polinomio: ")
size(p)

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

disp("En modelo racional: ")
F(realmax)
disp("En el modelo polinómico: ")
G(realmax)