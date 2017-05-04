% Clear the workspace and the screen
sca;
close all;
clearvars;

[mywindow Scrnsize] = Screen('OpenWindow',0);

board = randi([1 3], 15, 15);
board = reshape(board', [1 225]);

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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
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
    if board(i) == 1
        color(1,i) = 255;
        color(2,i) = 0;
        color(3,i) = 0;
    elseif board(i) == 2
        color(1,i) = 0;
        color(2,i) = 255;
        color(3,i) = 0;
    elseif board(i) == 3
        color(1,i) = 0;
        color(2,i) = 0;
        color(3,i) = 255;
    end
    temp_counter = temp_counter + 1;
end

Screen('FillRect',mywindow,color,rect);

Screen('Flip',mywindow);
WaitSecs(2);
sca