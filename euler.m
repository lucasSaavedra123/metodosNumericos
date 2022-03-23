function [t,X] = euler(f,ti,Xi,tf,h)

    numeroDePasos = ceil((abs(tf-ti)/h));
    t = linspace(ti,tf,numeroDePasos+1);
    hUtil = t(2)-t(1); ##El h que terminamos usando. Es el "corregido"

    X=zeros(length(Xi), length(t));
    X(:,1) = Xi;

    for indiceDeFila = 2:numeroDePasos+1
        X(:,indiceDeFila) = X(:,indiceDeFila-1) + f(t(indiceDeFila-1),X(:,indiceDeFila-1)) * hUtil;
    endfor

endfunction