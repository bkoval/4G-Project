classdef User
    %USER Representation of a User Equipment Terminal
    
    properties
        x % Horizontal location in cell
        y % Vertical location in cell
        id % Unique identifier
        d2d %Specifies if the user is d2d user
        head %Specifies if the user is a head of d2d
        neighbor %Specifies the users neigbor id if d2d
        blocks %Vector of blocks in use by a users
        nrOfBlocks = 0 %Amount of resource blocks held by user
    end
    
    methods
        %Constructor
        function obj = User(id, x, y, d2d)
            obj.id = id;
            obj.x = x;
            obj.y = y;
            obj.d2d = d2d;
        end
        
        function obj = setD2DProperties(obj, isHead, neighborId)
            obj.head = isHead;
            obj.neighbor = neighborId;
        end
        
        function obj = addBlock(obj, blockId)
            obj.blocks(obj.nrOfBlocks + 1) = blockId;
            obj.nrOfBlocks = obj.nrOfBlocks + 1;
        end
    end
    
end

