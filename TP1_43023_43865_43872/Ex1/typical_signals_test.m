clear all
close all

%% 4 periodos de sinal exercicio 1 a)

%%i)
A = 6;
B = 2;
C = 8;
f0 = 500;
alpha = -pi;
dur = 1/f0;
fs = 8000;
ts = 1/fs;
t = 0:ts:4*dur;

%[z] = my_sinc(A,B,C,t);
[x,y] = my_sinusoid(A,B,f0,t,alpha);

figure (1)

plot (t,x)
title('Sinal x(t) com A=6; B=2; C=8 ; fo=500 e ?=-?');
xlabel('Tempo (t) em segundos');
ylabel('Amplitude (A)');
grid on
figure (2)
plot (t,y)
title('Sinal y(t) com A=6; B=2; C=8 ; fo=500 e ?=-?');
xlabel('Tempo (t) em segundos');
ylabel('Amplitude (A)');
grid on
%% 4 perídos de sinal exercicio 1 a)

%ii)

A = -4;
B = 0.5;
C = 8;
f0 = 500;
alpha = 0;
dur = 1/f0;
fs = 8000;
ts = 1/fs;
t = 0:ts:4*dur;

[x,y] = my_sinusoid(A,B,f0,t,alpha);

figure (3)
plot (t,x)
title('Sinal x(t) com A=-4; B=0,5; C=8; fo=500 e ?=0')
xlabel('Tempo (t) em segundos')
ylabel('Amplitude (A)')
grid on
figure (4)
plot (t,y)
title('Sinal y(t) com A=-4; B=0,5; C=8; fo=500 e ?=0')
xlabel('Tempo (t) em segundos')
ylabel('Amplitude (A)')
grid on
%% sinal Z exercicio 1 a)

%i)

A= 6;
B=2;
C=8;
t = -10:0.1:2;

[z] = my_sinc(A,B,C,t);

figure (5)
subplot(2,1,1);
plot(t,z)
title('Sinal z(t) com A=6; B=2; C=8;')
xlabel('Tempo (t)')
ylabel('Amplitude (A)')
grid on

% sinal Z exercicio 1 b)

%ii)

A = -4;
B = 0.5;
C = 2;
t = -18:0.1:10;

[z] = my_sinc(A,B,C,t);
%figure (6)
subplot(2,1,2);

plot(t,z)
xlim([-18 10]);
title('Sinal z(t) com A=-4; B=0.5; C=2;')
xlabel('Tempo (t)')
ylabel('Amplitude (A)')
grid on