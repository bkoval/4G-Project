for i = 1: 100
    %new user with id=i, x coord = 100, y  = 200, is d2d
    users(i) = User(i, 100, 200, true);
end

%set user with id 2 as a d2d head to user with id 5
users(2) = users(2).setD2DProperties(true, 5);

%add a few resource blocks (ids) to the user with id 7
users(7) = users(7).addBlock(10);
users(7) = users(7).addBlock(11);
users(7) = users(7).addBlock(12);

%Print to see what up
users(2)
users(7)