

##Para el problema vamos a dar usar la derivada aproximada
##y con eso obtener los maximos y los minimos.

##Primero, escribimos en el Octave la formula dada en el problema.

c = @(r) (pi * ( (r.^2) .* ( (1/2) - r ) ) ) ./ ( 1 - ( pi*(r.^2) ) );
dc = @(r) derivadaAproximada(c,r,0.00000001);

##Nos graficamos ambas funciones
plot([0:0.001:20], c([0:0.001:20]));


solucion = NR_ap(dc,0.4,1000)
dc(solucion)
disp("Mirando el gráfico, nos encontramos con un maximo LOCAL alrededor de 0.4\n");

solucion = NR_ap(dc,0.65,1000)
dc(solucion)
disp("Mirando el gráfico, nos encontramos con un minimo LOCAL alrededor de 0.65\n");