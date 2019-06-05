function [ x,y ] = my_sinusoid_2( A,B,f0,fs, alpha, nPeriodos )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    t = (0 : (1/fs) : (nPeriodos)*(1/f0));
    
    x = A * cos((2*pi*f0*t)+alpha);
    y = (A * cos((2*pi*f0*B*t)+alpha));
end

