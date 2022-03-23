disp("Parte 4 B-Ejercicio 8")
disp("\n")
disp("a)")
disp("\n")

x = (-4:1:10)';
y = [-5.64;-2.8;1.65;4.4;4.1;1.41;0.35;2.5;6.9;10.04;11.03;8.3;6.46;7.62;11.7];

[x y]

p=polyfit(x,y,6);
F = @(k) polyval(p,k);

plot(x,y,'o',x,F(x));

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

A = [cos(x) sin(x) x x.^0]
p = pinv(A) * y;

F = @(k) cos(k) * p(1) + sin(k) * p(2) + k * p(3) + p(4)

plot(x,y,'o',-4:0.01:10,F(-4:0.01:10));