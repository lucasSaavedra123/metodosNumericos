disp("Parte 4 A-Ejercicio 1");
disp("\n");
disp("a)");
disp("\n");

imagen = imread('lenna.bmp');
imagenNueva = comprimirImagen(imagen,0.005,0.005,0.99);

subplot(1,2,1);
image(uint8(imagen));
axis equal;
subplot(1,2,2);
image(uint8(imagenNueva));
axis equal;

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)");
disp("\n");

disp("Utilizo una foto mia de casi 5MB (muy alta calidad)");

imagen = imread('facha.bmp');
imagenNueva = comprimirImagen(imagen,0.005,0.005,0.50);

subplot(1,2,1);
image(uint8(imagen));
axis equal;
subplot(1,2,2);
image(uint8(imagenNueva));
axis equal;