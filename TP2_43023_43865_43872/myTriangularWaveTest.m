clear all
close all
%% 2.b) myTriangular wave 7 harmónicas

A       = 1;
fs      = 64000;
f0      = 1000;
t0 = 1/f0;
nPeriodos = 20/t0;
nHar    = 22;

[ xt,t ] = myTriangularWave( A,f0,fs, nPeriodos, nHar );
plot(t,xt)
xlim([0 2*t0]);
%player = audioplayer(xt,fs);
%play(player)

%%Filtro passa-baixo com Fcorte de 1500Hz
