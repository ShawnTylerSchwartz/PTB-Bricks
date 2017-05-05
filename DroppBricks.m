function [newBoard,newIndBoard] = DroppBricks(genboard, connectedBricks)
% DROPPBRICKS  Recalculates and generates a new board with white space
% above to simulate fallen bricks for Bricks Breaking game.
%   [newBoard,newIndBoard] = DROPPBRICKS(genboard, connectedBricks) returns 
%   the newly generated board for redrawing purposes.
%
%   INPUTS:
%       (genboard) = the board currently being modified/played with
%       (connectedBricks) = the cell array returned from FLOODFILL in order 
%           to match the indices of the connected bricks to replace them 
%           with white space for "falling" simuluation.
%
%   OUTPUTS:
%       (newBoard) = x pixel location returned from physical mouse click on screen
%       (newIndBoard) = y pixel location returned from physical mouse click on screen
%
%
%   See also DRAWBOARD, GETUSERINPUT, FLOODFILL.
%
% @Author: (c) Shawn Tyler Schwartz, 2017
% @Website: https://shawntylerschwartz.com
% @Project Site: git.shawntylerschwartz.com/PTB-Bricks
%
% "I wrote my game "Bricks Breaking" in Matlab, using the Psychophysics Toolbox 
% extensions (Brainard, 1997; Pelli, 1997; Kleiner et al, 2007) for UCLA 
% Psychology 20B, Spring 2017 with Professor Dr. Uri Maoz."

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
    
    % squeeze function
    for zz = 1:15
        while newBoard(:,zz) == 0
            newBoard(:,zz) = [];
            newBoard(:,15) = 5;
        end
    end

    newIndBoard = reshape(newBoard', [1 225]);

end