function [ users ] = giveResourceBlocks( nrOfBlocks, users )
%GIVERESOURCEBLOCKS Gives resource blocks to the users

%Randomly generate transmitting users ID's
activeUsers = getTransmittingUsers(users, 10)
nrOfUsers = length(activeUsers);
blocksPerUser = floor( nrOfBlocks / nrOfUsers );
counter =0;

for i = 1 : nrOfUsers
    for j = 1 : blocksPerUser
        users(i) = users(i).addBlock(counter);
        counter = counter + 1;
    end
end
            