function x = resuelveU(U,w)
    x=flipud(resuelveL(flipud(fliplr(U)),flipud(w))); 
endfunction 