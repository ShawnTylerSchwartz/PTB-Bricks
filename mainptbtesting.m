% @File: mainptbtesting.m
% @Author: (c) Shawn Tyler Schwartz, 2017
% @Website: https://shawntylerschwartz.com
%
% "I wrote my game "Bricks Breaking" in Matlab, using the Psychophysics Toolbox 
% extensions (Brainard, 1997; Pelli, 1997; Kleiner et al, 2007) for UCLA 
% Psychology 20B, Spring 2017 with Professor Dr. Uri Maoz."

% Clear the workspace and the screen
sca;
close all;
clearvars;

[mywindow Scrnsize] = Screen('OpenWindow',0);

genboard = randi([1 3], 15, 15);
indboard = reshape(genboard', [1 225]);

centerX = Scrnsize(3)/2;
centerY = Scrnsize(4)/2;

% rect(1,5)=left border of 5th rectange,
% rect(2,5)=top border of 5th rectangle,
% rect(3,5)=right border of 5th rectangle,
% rect(4,5)=bottom border of 5th rectangle

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

for i = 1:15
    rect(1,i) = scrnslices_across(i);
    rect(2,i) = 0;
    rect(3,i) = scrnslice_across_sets(i);
    rect(4,i) = scrnslice_down_sets(1);
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
    end
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

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
    end
    temp_counter = temp_counter + 1;
end

Screen('FillRect',mywindow,color,rect);

Screen('Flip',mywindow);

fprintf('Please click the mouse now.\n');
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
fprintf('You clicked! Thanks.\n');

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

%   (i) = number of objects found
%   (j) = index of numbers found
m = 0; % set i to equal zero for reset purposes for a starting count of 0
connectedBricks = []; % set j to be an empty matrix that will be storing indices in a cell array later on (below)

for a = 1:15 % counting from 1 to 15 for row indicies for the for loop
    for b = 1:15 % counting from 1 to 15 for column indicies for the for loop
        if (mirroredBoard(a,b) == 1) % logical check to see if the representative ones/zeros board contains a set of ones (i.e. related touching bricks)
            m = m + 1; % if the above logical is true then the counter adds 1 (to represent the number of touching brick objects found)
            connectedBricks{m} = [a b]; % if the above logical is true then the cell array stores the indexed location of each of the touching bricks
        end
    end
end

% using the indexed locations of the connected bricks from FLOODFILL
% and taken as constructed input "connectedBricks" the cell array
% values are passed into 2 matrices in order to be used to set those
% touching bricks values actually to 0 in the actual game board matrix
for a = 1:length(connectedBricks)
    currentRow = connectedBricks{a}(1);
    currentCol = connectedBricks{a}(2);
    genboard(currentRow, currentCol) = 0;
end

% separate and store each of the columns from the game board playing
% matrix into separate matrices for simpler manipulation
column1 = genboard(:,1)
column2 = genboard(:,2);
column3 = genboard(:,3);
column4 = genboard(:,4);
column5 = genboard(:,5);
column6 = genboard(:,6);
column7 = genboard(:,7);
column8 = genboard(:,8);
column9 = genboard(:,9);
column10 = genboard(:,10);
column11 = genboard(:,11);
column12 = genboard(:,12);
column13 = genboard(:,13);
column14 = genboard(:,14);
column15 = genboard(:,15);

col1nums = numel(column1);
newColumn1 = column1(column1 ~= 0);
newcol1nums = numel(newColumn1);
col1numeldiff = col1nums - newcol1nums;
if numel(newColumn1) ~= 15
    newColumn1 = newColumn1';
    newColumn1 = [zeros(1,col1numeldiff) newColumn1]'
end

col2nums = numel(column2);
newColumn2 = column2(column2 ~= 0);
newcol2nums = numel(newColumn2);
col2numeldiff = col2nums - newcol2nums;
if numel(newColumn2) ~= 15
    newColumn2 = newColumn2';
    newColumn2 = [zeros(1,col2numeldiff) newColumn2]'
end


col3nums = numel(column3);
newColumn3 = column3(column3 ~= 0);
newcol3nums = numel(newColumn3);
col3numeldiff = col3nums - newcol3nums;
if numel(newColumn3) ~= 15
    newColumn3 = newColumn3';
    newColumn3 = [zeros(1,col3numeldiff) newColumn3]'
end


col4nums = numel(column4);
newColumn4 = column4(column4 ~= 0);
newcol4nums = numel(newColumn4);
col4numeldiff = col4nums - newcol4nums;
if numel(newColumn4) ~= 15
    newColumn4 = newColumn4';
    newColumn4 = [zeros(1,col4numeldiff) newColumn4]'
end

col5nums = numel(column5);
newColumn5 = column5(column5 ~= 0);
newcol5nums = numel(newColumn5);
col5numeldiff = col5nums - newcol5nums;
if numel(newColumn5) ~= 15
    newColumn5 = newColumn5';
    newColumn5 = [zeros(1,col5numeldiff) newColumn5]'
end

col6nums = numel(column6);
newColumn6 = column6(column6 ~= 0);
newcol6nums = numel(newColumn6);
col6numeldiff = col6nums - newcol6nums;
if numel(newColumn6) ~= 15
    newColumn6 = newColumn6';
    newColumn6 = [zeros(1,col6numeldiff) newColumn6]'
end

col7nums = numel(column7);
newColumn7 = column7(column7 ~= 0);
newcol7nums = numel(newColumn7);
col7numeldiff = col7nums - newcol7nums;
if numel(newColumn7) ~= 15
    newColumn7 = newColumn7';
    newColumn7 = [zeros(1,col7numeldiff) newColumn7]'
end


col8nums = numel(column8);
newColumn8 = column8(column8 ~= 0);
newcol8nums = numel(newColumn8);
col8numeldiff = col8nums - newcol8nums;
if numel(newColumn8) ~= 15
    newColumn8 = newColumn8';
    newColumn8 = [zeros(1,col8numeldiff) newColumn8]'
end

col9nums = numel(column9);
newColumn9 = column9(column9 ~= 0);
newcol9nums = numel(newColumn9);
col9numeldiff = col9nums - newcol9nums;
if numel(newColumn9) ~= 15
    newColumn9 = newColumn9';
    newColumn9 = [zeros(1,col9numeldiff) newColumn9]'
end

col10nums = numel(column10);
newColumn10 = column10(column10 ~= 0);
newcol10nums = numel(newColumn10);
col10numeldiff = col10nums - newcol10nums;
if numel(newColumn10) ~= 15
    newColumn10 = newColumn10';
    newColumn10 = [zeros(1,col10numeldiff) newColumn10]'
end

col11nums = numel(column11);
newColumn11 = column11(column11 ~= 0);
newcol11nums = numel(newColumn11);
col11numeldiff = col11nums - newcol11nums;
if numel(newColumn11) ~= 15
    newColumn11 = newColumn11';
    newColumn11 = [zeros(1,col11numeldiff) newColumn11]'
end

col12nums = numel(column12);
newColumn12 = column12(column12 ~= 0);
newcol12nums = numel(newColumn12);
col12numeldiff = col12nums - newcol12nums;
if numel(newColumn12) ~= 15
    newColumn12 = newColumn12';
    newColumn12 = [zeros(1,col12numeldiff) newColumn12]'
end

col13nums = numel(column13);
newColumn13 = column13(column13 ~= 0);
newcol13nums = numel(newColumn13);
col13numeldiff = col13nums - newcol13nums;
if numel(newColumn13) ~= 15
    newColumn13 = newColumn13';
    newColumn13 = [zeros(1,col13numeldiff) newColumn13]'
end

col14nums = numel(column14);
newColumn14 = column14(column14 ~= 0);
newcol14nums = numel(newColumn14);
col14numeldiff = col14nums - newcol14nums;
if numel(newColumn14) ~= 15
    newColumn14 = newColumn14';
    newColumn14 = [zeros(1,col14numeldiff) newColumn14]'
end

col15nums = numel(column15);
newColumn15 = column15(column15 ~= 0);
newcol15nums = numel(newColumn15);
col15numeldiff = col15nums - newcol15nums;
if numel(newColumn15) ~= 15
    newColumn15 = newColumn15';
    newColumn15 = [zeros(1,col15numeldiff) newColumn15]'
end

newBoard = [newColumn1 newColumn2 newColumn3 newColumn4 newColumn5 newColumn6 ...
    newColumn7 newColumn8 newColumn9 newColumn10 newColumn11 newColumn12 ...
    newColumn13 newColumn14 newColumn15];

newIndBoard = reshape(newBoard', [1 225]);

for i = 1:15
    rect(1,i) = scrnslices_across(i);
    rect(2,i) = 0;
    rect(3,i) = scrnslice_across_sets(i);
    rect(4,i) = scrnslice_down_sets(1);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
end

temp_counter = 1;
for i = 16:30
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(1);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(2);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 31:45
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(2);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(3);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 46:60
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(3);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(4);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 61:75
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(4);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(5);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 76:90
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(5);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(6);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 91:105
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(6);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(7);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 106:120
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(7);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(8);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 121:135
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(8);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(9);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 136:150
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(9);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(10);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 151:165
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(10);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(11);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 166:180
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(11);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(12);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 181:195
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(12);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(13);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 196:210
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(13);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(14);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

temp_counter = 1;
for i = 211:225
    rect(1,i) = scrnslices_across(temp_counter);
    rect(2,i) = scrnslice_down_sets(14);
    rect(3,i) = scrnslice_across_sets(temp_counter);
    rect(4,i) = scrnslice_down_sets(15);
    if newIndBoard(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif newIndBoard(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif newIndBoard(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    elseif newIndBoard(i) == 0
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 0;
    end
    temp_counter = temp_counter + 1;
end

Screen('FillRect',mywindow,color,rect);

Screen('Flip',mywindow);

fprintf('Please click the mouse now.\n');
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
fprintf('You clicked! Thanks.\n');

% WaitSecs(2);
sca