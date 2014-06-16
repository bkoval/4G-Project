function [ pl ] = calcLosUrbanMicrio(d)

hbs = 10; %wysokosc stacji bazowej
fc = 2500000000; %czestotliwoc srodkowa - tabela na stronie 14?
hUT = 1.5; %wysokosc terminala
%shad = 3 %shadowing 3db
% Break point distance dpb= 4 h?BS h?UT fc/c,
c = 300000000; %predkosc swiatla
dpb = 4* hbs * hUT * fc / c;


if (d >= 10 && d < dpb)
    pl = 22 * log10(d) + 28.0 + 20 * log10(fc);
elseif (d >= dpb && d < 5000)
    pl = 40 * log10(d) + 7.8 - 18*log10(hbs) - 18*log10(hUT) + 2*log10(fc);
else
    pl = 0;
end