clear all 
close all

%% Exercicio 3 Sistema S a) i

t = -0.001:0.00001:0.001;

a = 2*cos(2*pi*1000*t);
b= 2*cos(2*pi*1000*t);
d = 0;

[c,e,valormedioC,valormedioE]=SystemS(a,b,d);
figure(1)
plot(t,c)
figure(2)
plot(t,e)

%% Exercicio 3 Sistema S a) ii

t = -0.001:0.00001:0.001;

a = 2*cos(2*pi*500*t - (pi/4));
b = cos(2*pi*1000*t);
d = -1;

[c,e]=SystemS(a,b,d);

figure(3)
plot(t,c)
figure(4)
plot(t,e)

%% Exercicio 3 Sistema S a) iii

t = -0.001:0.00001:0.001;

a = 2*cos(2*pi*1500*t-(pi/4));
b = 2*sin(2*pi*200*t);
d = 1;

[c,e]=SystemS(a,b,d);

figure(5)
plot(t,c)
figure(6)
plot(t,e)