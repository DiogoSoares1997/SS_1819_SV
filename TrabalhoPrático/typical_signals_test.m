clear all
close all

%% 4 periodos de sinal exercicio 1 a)

%%i)
A = 6;
B = 2;
C = 8;
f0 = 500;
alpha = -pi;
t = 0:1.2500e-04:0.008;

%[z] = my_sinc(A,B,C,t);
[x,y] = my_sinusoid(A,B,f0,t,alpha);

figure (1)
plot (t,x)
figure (2)
plot (t,y)
%% 4 perídos de sinal exercicio 1 a)

%ii)

A = -4;
B = 0.5;
C = 8;
f0 = 500;
alpha = 0;
t = 0:1.2500e-04:0.008;

[x,y] = my_sinusoid(A,B,f0,t,alpha);
figure (3)
plot (t,x)
figure (4)
plot (t,y)

%% sinal Z exercicio 1 a)

%i)

A= 6;
B=2;
C=8;
t = -10:0.1:10;

[z] = my_sinc(A,B,C,t);

figure (5)
plot(t,z)
grid on

%% sinal Z exercicio 1 b)

%ii)

A = -4;
B = 0.5;
C = 2;
t = -15:0.1:8;

[z] = my_sinc(A,B,C,t);
figure (6)
plot(t,z)