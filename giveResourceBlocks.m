function [ users ] = giveResourceBlocks( bandStart, bandEnd, blockSize, users )
%GIVERESOURCEBLOCKS Gives resource blocks to the users

%Create matrix with resource block boundaries
band = createBand(bandStart, bandEnd, blockSize);
nrOfBlocks = size(band, 2);
%Randomly generate transmitting users ID's
activeUsers = getTransmittingUsers(users, nrOfBlocks);

for i = 1 : nrOfBlocks
    %Obtain a middle frequency of the resource block
    middleFreq = band(2, i) - blockSize / 2;
    %Assign it to the active users
    users( activeUsers(i), 5 ) = middleFreq;
end
            