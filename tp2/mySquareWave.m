function [ x,t ] = mySquareWave(A,Dc,f0,fs, nPeriodos, nHar)
%MYSQUAREWAVE 
%retorna uma onda quadrada com nHar harmonicas 

t = 0 : (1/fs) : (nPeriodos)*(1/f0);

x=zeros(1,length(t));
for k = 1:nHar
        Ck = A*Dc*sinc(k*Dc);
        if(Ck< 0 && k<0);
            alpha=pi;
        elseif(Ck <0 && k>0);
            alpha=-pi;
        else
           alpha = 0;
        end
        x = x + abs(Ck)*cos(2*pi*k*f0*t+alpha);
end
    
end

