function [ SINR ] = calcSINR2( d )
%CALCSINR Summary of this function goes here
%   Detailed explanation goes here
%Funckja liczy SINR na podstawie d, korzystajac z funkcji LosOrNLos,
%calcLOs oraz calcNLos;

%Najpierw parametry

%Moc stacji bazowej:
Pbs=79; %w dBm dla 20MHz, dla 10MHz byłoby 76
%W tabeli jest moc 49 i 46 w dBm, więc w dB będzie to odpowiednio 79 i 76
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

pathloss=10*log10(pathloss);

%SINR=(Pbs-pathloss-3)/noisevar; %Tu mam watpliwosci natury - skala db czy linowa?
SINR=Pbs-pathloss-3-noisevar^2;
%temp=SINR/10;
%SINR=10^temp

end

