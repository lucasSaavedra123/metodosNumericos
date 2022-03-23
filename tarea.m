x = (-6:1:10)';
y=[-0.85;-0.58;-0.31;-0.03;0.31;1;4.17;2.21;1.78;1.86;2.05;2.27;2.52;2.77;3.03;3.29;3.55];
A = [ x.^3 x.^2 x x.^0  ((-y).*(x.^2)) ((-y).* sqrt((x.^2) .+ 1))];

parametros = pinv(A) * y;

a = parametros(1);
b = parametros(2);
c = parametros(3);
d = parametros(4);
p = parametros(5);
q = parametros(6);

F = @(x) ( (a .* (x.^3) ) + (b .* (x.^2) ) + (c .* x) + (d)  ) ./ ( (p .* (x.^2)) + ( q .* sqrt((x.^2) .+ 1) ) + 1 );

xMas = -6:0.01:10;

plot(x,y,'o',xMas,F(xMas));

errorRelativo = norm(y-F(x))/norm(y)