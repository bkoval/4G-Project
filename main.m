%Create a table of 100 users (UE's) in 5000 m range cell
%And 0.5 chance for being in D2D
users = createUsers( 100, 5000, 0.4 );

%Selects D2D heads and assigns D2D neighbors
users = setD2DPairs( users );

%Current bandwidth is 1 channel * 50 blocks
bandWidth = 50;

%Generate 10 users that will be transmitting
activeUserIDs = getActiveUsers( users, 10 ,0);

%Assign resource blocks fairly between users
users = giveResourceBlocks(bandWidth, users, activeUserIDs);

d2dUsers = getD2DUsers(users);

hugo = giveD2DBlocks(d2dUsers, users);

sinr = calculateThroughput(hugo);