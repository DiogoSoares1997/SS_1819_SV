function [n,x,xe,xo,xi] = discrete_pulse(k, N, A, n, type)


%n=(t-k)/N;
    u=zeros(1,length(n));
    u(find(n==cast((k-N/2),'int8')):find(n==cast((k+N/2),'int8')))=A;
    
    x=u;
    xp=u;
    xi=u;

    
if strcmp(type,'par')
    
    %xp(find(n==cast((-k-N/2),'int8')):find(n==cast((-k+N/2),'int8')))=A
    %xo=zeros(1,length(n))
    for i = cast((-k-N/2),'int8'):cast((-k+N/2),'int8');
        xp(find(n==i)) = xp(find(n==i))+A;
        
    end
    xa=xp;%xa e o novo x

    
elseif strcmp(type,'impar')
    
    %xi(find(n==cast((-k-N/2),'int8')):find(n==cast((-k+N/2),'int8')))=-A
    
    for i = cast((-k-N/2),'int8'):cast((-k+N/2),'int8');
        xi(find(n==i)) = xi(find(n==i))-A;
    end
    xa=xi;
    %xe=zeros(1,length(n))
else
    xa=zeros(1,length(n));
      
end



xe=(xa+fliplr(xa))/2;
xo=(xa-fliplr(xa))/2;
 
    
end


