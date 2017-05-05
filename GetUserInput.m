function [x,y,returned_location_val] = GetUserInput(scrnslice_across_sets,scrnslice_down_sets)
% GETUSERINPUT  Retrieves users click with rectangle grid row, col locations for Bricks Breaking game.
%   [x,y,returned_location_val] = GETUSERINPUT(scrnslice_across_sets,scrnslice_down_sets) 
%   returns modified (rounded) grid locations of rectangle that was clicked.
%
%   INPUTS:
%       (scrnslice_across_sets) = matrix of values storing across screen
%           pixel dimensions cut up into 15 even intervals
%       (scrnslice_down_sets) = matrix of values storing downward screen
%           pixel dimensions cut up into 15 even intervals
%
%   OUTPUTS:
%       (x) = x pixel location returned from physical mouse click on screen
%       (y) = y pixel location returned from physical mouse click on screen
%       (returned_location_val) = 1x2 matrix that stores the returned brick
%           location of selected brick from mouse click (converted)
%
%
%   See also DRAWBOARD, FLOODFILL, DROPPBRICKS.
%
% @Author: (c) Shawn Tyler Schwartz, 2017
% @Website: https://shawntylerschwartz.com
% @Project Site: git.shawntylerschwartz.com/PTB-Bricks
%
% "I wrote my game "Bricks Breaking" in Matlab, using the Psychophysics Toolbox 
% extensions (Brainard, 1997; Pelli, 1997; Kleiner et al, 2007) for UCLA 
% Psychology 20B, Spring 2017 with Professor Dr. Uri Maoz."

[x,y,buttons] = GetMouse;
while any(buttons) % if already down, wait for release
    [x,y,buttons] = GetMouse;
end
while ~any(buttons) % wait for press
    [x,y,buttons] = GetMouse;
end
while any(buttons) % wait for release
    [x,y,buttons] = GetMouse;
end

returned_location_val = [];

if y >= 0 && y < scrnslice_down_sets(1) % row 1
    if x >= 0 && x < scrnslice_across_sets(1) % row 1, col 1
        returned_location_val = [1,1];
    end
    
    loc_counter = 2;
    for i = 1:15
        if x >= scrnslice_across_sets(i) && x < scrnslice_across_sets(loc_counter) % row 1, col i
            returned_location_val = [1,loc_counter];
        end
        loc_counter = loc_counter + 1;
    end
end

down_set_counter = 2;
for k = 1:15
    if y >= scrnslice_down_sets(k) && y < scrnslice_down_sets(down_set_counter) % row k >to> down_set_counter
        if x >= 0 && x < scrnslice_across_sets(1) % row down_set_counter, col 1
            returned_location_val = [down_set_counter,1];
        end
        
        loc_counter = 2;
        for i = 1:15
            if x >= scrnslice_across_sets(i) && x < scrnslice_across_sets(loc_counter) % row 1, col i
                returned_location_val = [down_set_counter,loc_counter];
            end
            loc_counter = loc_counter + 1;
        end
    end
    down_set_counter = down_set_counter + 1;
end

end