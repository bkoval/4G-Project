function [ users ] = mycreateUsers( )
%MYCREATEUSERS Summary of this function goes here
%   Detailed explanation goes here
userstemp=createUsers(50,5000,0.4);
n=zeros(50,1);
users=[userstemp,n];

%Assign 10 x 20 MHz channels between 2000 and 2200 MHz to 
%the random users
%we assume that 1 user gets 1 block
users = giveResourceBlocks(2000, 2200, 20, users);

