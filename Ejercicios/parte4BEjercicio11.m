disp("Parte 4 B-Ejercicio 11")
disp("\n")
disp("a)")
disp("\n")

x=(-4:0.5:4)';
y=[-0.08;-0.08;-0.08;-0.07;-0.06;-0.01;0.1;0.35; 0.7;0.77;0.64;0.53;0.47;0.44;0.43;0.46;0.52];

A = [exp(x) x x.^0 (-y.*(x.^2)) (-y.*abs(x))]

parametros = pinv(A) * y;

p = parametros(1:3)
q = parametros(4:5)


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

F=@(x)(p(1)*exp(x)+p(2)*x+p(3))./(q(1)*x.^2+q(2)*abs(x)+1)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

plot(x,y,'o',(-4:0.01:4),F(-4:0.01:4))

disp("ERROR:")
errorRelativo = norm(y-F(x))/norm(y)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("d)")
disp("\n")

disp("F(-0.25)")
F(-0.25)

disp("F(5)")
F(5)

disp("F(-Inf)")
F(-realmax)