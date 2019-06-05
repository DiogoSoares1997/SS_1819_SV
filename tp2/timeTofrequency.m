%
% ISEL - Instituto Superior de Engenharia de Lisboa.
%
% LEIRT -  Licenciatura em Engenharia Informática, Redes e Telecomunicações
%
% SS  - Sinais e Sistemas 
% 
%  
% timeTofreqqunecy.m
% Calcula os coeficientes CK do sinal x com base na função fft() do MATLAB
% Recebe:
%       x, sinal no domínio do tempo.
%       Fs, frequência de amostragem do sinal x.
% Retorna:
%       freq, eixo da frequência 
%       CK, valores dos coeficientes CK.

function [freq, CK] = timeTofrequency( x, Fs )


% COMENTAR
freq = ((0 : 1 : length(x)-1)*Fs / ( length(x) )) - Fs/2;

% Espectro.
% COMENTAR 
CK = fftshift( fft(x) );  

% COMENTAR
CK = CK / length(x);


return;
        