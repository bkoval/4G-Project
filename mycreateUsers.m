function [ users ] = mycreateUsers( )
%MYCREATEUSERS Summary of this function goes here
%   Detailed explanation goes here
userstemp=createUsers(50,5000,0.4);
n=zeros(50,2s);
users=[userstemp,n];

%Assign 10 x 20 MHz channels between 2000 and 2200 MHz to
%the random users
%we assume that 1 user gets 1 block
users = giveResourceBlocks(2000, 2200, 20, users);
dUsers = zeros(1, 6);
isZero = true;

for i = 1: size(users, 1)
  if (isZero == true)
    dUsers(i, :) = users(i, :);
    isZero = false;
  else
    temp = zeros(1, 6);
    temp (1, :) = users(i, :);
    dUsers = [dUsers; temp];
  end
end

dUsers = findClosestNeighbour(dUsers);

for j = 1: size(dUsers, 1)
  if(j / 2 == 0)
    users(dUsers(i, 1), 6) = dUsers(i-1, 1);
  end
end
