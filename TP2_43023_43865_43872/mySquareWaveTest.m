close all
clear all
%%
A = 1;
Dc     = 0.5;
fs      = 64000;
f0      = 2000;
t0 = 1/f0;
nPeriodos = 20/t0;
nHar    = 22;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);
y = lowpass();
subplot(1,2,1)
plot(t,x)
xlim([0 2*t0]);
subplot(1,2,2)
plot(t,y)
xlim([0 2*t0]);
%audio = zeros(1,n);
%player = audioplayer(x,fs);
%play(player)

%%Filtro passa-baixo com Fcorte de 1500Hz

