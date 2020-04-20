function [t,X] = RK2(f,ti,Xi,tf,h)

    numeroDePasos = ceil((abs(tf-ti)/h));
    t = linspace(ti,tf,numeroDePasos+1);
    hUtil = t(2)-t(1); ##El h que terminamos usando. Es el "corregido"

    X=zeros(length(Xi), length(t));
    X(:,1) = Xi;

    for j = 2:numeroDePasos+1
        m1 = f(t(j-1), X(:,j-1));
        m2 = f(t(j-1) + hUtil, X(:,j-1) + m1 * hUtil);
        X(:,j) = X(:,j-1) + (1/2) * (m1+m2) * hUtil;
    endfor

endfunction