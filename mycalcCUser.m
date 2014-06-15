function [ C ] = mycalcCUser( x,y,f )
%CALCCUSER Summary of this function goes here
%   Detailed explanation goes here

sinr=mycalcSINRDLNormal(x,y,f);
C=10*log10(1+10^(sinr/10));

end


