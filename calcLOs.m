function [ PL ] = calcLos( d )
%ISLOS Summary of this function goes here
%   Detailed explanation goes here

%Dokument Rep. ITU-R M.2135-1 33 str. 31

% Musimy policzyć Los

% Funckja przyjmuje jako argument odległość od stacji bazowej

% Zwraca wartość Los

%%%%%%%%%%%%%%%%%%%%%%%%%
%Wartości stałe
hbs = 24; %wysokość stacji bazowej
fc = 2000000000; %częstotliwość środkowa - tabela na stronie 14?
c = 300000000; %prędkość światła?!
hUT = 0.5; %wysokość terminala

%Najpierw liczymy dbp, które określa wg jakiego wzoru liczymy LOS
dbp = 4*hbs*hUT*fc/c

if (d>10 && d<dbp)  %zależność wzięta z ostatniej kolumny tabeli
PL = 22.0*log10(d)+28.0+20*log10(fc) %środkowa część tabeli
else if (d>dbp && d<5000)
PL = 40.0*log10(d) + 7.8-18.0*log10(hbs)-18.0*log10(hUT)+2.0*log10(fc)
    else
PL=0       
    end

end

