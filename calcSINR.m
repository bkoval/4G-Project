function [ SINR ] = calcSINR( d )
%CALCSINR Summary of this function goes here
%   Detailed explanation goes here
%Funckja liczy SINR na podstawie d, korzystajac z funkcji LosOrNLos,
%calcLOs oraz calcNLos;

%Najpierw parametry

%Moc stacji bazowej:
Pbs=49; %w dBm dla 20MHz, dla 10MHz byłoby 46
%Przeliczyć to na skale liniowa?!

%Wariancja szumu - 4 dla LOs, 6 dla NLos

%Shadowing - przyjmijmy 3
shdwng=3;

islos=LosOrNLos(d); 
if (islos) 
    pathloss=calcLos2(d); 
    noisevar=4;
else
    pathloss=calcNLos(d); 
    noisevar=6;
end

SINR=(Pbs-pathloss-3)/noisevar; %Tu mam watpliwosci natury - skala db czy linowa?


end


