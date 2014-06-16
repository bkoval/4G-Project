function [ users ] = mycreateUsers( )
%MYCREATEUSERS Summary of this function goes here
%   Detailed explanation goes here
userstemp=createUsers(20,5000,0.4);
n=zeros(20,2);
users=[userstemp,n];

dUsers = zeros(1, 6);
isZero = true;
counter = 1;
for i = 1: size(users, 1)
    if(users(i, 4) == 1)
      if (isZero == true)
        dUsers(counter, :) = users(i, :);
        isZero = false;
      else
        temp = zeros(1, 6);
        temp (1, :) = users(i, :);
        dUsers = [dUsers; temp];
      end
      counter = counter + 1;
    end
end

dUsers = findClosestNeighbour(dUsers);
for j = 1:2: size(dUsers, 1) - 1
    users(dUsers(j, 1), 6);
    users(dUsers(j+1, 1), 6) = dUsers(j, 1);
end

%Assign 10 x 20 MHz channels between 2000 and 2200 MHz to
%the random users
%we assume that 1 user gets 1 block
users = giveResourceBlocks(2000, 2200, 20, users);