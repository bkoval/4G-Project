function [ users ] = mycreateUsers( )
%MYCREATEUSERS Summary of this function goes here
%   Detailed explanation goes here
userstemp=createUsers(50,5000,0.4);
n=zeros(50,2);
users=[userstemp,n];

%Assign 10 x 20 MHz channels between 2000 and 2200 MHz to 
%the random users
%we assume that 1 user gets 1 block
users = giveResourceBlocks(2000, 2200, 20, users);
counter = 1;
counterD2D = 1;
d2dUsers = zeros(size(users,1), 6)
while(counter < size(users, 2))
    if(users(4, counter) == 1)
        d2dUsers(:, counterD2D) = users(:, counter);
    end
    counter = counter + 1;
end
d2dUsers
d2dUsers = findClosestNeighbour(d2dUsers);

for j = 1 : size(d2dUsers, 2)
    if (j / 2 == 0 && d2dUsers(j, 1) ~= 0)
       users(d2dUsers(j, 1), 6) = d2dUsers(j-1, 1);
    end
end