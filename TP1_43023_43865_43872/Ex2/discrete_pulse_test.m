clear all
close all
%% teste discrete pulse

%a) x1 par

t=-10:10;
k=3;
N=5;
A=1;
type='par';

[n,x,xe,xo,xa] = discrete_pulse(k, N, A, t, type);

 enx=sum(x.*x)
 enxe=sum(xe.*xe)
 enxo=sum(xo.*xo)

 
%figure(1);stem(n,x); grid on
%figure(2);stem(n,xe);grid on
%figure(3);stem(n,xo);grid on
figure(1)


subplot(3,1,1);stem(n,x);title('Sinal'); grid on
subplot(3,1,2);stem(n,xe);title('Componente Par');grid on
subplot(3,1,3);stem(n,xo);title('Componente Impar');grid on
%% x2 impar


t=-10:10;
k=3;
N=5;
A=1;
type = 'impar';

[n,x,xe,xo,xa] = discrete_pulse(k, N, A, t, type)

 enx=sum(x.*x)
 enxe=sum(xe.*xe)
 enxo=sum(xo.*xo)


figure(1)

subplot(3,1,1);stem(n,x); title('Sinal'); grid on
subplot(3,1,2);stem(n,xe);title('Componente Par');grid on
subplot(3,1,3);stem(n,xo);title('Componente Impar');grid on
%% x3 none

t=-10:10;
k=3;
N=5;
A=1;
type='none';


[n,x,xe,xo,xa] = discrete_pulse(k, N, A, t, type)

 enx=sum(x.*x)
 enxe=sum(xe.*xe)
 enxo=sum(xo.*xo)

figure(3)

subplot(3,1,1);stem(n,x); title('Sinal'); grid on
subplot(3,1,2);stem(n,xe);title('Componente Par');grid on
subplot(3,1,3);stem(n,xo);title('Componente Impar');grid on


