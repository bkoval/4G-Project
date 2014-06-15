function [ tru ] = mycalcTru( users )
%MYCALCTRU Summary of this function goes here
%   Detailed explanation goes here
temp=size(users);
n=temp(1,1);
tru=0;
for i=1:n
    if (users(i,5)~=0)
    temp=mycalcCUser(users(i,2),users(i,3),users(i,5));
    tru=tru+temp;
    else
    tru=tru+0;
end
end

