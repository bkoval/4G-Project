function [ newBand ] = giveResourceBlocks( band, activeUsers )
%GIVERESOURCEBLOCKS Gives resource blocks to the users
%band [matrix] resource blocks
%activeUsers [matrix] transmitting users
%returns [matrix]

nrOfUsers = size(activeUsers, 1);

%We fairly give every user same amount of blocks
blocksPerUser = floor( size(band, 2) / nrOfUsers );
newBand = band;

%First the d2d users get their blocks next to each other
for i=1:nrOfUsers
    if(activeUsers(i, 4)) %==1 means user has d2d
        userId = activeUsers(i, 1);
        blocksTaken = 0;
        index = 1;
        while(blocksTaken < blocksPerUser)
            if(~newBand(1, index))
                blocksTaken = blocksTaken + 1;
                newBand(1, index) = userId;
            end
            index = index + 1;
        end
    end
end

%Next we fill the band for the non-d2d users
for i=1:nrOfUsers
    if(~activeUsers(i, 4)) %==1 means user does not have d2d
        userId = activeUsers(i, 1);
        blocksTaken = 0;
        index = 1;
        while(blocksTaken < blocksPerUser)
            if(~newBand(1, index))
                blocksTaken = blocksTaken + 1;
                newBand(1, index) = userId;
            end
            index = index + 1;
        end
    end
end

            