clear all
close all
%%valores de A=5,
%% f0 {500,1000,2000 } e alpha=0

%% 4 periodos de sinal exercicio 1 %%Falta terminar 
A = 5;
B = 1;
f0 = 500;
fs = 8000;
nPeriodos = 4;
alpha = 0;
t = (0 : 1/fs : (nPeriodos)*(1/f0));
[ x,y ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );

figure (1)
plot(t,x); 

figure (2)
plot(t,y);

%% 4 periodos de sinal exercicio 1 %%Falta terminar 
A = 5;
B = 1;
f0 = 1000;
fs = 8000;
nPeriodos = 4;
alpha = 0;
t = (0 : 1/fs : (nPeriodos)*(1/f0));
[ x1,y1 ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );

figure (3)
plot(t,x1); 

figure (4)
plot(t,y1);

%% 4 periodos de sinal exercicio 1 %%Falta terminar 
A = 5;
B = 1;
f0 = 2000;
fs = 8000;
nPeriodos = 4;
alpha = 0;
t = (0 : 1/fs : (nPeriodos)*(1/f0));
[ x2,y2 ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );

figure (5)
plot(t,x2); 

figure (6)
plot(t,y2);
%% c) Terminado

[freq, CK] = timeTofrequency( x, fs );
figure (7)
plot(freq,abs(CK));

[freq1, CK1] = timeTofrequency( x1, fs );
figure (8)
plot(freq1,abs(CK1));

[freq2, CK2] = timeTofrequency( x2, fs );
figure (9)
plot(freq2,abs(CK2));

%% d) Terminado
f0=500;
fs = 16000;
[ x,y ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );
[freq, CK] = timeTofrequency( x, fs );
figure (10)
plot(freq,abs(CK));

fs = 32000;
[ x1,y2 ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );
[freq1, CK1] = timeTofrequency( x1, fs );
figure (11)
plot(freq1,abs(CK1));
%%
f0=1000;
fs = 16000;
[ x,y ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );
[freq, CK] = timeTofrequency( x, fs );
figure (10)
plot(freq,abs(CK));

fs = 32000;
[ x1,y2 ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );
[freq1, CK1] = timeTofrequency( x1, fs );
figure (11)
plot(freq1,abs(CK1));

%%
f0=2000;
fs = 16000;  
[ x,y ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );
[freq, CK] = timeTofrequency( x, fs );
figure (10)
plot(freq,abs(CK));

fs = 32000;
[ x1,y2 ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos );
[freq1, CK1] = timeTofrequency( x1, fs );
figure (11)
plot(freq1,abs(CK1));
