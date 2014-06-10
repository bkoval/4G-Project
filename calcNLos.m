function [ PL ] = calcNLos( d )
%ISLOS Summary of this function goes here
%   Detailed explanation goes here

%Dokument Rep. ITU-R M.2135-1 33 str. 31

% Musimy policzyc NLos

% Funckja przyjmuje jako argument odleglosc od stacji bazowej

% Zwraca wartoĹÄ NLos

%%%%%%%%%%%%%%%%%%%%%%%%%
%Wartosci stale
hbs = 25; %wysokosc stacji bazowej
fc = 2000000000; %czestotliwoc srodkowa - tabela na stronie 14?
c = 300000000; %predkosc swiatla
hUT = 1.5; %wysokosc terminala
h = 20; %srednia wysokosc budynkow
W = 20; %szerokosc ulic


%Najpierw liczymy dbp, ktore okresla wg jakiego wzoru liczymy LOS
%dbp = 4*hbs*hUT*fc/c

if (d>10 && d<5000)  %zaleznosc wzieta z ostatniej kolumny tabeli
PL = 161.04-7.1*log10(W)+7.5*log10(h)-(24.37-3.7*(h/hbs)^2)*log10(hbs)+(43.42-3.1*log10(hbs))*(log10(d)-3)+20*log10(fc)-(3.2*(log10(11.75*hUT))^2-4.97);
else
PL=0       
    end

end


