function [ x,t ] = myTriangularWave( A,f0,fs, nPeriodos, nHar )
%MYTRIANGULARWAVE Summary of this function goes here
%   Detailed explanation goes here


t = (0 : (1/fs) : (nPeriodos)*(1/f0));
x=zeros(1,length(t));

for k = 1:2:nHar

x = x + A*(8/(pi^2))*((-1)^(2*k+1))/(k^2)*cos(2*pi*f0*k*t);
%     x = x + (2/(pi*k))^2*cos(2*pi*f0*k*t);
end

end

