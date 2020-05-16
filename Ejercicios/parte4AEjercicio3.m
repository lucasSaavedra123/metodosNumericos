disp("Parte 4 A-Ejercicio 3");
disp("\n");
disp("a)");
disp("\n");

[audio,fs]=audioread('audio.wav');
player = audioplayer(audio, fs); 
play(player);

input("Pulsar ENTER cuando termine el audio...");

audioNuevo = comprimirAudioDeDosCanales(audio, 0.95, 0.95);
player = audioplayer(audioNuevo, fs); 
play(player);

disp("\n");
input("Pulsar ENTER para continuar");
disp("\n");
disp("b)");
disp("\n");