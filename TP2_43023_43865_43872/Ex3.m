close all
clear all
%% Ex 3 convulcao y = x*h

fs=8000;



t = (-6 : (1/100) : 8);

trig= 4*triangularPulse(t/4);

figure(1)
plot(t,trig)

quad= 2*rectangularPulse((t-2)/4)

figure(2)
plot(t,quad)
%%

w = conv(trig,quad,'same')

figure(3)
plot(t,w)

%% exercicio 3 b

n = 0:20;


h = ones(1,length(n));


x = 0,5

figure(4)
plot(n,x,'o');

%% Exercicio c

%ii)

Fs=8000;
f0=100;

t = -(1/f0) : (1/Fs) : (1/f0);


xt = 4 + 2*cos(2*pi*500*t)+4*cos(2*pi*1500*t)+8*cos(2*pi*2500*t);

[freq, CK] = timeTofrequency( xt, Fs );


figure(6)
plot(freq,abs(CK))

title('Espetro de Amplitude de x(t)')



ht= 16000*sinc(4000*t);

[freq2, CK2] = timeTofrequency( ht, Fs );

figure(7)
plot(freq2,abs(CK2))

title('Espetro de Amplitude de h(t)')

%% ex c

%iii)


yf = conv(CK,CK2,'same');

[t, signal] = frequencyToTime( yf, Fs )


figure(8)
plot(t,signal)

yt = 4 + 2*cos(2*pi*500*t)+4*cos(2*pi*1500*t);

figure(9)
plot(t,yt)


