disp("Parte 4 B-Ejercicio 13")
disp("\n")
disp("a)")
disp("\n")

x=(-10:0.5:10)';
y=atan(x); 

[n,m] = busca_grados_pade(x,y,0.02)

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")
disp("b)")
disp("\n")

[p,q] = padefit(x,y,n,m)

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

F=@(x) padeval(p,q,x)

disp("\n")
input("Pulsar ENTER para continuar");
disp("\n")
disp("c)")
disp("\n")

disp("ERROR: ")
errorRelativo = norm(y-F(x))/norm(y)
plot(x,y,'o',(-10:0.01:10),F(-10:0.01:10));