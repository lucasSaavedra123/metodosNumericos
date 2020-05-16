function l = nivel(A,epsilon)

    V = svd(A);
    j = 1;

    while ( j <= max(size(V)) && V(j) > epsilon * V(1) )
        j = j + 1;
    endwhile

    l = j - 1;

endfunction