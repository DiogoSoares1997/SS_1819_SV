%
% ISEL - Instituto Superior de Engenharia de Lisboa.
%
% LEIRT -  Licenciatura em Engenharia Inform�tica, Redes e Telecomunica��es
%
% SS  - Sinais e Sistemas 
% 
%  
% timeTofreqqunecy.m
% Calcula os coeficientes CK do sinal x com base na fun��o fft() do MATLAB
% Recebe:
%       x, sinal no dom�nio do tempo.
%       Fs, frequ�ncia de amostragem do sinal x.
% Retorna:
%       freq, eixo da frequ�ncia 
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
        