function [n,x,x1,x2,x3] = discrete_pulse(k, N, A, t)

n=(t-k)/N;
    
x= A.*rectangularPulse(n);
end


