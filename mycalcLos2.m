function [ PL ] = mycalcLos2( d,ch )
%ISLOS Summary of this function goes here
%   Detailed explanation goes here

%Dokument Rep. ITU-R M.2135-1 33 str. 31

% Musimy policzyĂÂ Los

% Funckja przyjmuje jako argument odlegÄšÂoÄšÂĂÂ od stacji bazowej

% Zwraca wartoÄšÂĂÂ Los

%%%%%%%%%%%%%%%%%%%%%%%%%
%WartoÄšÂci staÄšÂe
hbs = 24; %wysokoÄšÂĂÂ stacji bazowej
fc = ch; %czĂÂstotliwoÄšÂĂÂ ÄšÂrodkowa - tabela na stronie 14?
c = 300000000; %prĂÂdkoÄšÂĂÂ ÄšÂwiatÄšÂa?!
hUT = 0.5; %wysokoÄšÂĂÂ terminala

%Najpierw liczymy dbp, ktÄĹre okreÄšÂla wg jakiego wzoru liczymy LOS
dbp = 4*hbs*hUT*fc/c

if (d>10 && d<dbp)  %zaleÄšĹşnoÄšÂĂÂ wziĂÂta z ostatniej kolumny tabeli
PL = 22.0*log10(d)+28.0+20*log10(fc) %ÄšÂrodkowa czĂÂÄšÂĂÂ tabeli
else if (d>dbp && d<5000)
PL = 40.0*log10(d) + 7.8-18.0*log10(hbs)-18.0*log10(hUT)+2.0*log10(fc)
    else
PL=0       
    end

end

