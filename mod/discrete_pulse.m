function [n,x,xe,xo] = discrete_pulse(k, N, A, n, type)


%n=(t-k)/N;
    u=zeros(1,length(n))
    u(find(n==cast((k-N/2),'int8')):find(n==cast((k+N/2),'int8')))=A
    x=u
    
if strcmp(type,'par')
    
    u(find(n==cast((-k-N/2),'int8')):find(n==cast((-k+N/2),'int8')))=A
    xe=u
    xo=zeros(1,length(n))
    
elseif strcmp(type,'impar')
    
    u(find(n==cast((-k-N/2),'int8')):find(n==cast((-k+N/2),'int8')))=-A
    xo=u
    xe=zeros(1,length(n))
   
else 
    
    x=u
    Xe=u
    xo=u
    
end


