function [ThroughputMatrix, summarizedThroughput] = calculateThroughput (UsersArray)
% output - 
% ThroughputMatrix[ distance between user and Base Station, throughput for
% this user (calculated from this disance)]

  [m,n] = size(UsersArray);
  ThroughputMatrix = zeros(m, 2);
  summarizedThroughput = 0;
    
    for i=1:m
        temp = calculateHypotenuse(UsersArray(i,2),UsersArray(i,3));
        ThroughputMatrix(i,1) = temp;
        ThroughputMatrix(i,2) = calcCUser(temp);
        summarizedThroughput = summarizedThroughput + ThroughputMatrix(i,2);
    end     
    