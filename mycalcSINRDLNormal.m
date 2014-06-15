function [ SINR ] = mycalcSINRDLNormal( x,y,ch )
%CALCSINR Summary of this function goes here
%   Detailed explanation goes here
%Funckja liczy SINR na podstawie d, korzystajac z funkcji LosOrNLos,
%calcLOs oraz calcNLos;

%Najpierw parametry
dist=[0,0;x,y];
d=pdist(dist,'euclidean');
ch=ch*1000000;
%Moc stacji bazowej:
Pbs=79; %moc stacji bazowej w dB dla 20MHz!
%Shadowing - przyjmijmy 3
shdwng=3;

islos=myLosOrNLos(d); 
if (islos) 
    pathloss=mycalcLos2(d,ch); 
    noisevar=4; %wariancja szumu
else
    pathloss=mycalcNLos(d,ch); 
    noisevar=6; %wariancja szumu
end

pathloss=10*log10(pathloss);

%SINR=(Pbs-pathloss-3)/noisevar; %Tu mam watpliwosci natury - skala db czy linowa?
SINR=Pbs-pathloss-3-noisevar^2;
%temp=SINR/10;
%SINR=10^temp

end

