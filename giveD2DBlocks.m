function [ d2dUsers] = giveD2DBlocks(d2dUsers)

nrOfBlocks = 50;
blocksPerUser = 10;

counter = 0;
i = 1;

while (counter < nrOfBlocks)
    if (d2dUsers(i).head == true && d2dUsers(i).nrOfBlocks == 0)
        counter = counter + 1;
        while (mod(counter,blocksPerUser) ~= 0)
            d2dUsers(i) = d2dUsers(i).addBlock(counter);
            counter = counter + 1;
        end
        d2dUsers(i) = d2dUsers(i).addBlock(counter);
    end
    i = i + 1;
end