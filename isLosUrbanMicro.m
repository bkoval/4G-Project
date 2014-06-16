function [isLos] = isLosUrbanMicro (d)
isLos = fase;
PLOS = min(18/d,1) * (1-(exp(-d/36))) + exp(-d/36);
    
    if PLOS >= 0.5 
        isLos = true;
end
    