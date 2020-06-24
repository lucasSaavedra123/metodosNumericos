disp("Parte 4 B-Ejercicio 6")
disp("\n")
disp("a) y b)")
disp("\n")

x=(-4:10)'; 
y=[2.2;8.7;18.8;28.2;32.6;32.0;27.2;20.2;18.9;30.9;66.4;140.4;266.8;464.4;753.3];

[F,n,p]=busca_grado_pol(x,y,0.01);
F
n
p