clear all 
close all

%% Exercicio 3 Sistema S

t = -0.001:0.00001:0.001;

a = 2*cos(2*pi*1000*t);
b= 2*cos(2*pi*1000*t);
d = 0*t;

[c,e]=SystemS(a,b,d);
figure(1)
plot(t,c)
figure(2)
plot(t,e)