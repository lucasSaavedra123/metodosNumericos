resultado = 0;
disp("Ejercicio 3:\n");

disp("i)");
resultado = 1+eps/2+eps/2;
disp("Resultado:");
disp(resultado);
disp("Da uno ya que eps/2 es menor que el eps y entonces la suma termina siendo 1./n");

disp("ii)");
resultado = (1 +eps/2+eps/2) - 1;
disp("Resultado:");
disp(resultado);
disp("Termina dando 0 por que se termina resolviendo primero el parentesis y luego se hace la resta\n");

disp("iii)");
resultado = eps/2+eps/2+1;
disp("Resultado:");
disp(resultado);
disp("Da 1.000... por que en este sistema se resuelve de izq a derecha y eps/2 + eps/2 da eps, y como eps tiene la caracteristica de que es el menor numero positivo normalizado tal que 1+eps distinto a 1, la suma nos da distinto a 1\n");

disp("iv)");
resultado = (eps/2+eps/2+1)-1;
disp("Resultado:");
disp(resultado);
disp("Da eps.\n");

disp("v)");
resultado = 0.2+0.1-0.3;
disp("Resultado:");
disp(resultado);
disp("Esperaba que de 0 pero devolvio otro resultado. Esto se debe a que 0.2+0.1 = 0.3 pero 0.3 no es representable, por lo tanto se redondea. Al hacer la resta con 0.3, nos queda distinto de 0, se termina resolviendo 0.30000... - 0.3 y puede llegar a pasar que no de 0.\n");

disp("vi)");
resultado = 0.2-0.3+0.1;
disp("Resultado:");
disp(resultado);
disp("Llegue a la misma conclusión que v).\n");

disp("vii)");
resultado = (0.1+0.2-0.3)/(0.2-0.3+0.1);
disp("Resultado:");
disp(resultado);
disp("Esperaba un resultado muuy grand llegando a un sobreflujo. Sin embargo dio dos. La suma de arriba coincide con el eps(0.3) con el doble de eps(0.1). Sin embargo, eps(0.3) es el doble del doble eps(0.1), por lo tanto queda 2. (A esta conclusión llegue comparando valores.)\n");

disp("viii)");
resultado = -1*0;
disp("Resultado:");
disp(resultado);
disp("Esperaba 0. Devolvio -0\n");


disp("ix)");
resultado = 1/0;
disp("Resultado:");
disp(resultado);
disp("Esperaba una falla y hubo sobreflujo. No es posible realizar dicha operacion.\n");


disp("x)");
resultado = -1/0;
disp("Resultado:");
disp(resultado);
disp("Misma conclusion que ix).\n");


disp("xi)");
resultado = 0/0;
disp("Resultado:");
disp(resultado);
disp("Esperaba error y salto NaN. Hace referencia a resultados que no tienen resultado numérico.\n");


disp("xii)");
resultado = 2*3+4/(1/0);
disp("Resultado:");
disp(resultado);
disp("El octave dio respuesta. En realidad, si realizamos 1/0 no da un Warning. Pero lo resuelve igual. 1/0 devuelve 'Inf'. 4/'Inf' tiende a 0, por lo tanto el resultado de la suma es 6.\n");


disp("xiii)");
resultado = 2*3+(4/(0/0));
disp("Resultado:");
disp(resultado);
disp("Misma conclusión que xi).\n");


disp("xiv)");
resultado = 2*3+(4/(0/0))*0;
disp("Resultado:");
disp(resultado);
disp("Misma conclusión que xi).\n");