function [scrnslice_across_sets, scrnslice_down_sets] = DrawBoard(genboard,mywindow,Scrnsize)
% DRAWBOARD  Draw Bricks Breaking game board.
%   [scrnslice_across_sets, scrnslice_down_sets] = DRAWBOARD(genboard,mywindow,Scrnsize) 
%       draws board with 15x15 matrix input and returns modified board.
%
%   INPUTS:
%       (genboard) = the board currently being modified/played with
%       (mywindow) = the PTB Screen window being used to run
%           game/experiment
%       (Scrnsize) = returned ScreenSize from PTB Screen Window
%           initialization
%
%   OUTPUTS:
%       (scrnslice_across_sets) = matrix of values storing across screen
%           pixel dimensions cut up into 15 even intervals
%       (scrnslice_down_sets) = matrix of values storing downward screen
%           pixel dimensions cut up into 15 even intervals
%
%
%   See also GETUSERINPUT, FLOODFILL, DROPPBRICKS.
%
% @Author: (c) Shawn Tyler Schwartz, 2017
% @Website: https://shawntylerschwartz.com
% @Project Site: git.shawntylerschwartz.com/PTB-Bricks
%
% "I wrote my game "Bricks Breaking" in Matlab, using the Psychophysics Toolbox 
% extensions (Brainard, 1997; Pelli, 1997; Kleiner et al, 2007) for UCLA 
% Psychology 20B, Spring 2017 with Professor Dr. Uri Maoz."

indboard = reshape(genboard', [1 225]); % reshape board for modification purposes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % NOTES for FillRect:
        % rect(1,i)=left border of 5th rectange,
        % rect(2,i)=top border of 5th rectangle,
        % rect(3,i)=right border of 5th rectangle,
        % rect(4,i)=bottom border of 5th rectangle.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calculate and store the divided up pixel dimension fragments for each row
% and column in order to plot the bricks on the screen (static to 15)
    scrnslices_across = [];
    scrnslice_across_num = Scrnsize(3)/15;

    scrnslices_down = [];
    scrnslice_down_num = Scrnsize(4)/15;

    scrnslice_across_sets = [];
    scrnslice_down_sets = [];

    for i = 1:15
        scrnslices_across = [scrnslices_across scrnslice_across_num*i];
        scrnslices_down = [scrnslices_down scrnslice_down_num*i];

        scrnslice_across_sets = [scrnslice_across_sets scrnslice_across_num*i];
        scrnslice_down_sets = [scrnslice_down_sets scrnslice_down_num*i];
    end

    scrnslices_across = [0 scrnslices_across];
    scrnslices_down = [0 scrnslices_down];
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 1 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    for i = 1:15
        rect(1,i) = scrnslices_across(i);
        rect(2,i) = 0;
        rect(3,i) = scrnslice_across_sets(i);
        rect(4,i) = scrnslice_down_sets(1);
        if indboard(i) == 1 % red brick 
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2 % green brick
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3 % blue brick
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0 % black brick (empty brick)
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5 % black brick (empty brick) for squeeze
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 2 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 16:30
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(1);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(2);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 3 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 31:45
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(2);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(3);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 4 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 46:60
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(3);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(4);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 5 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 61:75
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(4);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(5);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 6 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 76:90
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(5);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(6);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 7 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 91:105
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(6);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(7);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 8 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 106:120
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(7);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(8);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 9 of 15 Bricks                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 121:135
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(8);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(9);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 10 of 15 Bricks                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 136:150
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(9);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(10);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 11 of 15 Bricks                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 151:165
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(10);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(11);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 12 of 15 Bricks                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 166:180
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(11);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(12);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 13 of 15 Bricks                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
temp_counter = 1;
for i = 181:195
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(12);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(13);
    if indboard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif indboard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif indboard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif indboard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 14 of 15 Bricks                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 196:210
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(13);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(14);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        PLOT ROW 15 of 15 Bricks                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    temp_counter = 1;
    for i = 211:225
        rect(1,i) = scrnslices_across(temp_counter);
        rect(2,i) = scrnslice_down_sets(14);
        rect(3,i) = scrnslice_across_sets(temp_counter);
        rect(4,i) = scrnslice_down_sets(15);
        if indboard(i) == 1
            color(1,i) = 255;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 2
            color(1,i) = 0;
            color(2,i) = 255;
            color(3,i) = 0;
        elseif indboard(i) == 3
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 255;
        elseif indboard(i) == 0
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        elseif indboard(i) == 5
            color(1,i) = 0;
            color(2,i) = 0;
            color(3,i) = 0;
        end
        temp_counter = temp_counter + 1;
    end

% FillRect the PTB Screen Window with generated rect
Screen('FillRect',mywindow,color,rect);

% Screen Flip to show the PTB generated screen drawing
Screen('Flip',mywindow);

end