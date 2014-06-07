% create Users 2D array (users number, cell radious, proprotion between regular
% an d2d users (0 = no d2d, 1 = d2d);
% for instance n = 50, radious = 100, d2dProportion = 0.4 (50 users, cell
% radious 100, ~40% D2D users
% penis = createUsers(50,100,0.5);

function [UserArray] = createUsers(n, radious, d2dProportion)

    UserArray = zeros(n, 4);
    %User Array
    %1 – nr identyfikacyjny
    %2 – wspó³rzêdn¹ x
    %3 - wspó³rzêdn¹ y
    %4 – okreœlenie, czy jest u¿ytkownikiem D2D czy zwyk³ym (np. 0/1)

    %normal distributed position for n users and cell radious size
    [X,Y] = randWithinCircle(radious, n);
    UserArray(:,1) = 1:n; %id
    UserArray(:,2) = X;
    UserArray(:,3) = Y;
    UserArray(:,4) = isD2D(n, d2dProportion); % 

end