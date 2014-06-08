function [ bandArray ] = createBand( bandStart, bandEnd, channelWidth )
%CREATEBAND this method creates band array for a BTS
channelsNumber = floor( ( bandEnd - bandStart ) / channelWidth );
bandArray = zeros(1, channelsNumber);
end

