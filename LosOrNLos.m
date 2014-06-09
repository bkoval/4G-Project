function [islos] = LosOrNLos( d )
%ISLOS Summary of this function goes here
%   Detailed explanation goes here

%Dokument Rep. ITU-R M.2135-1 33 str. 33

% Musimy określić, czy PathLoss będzie liczone wg wzoru na Los czy NLos
% Dotyczy nas wiersz w tabeli Uma, czyli dla naszego modelu

% Funckja przyjmuje jako argument odległość od stacji bazowej, to jest
% wtórne

% Zwraca zmienną bulowską - jeśli true, to liczymy wg LOS, jeśli false
% to wg NLOS

PLOS = min (18/d,1)*(1-exp(-d / 63)) + exp (-d/63);
if PLOS>=0.5 islos=true;
else islos=false;
end
    

end

