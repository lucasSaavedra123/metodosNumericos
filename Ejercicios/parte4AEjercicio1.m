disp("Parte 4 A-Ejercicio 1");
disp("\n");
disp("a)");
disp("\n");

A = [   4   -31 ;
        3   -23    
];

disp("Si el determinante es 0, es singular. Veamos");
det(A)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)");
disp("\n");

normaDeA = norm(A)
condicionDeA = cond(A)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("c)");
disp("\n");

normaMasGrande = 0;
vectorDeNormaMasGrande = 0;

for cantidadDeVectoresRandom = 1:10000
    vector = randn(2,1);
    vector = vector/norm(vector);
    norma = norm(A*vector);

    if vectorDeNormaMasGrande == 0 || normaMasGrande < norma
        normaMasGrande = norma;
        vectorDeNormaMasGrande = vector;
    endif
endfor

vectorDeNormaMasGrande
normaMasGrande

disp("Vemos la diferencia...");
abs(normaMasGrande-normaDeA)

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("d)");
disp("\n");

disp("Usamos el metodo de la iteración (la cantidad de iteraciones depende de la matriz A pero ya con 3 o 50 siempre se consiguen buenas aproximaciones)");

vector = randn(2,1);

for cantidadDeVectoresRandom = 1:3
    vector = (A') * (A) * vector;
    vector = vector/norm(vector);
    abs(norm(A*vector)-normaDeA)
endfor

norm(A*vector)


disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("e)");
disp("\n");

