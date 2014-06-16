function [ activeUsers ] = getTransmittingUsers( users, numberOfActiveUsers )
%GIVEBAND Finds active user id's
% users [matrix] -> array of the current UE holders with id's etc
% numberOfActiveUsers [int] -> number of users that are supposed to get band
% returns [vector] ID's of the active users

%We can control the number of the active users in a cell
activeUsers = zeros (numberOfActiveUsers, 1);

%Max user id is equal to the number of lines in the users array
maxId = size(users, 1);

for i=1:numberOfActiveUsers
    activeUser = 0;
    %Find unique, non-zero id's
    while (activeUser == 0 || ismember(activeUser, activeUsers) || isRegular || isD2DHead)
        %Needs to be an equal-probability rand
        activeUser = floor(rand() * maxId);
    end
    activeUsers(i) = users(activeUser, 1);
end

