%Create a table of 100 users (UE's) in 5000 m range cell
%And 0.5 chance for being in D2D
users = createUsers( 100, 5000, 0.4 );

%Selects D2D heads and assigns D2D neighbors
users = setD2DPairs( users );

%Current bandwidth is 1 channel * 50 blocks
bandWidth = 50;

%Generate 10 users that will be transmitting
activeUserIDs = getActiveUsers(users, 10 ,1);

%Assign resource blocks fairly between users
users = giveResourceBlocks(bandWidth, users, activeUserIDs);

hugo = giveD2DBlocks(getD2DUsers(users), users);

usersDL = calculateSinrDownlinkInterference(hugo);

usersUL = calculateSinrUplinkInterference(hugo);

sumSINRDL = 0;
sumSINRUL = 0;
sumThrDL = 0;
sumThrUL = 0;
nrOfUsers = length(usersDL);

for i = 1: nrOfUsers
    usersDL(i) = usersDL(i).calculateSINR();
    
    usersDL(i) = usersDL(i).calculateThroughput();
    
    sumSINRDL = sumSINRDL + usersDL(i).sinr;
    
    sumThrDL = sumThrDL + usersDL(i).throughput
    
end

for i = 1: nrOfUsers
    usersUL(i) = usersUL(i).calculateSINR();
    usersUL(i) = usersUL(i).calculateThroughput();
    sumSINRUL = sumSINRUL + usersUL(i).sinr;
    sumThrUL = sumThrUL + usersUL(i).throughput   
end

%Average SINR for downlink resources
avgSINRDL = sumSINRDL / nrOfUsers;

%Average SINR for uplink resources
avgSINRUL = sumSINRUL / nrOfUsers;

%no interference case (comment previous 4 lines) 
%activeUserIDs = getActiveUsers( users, 10 ,0);
%users = giveResourceBlocks(bandWidth, users, activeUserIDs);
%new = calculateSinrDownlinkWithoutInter(users);
