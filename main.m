%Create 50 users in a radius of 100 with 0.4 prob. of d2d
users = createUsers(50, 100, 0.4);

%Create 20 MHz resource blocks between 2000 and 2200 MHz
%band = createBand(2000, 2200, 20);

%Get 10 users that will be transmitting
%activeUsers = getTransmittingUsers(users, 10);

%Update band by giving the blocks to the transmitting users;
%band = giveResourceBlocks(band, activeUsers);

%calculate throughput for each user and sum
%[thr,sum] = calculateThroughput(activeUsers);

activeUsers = findClosestNeighbour(users);