clear all
close all

%% 2.b) mysquareWave 7 harmónicas 0.125 Duty-cycle

A = 1;
Dc     = 0.125;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 7;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(1)
plot(t,x)
title('mysquareWave 7 harmónicas 0.125 Duty-cycle')
grid on

%% 2.b) mysquareWave 7 harmónicas 0.25 Duty-cycle

A = 1;
Dc     = 0.25;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 7;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(2)
plot(t,x)
title('mysquareWave 7 harmónicas 0.25 Duty-cycle')
grid on

%% 2.b) mysquareWave 7 harmónicas 0.5 Duty-cycle

A = 1;
Dc     = 0.5;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 7;

[x7,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(3)
plot(t,x7)
title('mysquareWave 7 harmónicas 0.50 Duty-cycle')
grid on
%% 2.b) mysquareWave 14 harmónicas 0,125 Duty-cycle

A = 1;
Dc     = 0.125;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 14;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(4)
plot(t,x)
title('mysquareWave 14 harmónicas 0.125 Duty-cycle')
grid on

%% 2.b) mysquareWave 14 harmónicas 0,25 Duty-cycle

A = 1;
Dc     = 0.25;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 14;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(5)
plot(t,x)
title('mysquareWave 14 harmónicas 0.25 Duty-cycle')
grid on

%% 2.b) mysquareWave 14 harmónicas 0,50 Duty-cycle

A = 1;
Dc     = 0.50;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 14;

[x14,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(6)
plot(t,x14)
title('mysquareWave 14 harmónicas 0.50 Duty-cycle')
grid on
%% 2.b) mysquareWave 22 harmónicas 0.125 Duty-cycle

A = 1;
Dc     = 0.125;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 22;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(7)
plot(t,x)
title('mysquareWave 22 harmónicas 0.125 Duty-cycle')
grid on

%% 2.b) mysquareWave 22 harmónicas 0.25 Duty-cycle

A = 1;
Dc     = 0.25;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 22;

[x,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(8)
plot(t,x)
title('mysquareWave 22 harmónicas 0.25 Duty-cycle')
grid on

%% 2.b) mysquareWave 22 harmónicas 0.50 Duty-cycle

A = 1;
Dc     = 0.50;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 22;

[x22,t] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar);

figure(9)
plot(t,x22)
title('mysquareWave 22 harmónicas 0.50 Duty-cycle')
grid on
%% 2.b) myTriangular wave 7 harmónicas

A       = 4;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 7;

[ xt7,t ] = myTriangularWave( A,f0,fs, nPeriodos, nHar );

figure(10)
plot(t,xt7)
title('myTriangularWave 7 harmónicas')
grid on

%% 2.b) myTriangular wave 14 harmónicas

A       = 4;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 14;

[ xt14,t ] = myTriangularWave( A,f0,fs, nPeriodos, nHar );

figure(11)
plot(t,xt14)
title('myTriangularWave 14 harmónicas')
grid on

%% 2.b) myTriangularWave 22 harmónicas

A       = 4;
fs      = 8000;
f0      = 1000;
nPeriodos = 2;
nHar    = 22;

[ xt22,t ] = myTriangularWave( A,f0,fs, nPeriodos, nHar );

figure(12)
plot(t,xt22)
title('myTriangularWave 22 harmónicas')
grid on


%% 2.c) Módulos dos espetros de amplitude e os espetros de fase

%% mySquareWave 7 harmónicas 0.5 duty-cycle
fs = 32000;
[freq, CK] = timeTofrequency(x7,fs);

figure(13)
subplot(1,2,1)
plot(freq,abs(CK))
title('Espetro de Amplitude da mySquareWave 7 harmónicas ');
grid on;
subplot(1,2,2)
plot(freq,angle(CK),'o')
title('Espetro de Fase da mySquareWave 7 harmónicas');
grid on;
%% mySquareWave 14 harmónicas 0.5 duty-cycle
fs = 32000;
[freq, CK] = timeTofrequency(x14,fs);

figure(14)
subplot(1,2,1)
plot(freq,abs(CK))
title('Espetro de Amplitude da mySquareWave 14 harmónicas ');
grid on;
subplot(1,2,2)
plot(freq,angle(CK))
title('Espetro de fase da mySquareWave 14 harmónicas');
grid on;

%% mySquareWave 22 harmónicas 0.5 duty-cycle
fs = 32000;
[freq, CK] = timeTofrequency(x22,fs);

figure(15)
subplot(1,2,1)
plot(freq,abs(CK))
title('Espetro de Amplitude da mySquareWave 22 harmónicas ')
subplot(1,2,2)
plot(freq,angle(CK))
title('Espetro de fase da mySquareWave 22 harmónicas');
grid on;
%% myTriangularWave 7 harmónicas
fs = 16000;
[freq, CK] = timeTofrequency(xt7,fs);

figure(16)
subplor(1,2,1)
plot(freq,abs(CK))
title('Espetro de Amplitude e de fase da myTriangularWave 7 harmónicas ')
grid on;
subplot(1,2,2)
plot(freq,angle(CK))
title('Espetro de Fase da myTriangularWave 7 harmónicas')
grid on;
%% myTriangularWave 14 harmónicas
fs = 16000;
[freq, CK] = timeTofrequency(xt14,fs);

figure(17)
subplot(1,2,1)
plot(freq,abs(CK))
title('Espetro de Amplitude da myTriangularWave 14 harmónicas ')
grid on;
subplot(1,2,2)
plot(freq,angle(CK))
title('Espetro de Fase da myTriangularWave 14 harmónicas')
grid on;
%% myTriangularWave 22 harmónicas
fs = 16000;
[freq, CK] = timeTofrequency(xt22,fs);

figure(18)
subplot(1,2,1)
plot(freq,abs(CK))
title('Espetro de Amplitude da myTriangularWave 22 harmónicas ')
grid on;
subplot(1,2,2)
plot(freq,angle(CK))
title('Espetro de Fase da myTriangularWave 22 harmónicas')
grid on;
