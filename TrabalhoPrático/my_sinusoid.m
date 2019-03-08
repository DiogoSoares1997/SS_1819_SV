function [x,y ] = my_sinusoid( A,B,f0,t, alpha )
    x = A * cos((2*pi*f0*t)+alpha);
    %y = (x.^2).*(0.5*t);
    y = (A * cos((2*pi*f0*B*t)+alpha)).^2;
end

