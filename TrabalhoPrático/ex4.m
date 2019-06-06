clear all 
close all

%%% i %%%%
A0 = 5;
d = 0.5;
N = 5;
f0 = 500;
fs=8000;
dur= 3*(1/f0);
t=0:1/fs:dur;
xsomatorio=0;
for k=1:2:N;
    xsomatorio = xsomatorio + (my_sinc(d,k,0,d)*cos(2*pi*k*f0*t));
end

x = A0+xsomatorio;

figure(1)
plot(t,x);
grid on


%%% ii %%%
A0 = 3;
d = 0.25;
N = 15;
f0 = 1000;
fs=8000;
dur= 3*(1/f0);
t=0:1/fs:dur;
xsomatorio=0;
for k=1:N;
    xsomatorio = xsomatorio + (my_sinc(d,k,0,d)*cos(2*pi*k*f0*t));
end

x = A0 + xsomatorio;

figure(2)
plot(t,x);
grid on