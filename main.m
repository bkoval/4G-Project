users = mycreateUsers();

users = giveResourceBlocks(2000, 2200, 20, users);

%calculate throughput for each user and sum
[thr,sum] = calculateThroughput(activeUsers);