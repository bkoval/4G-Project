averageC=0;
for i=1:50
users=mycreateUsers;
averageC=averageC+mycalcTru(users);
clear users;
end
averageC=averageC/50;