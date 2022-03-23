function [F,n,p] = busca_grado_pol(x,y,err_rel_prop)
    n = 0
    p=polyfit(x,y,n);
    F = @(k) polyval(p,k);
    errorRelativo = norm(y-F(x))/norm(y);

    while !(errorRelativo < err_rel_prop)
        n += 1;
        p=polyfit(x,y,n);
        F = @(k) polyval(p,k);
        errorRelativo = norm(y-F(x))/norm(y);
    endwhile

endfunction