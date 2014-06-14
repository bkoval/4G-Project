function [ C ] = calcCUser( d )
%CALCCUSER Summary of this function goes here
%   Detailed explanation goes here

sinr=calcSINR2(d);
C=10*log10(1+10^(sinr/10))

end


