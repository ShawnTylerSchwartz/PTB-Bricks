function [m,connectedBricks] = Floodfill(genboard,returned_location_val)
% FLOODFILL  Finds and tags all related colored squares nearby to selected rectangle for Bricks Breaking game.
%   [m,connectedBricks] = FLOODFILL(genboard,returned_location_val) returns number of 
%   related/touching objects found and the indicies in a cell array of the touching objects.
%
%   INPUTS:
%       (genboard) = current board being modified/played with
%       (returned_location_val) = 1x2 matrix that stores the returned brick
%           location of selected brick from mouse click (GetUserInput.m)
%
%   OUTPUTS:
%       (m) = number of objects found
%       (connectedBricks) = index of numbers found
%
%
%   See also DRAWBOARD, GETUSERINPUT, DROPPBRICKS.
%
% @Author: (c) Shawn Tyler Schwartz, 2017
% @Website: https://shawntylerschwartz.com
%
% ?I wrote my game "Bricks Breaking" in Matlab, using the Psychophysics Toolbox 
% extensions (Brainard, 1997; Pelli, 1997; Kleiner et al, 2007) for UCLA 
% Psychology 20B, Spring 2017 with Professor Dr. Uri Maoz.?

mirroredBoard = zeros(15);
mirroredBoard(returned_location_val(1),returned_location_val(2)) = 1;

% run for 15 times since there are 15 rows/columns to deal with in game
% board
for totals = 1:15
    for row = 1:15 % rows (15 indicies)
        for col = 1:15 % cols (15 indicies)
            if mirroredBoard(row,col) == 1 % initiate the check at the starting indicies of the clicked brick
                if row-1 >= 1 % if the row index location is not located on the edge then check a row below for a related touching brick
                    % if the rectangle one row location below; same
                    % column is the same color as the one being
                    % indexed at the time of the loop, then set the
                    % representative location to one in the zeros
                    % matrix
                    if (genboard(row,col) == genboard(row-1,col))
                        mirroredBoard(row-1,col) = 1; % set the representative location to one in order to know that there is a similarity
                    end
                end
                
                if row+1 <= 15 % if the row index location is less than the outer edge then check a row above for a related touching brick
                    % if the rectangle one row location above; same
                    % column is the same color as the one being
                    % indexed at the time of the loop, then set the
                    % representative location to one in the zeros
                    % matrix
                    if (genboard(row,col) == genboard(row+1,col))
                        mirroredBoard(row+1,col) = 1; % set the representative location to one in order to know that there is a similarity
                    end
                end
                
                if col-1 >= 1 % if the column index location is not located on the edge then check a column below for a related touching brick
                    % if the rectangle one column location below; same
                    % row is the same color as the one being
                    % indexed at the time of the loop, then set the
                    % representative location to one in the zeros
                    % matrix
                    if (genboard(row,col) == genboard(row,col-1))
                        mirroredBoard(row,col-1) = 1; % set the representative location to one in order to know that there is a similarity
                    end
                end
                
                if col+1 <= 15 % if the column index location is less than the outer edge then check a column above for a related touching brick
                    % if the rectangle one column location above; same
                    % row is the same color as the one being
                    % indexed at the time of the loop, then set the
                    % representative location to one in the zeros
                    % matrix
                    if (genboard(row,col) == genboard(row,col+1))
                        mirroredBoard(row,col+1) = 1; % set the representative location to one in order to know that there is a similarity
                    end
                end
            end
        end
    end
end

%   (m) = number of objects found
%   (connectedBricks) = index of numbers found
m = 0; % set i to equal zero for reset purposes for a starting count of 0
connectedBricks = []; % set connectedBricks to be an empty matrix that will be storing indices in a cell array later on (below)

for a = 1:15 % counting from 1 to 15 for row indicies for the for loop
    for b = 1:15 % counting from 1 to 15 for column indicies for the for loop
        if (mirroredBoard(a,b) == 1) % logical check to see if the representative ones/zeros board contains a set of ones (i.e. related touching bricks)
            m = m + 1; % if the above logical is true then the counter adds 1 (to represent the number of touching brick objects found)
            connectedBricks{m} = [a b]; % if the above logical is true then the cell array stores the indexed location of each of the touching bricks
        end
    end
end

end