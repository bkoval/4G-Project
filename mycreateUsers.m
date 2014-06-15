function [ users ] = mycreateUsers( )
%MYCREATEUSERS Summary of this function goes here
%   Detailed explanation goes here
userstemp=createUsers(50,5000,0.4);
n=zeros(50,1);
users=[userstemp,n];
for i=1:10
users(i,5)=1990+i*20;
end

end

