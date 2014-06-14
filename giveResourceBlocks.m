function [ newBand ] = giveResourceBlocks( band, activeUsers )
%GIVERESOURCEBLOCKS Gives resource blocks to the users
%band is a vector of resource block ids
%activeUsers is a matrix of activeUsers
nrOfUsers = size(activeUsers, 1)
%We fairly give every user same amount of blocks
blocksPerUser = floor( length(band) / nrOfUsers );

%First the d2d users get their blocks next to each other
for i=1:nrOfUsers
    if(activeUsers(i, 4)) %==1 means user has d2d
        userId = activeUsers(i, 1);
        blocksTaken = 0;
        index = 1;
        while(blocksTaken < blocksPerUser)
            if(~band(index))
                blocksTaken = blocksTaken + 1;
                band(index) = userId;
            end
            index = index + 1;
        end
    end
end

%Next we fill the band for the non-d2d users
for i=1:nrOfUsers
    if(~activeUsers(i, 4)) %==1 means user has d2d
        userId = activeUsers(i, 1);
        blocksTaken = 0;
        index = 1;
        while(blocksTaken < blocksPerUser)
            if(~band(index))
                blocksTaken = blocksTaken + 1;
                band(index) = userId;
            end
            index = index + 1;
        end
    end
end
%return the newly updated band
newBand = band;
            