function imagenNueva =  comprimirImagen(imagen, porcentajeRojo, porcentajeVerde, porcentajeAzul)

    rojo = double(imagen(:,:,1));
    verde = double(imagen(:,:,2));
    azul = double(imagen(:,:,3));

    kRojo = nivel(rojo,porcentajeRojo);
    kVerde = nivel(verde,porcentajeVerde);
    kAzul = nivel(azul,porcentajeAzul);

    imagenNueva(:,:,1) = aproxima(rojo, kRojo);
    imagenNueva(:,:,2) = aproxima(verde, kVerde);
    imagenNueva(:,:,3) = aproxima(azul, kAzul);

endfunction