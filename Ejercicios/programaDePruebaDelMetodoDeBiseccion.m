funcionH = @(x) (x.*x)-(x*(10/7)) - 5;

X = -10:0.1:10;
Y = funcionH(X);

plot(X,Y)

solucion = BISECCIONPRUEBA(funcionH,-10,0, 100)
funcionH(solucion)