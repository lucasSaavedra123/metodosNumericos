function audioNuevo = comprimirAudioDeDosCanales(audio, porcentajeCanal1, porcentajeCanal2)

    longitud = size(audio)(1);
    nuevaDimension = round(sqrt(longitud));

    canal1=zeros(nuevaDimension,nuevaDimension); 
    canal2=zeros(nuevaDimension,nuevaDimension); 

    for k=0:(nuevaDimension-1)  
        canal1(1:nuevaDimension ,k+1)=audio((1:nuevaDimension )+k*nuevaDimension,1);
        D(1:nuevaDimension,k+1)=audio((1:nuevaDimension)+k*nuevaDimension,2); 
    endfor 

    kCanal1 = nivel(canal1,porcentajeCanal1);
    kCanal2 = nivel(canal2,porcentajeCanal2);

    canal1Aprox=aproxima(canal1,kCanal1); 
    canal2Aprox=aproxima(canal2,kCanal2); 
    
    audioNuevo=zeros(size(audio)); 

    for k=0:(nuevaDimension-1)   
        audioNuevo((1:nuevaDimension)+k*nuevaDimension,1)=canal1(1:nuevaDimension,k+1);   
        audioNuevo((1:nuevaDimension)+k*nuevaDimension,2)=canal2(1:nuevaDimension,k+1); 
    endfor

endfunction