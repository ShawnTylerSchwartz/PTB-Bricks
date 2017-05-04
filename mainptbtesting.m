% Clear the workspace and the screen
sca;
close all;
clearvars;

[mywindow Scrnsize] = Screen('OpenWindow',0);
%  Screen('DrawText', mywindow, 'I Love You Alma!', 200,100,[0,0,0]);
% Screen('FrameOval',mywindow,[200 0 200],[75 50 225 200],5);

board = randi([1 3], 15, 15);
board = reshape(board', [1 225]);

centerX = Scrnsize(3)/2;
centerY = Scrnsize(4)/2;
% Screen('FillRect',mywindow,[0 0 255], [0 0 69 60]);


% rect(1,5)=left border of 5th rectange, rect(2,5)=top border of 5th rectangle, 
% rect(3,5)=right border of 5th rectangle, rect(4,5)=bottom border of 5th rectangle

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

% scrnslice_across_sets = [0 scrnslice_across_sets];
% scrnslice_down_sets = [0 scrnslice_down_sets];


% rect(1,1) = 0;
% rect(2,1) = 0;
% rect(3,1) = Scrnsize(3)/15;
% rect(4,1) = Scrnsize(4)/15;
% Screen('FillRect',mywindow,[0 0 255],rect);

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

% for i = 1:225
% %     for j = 1:16
% %         for k = 2:16
%             rect(1,i) = scrnslices_across(i);
%             rect(2,i) = 0;
%             rect(3,i) = scrnslice_across_sets(i+1);
%             rect(4,i) = scrnslice_down_sets(i+1);
% %         end
% %     end
%         if board(i) == 1
%             color(1,i) = 255;
%             color(2,i) = 0;
%             color(3,i) = 0;
%     elseif board(i) == 2
%             color(1,i) = 0;
%             color(2,i) = 255;
%             color(3,i) = 0;
%     elseif board(i) == 3
%             color(1,i) = 0;
%             color(2,i) = 0;
%             color(3,i) = 255;
%     end
% end

Screen('FillRect',mywindow,color,rect);


% 
% color(1,1) = 255;
% color(2,1) = 0;
% color(3,1) = 0;

%          rect(1,1) = scrnslices_across(1);
%          rect(2,1) = 0;
%          rect(3,1) = scrnslice_across_sets(2);
%          rect(4,1) = scrnslice_down_sets(2);
%          color(1,1) = 255;
%          color(2,1) = 0;
%          color(3,1) = 0;
         
%          rect(1,2) = scrnslices_across(2);
%          rect(2,2) = 0;
%          rect(3,2) = scrnslice_across_sets(1);
%          rect(4,2) = scrnslice_down_sets(1);
%          color(1,2) = 0;
%          color(2,2) = 255;
%          color(3,2) = 0;







% for k = 2:225
%     color(1,k) = 255;
%     color(2,k) = 255;
%     color(3,k) = 255;
% end

%     if board(i) == 1
%             color(1,i) = 255;
%             color(2,i) = 0;
%             color(3,i) = 0;
%     elseif board(i) == 2
%             color(1,i) = 0;
%             color(2,i) = 255;
%             color(3,i) = 0;
%     elseif board(i) == 3
%             color(1,i) = 0;
%             color(2,i) = 0;
%             color(3,i) = 255;
%     end


%         color(1,i) = 0;
%         color(2,i) = 0;
%         color(3,i) = 0;
%     switch board(i)
%         case 1
%             disp('one')
%             color(1,1) = 255;
%             color(2,1) = 0;
%             color(3,1) = 0;
%         case 2
%             disp('two')
%             color(1,1) = 0;
%             color(2,1) = 255;
%             color(3,1) = 0;
%         case 3
%             disp('three')
%             color(1,1) = 0;
%             color(2,1) = 0;
%             color(3,1) = 255;
%         otherwise
%             disp('other value')
%             color(1,1) = 0;
%             color(2,1) = 0;
%             color(3,1) = 0;
%     end

% for i = 1:225
%     if board(i) == 1
%             color(1,i) = 225;
%             color(2,i) = 0;
%             color(3,i) = 0;
% 
%     elseif board(i) == 2
%             color(1,i) = 0;
%             color(2,i) = 225;
%             color(3,i) = 0;
%             Screen('Flip',mywindow);
% WaitSecs(1);
%     elseif board(i) == 3
%             color(1,i) = 0;
%             color(2,i) = 0;
%             color(3,i) = 225;
%             Screen('Flip',mywindow);
% WaitSecs(1);
%     end
% end
% Screen('Flip',mywindow);

% for i = 1:15
% 
%     rect(1,i) = scrnslices_across(1);
%     rect(2,i) = 0;
%     rect(3,i) = scrnslice_across_num*i;
%     rect(4,i) = scrnslice_down_num;
%     color(1,i) = 0;
%     color(2,i) = 0;
%     color(3,i) = 255;
% end

%     rect(1,16) = scrnslices_across(1);
%     rect(2,16) = scrnslices_down(1);
%     rect(3,16) = scrnslice_across_num*2;
%     rect(4,16) = scrnslice_down_num*2;
%     color(1,16) = 0;
%     color(2,16) = 0;
%     color(3,16) = 255;

% rect(1,1) = 0;
% rect(2,1) = 0;
% rect(3,1) = scrnslice_across_num;
% rect(4,1) = scrnslice_down_num;
% color(1,1) = 0;
% color(2,1) = 0;
% color(3,1) = 255;
% 
% 
% rect(1,2) = scrnslices_across(1)
% rect(2,2) = 0
% rect(3,2) = scrnslice_across_num+scrnslice_across_num;
% rect(4,2) = scrnslice_down_num;
% color(1,2) = 0;
% color(2,2) = 255;
% color(3,2) = 0;



%     Screen('FillRect',mywindow,[0 0 255], [10 0 20 200]);
%     Screen('FillRect',mywindow,[0 0 255], [100 50 200 150]);





% rect(1,1) = 0;
% rect(2,1) = 0;
% rect(3,1) = Scrnsize(3)/15;
% rect(4,1) = Scrnsize(4)/15;
% Screen('FillRect',mywindow,[0 0 255],rect);

% k = 0;
% j = 0;
% for i = 1:15
%     Screen('FillRect',mywindow,[0 0 255], [k j (69*i) (60*i)]);
%     k = k + 69;
%     j = j + 60;
% end
% board = randi([2,4],15,15)
% map = [0,0,0;1,0,0;0,1,0;0,0,1];
% myimage = image(board);
% TexturePointer = Screen('MakeTexture', mywindow, myimage);
% clear myimage;
% Screen('DrawTexture',mywindow,TexturePointer);
Screen('Flip',mywindow);
WaitSecs(2);
sca