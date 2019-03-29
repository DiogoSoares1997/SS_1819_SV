clear all
close all
%% teste discrete pulse

%a)

t=-10:10;
k=3;
N=5;
A=1;
type='par';
%type = 'impar';

[n,x,xe,xo] = discrete_pulse(k, N, A, t, type)

figure(1);stem(n,x);
figure(2);stem(n,xe);
