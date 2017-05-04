% Clear the workspace and the screen
sca;
close all;
clearvars;

rng('shuffle');

[mywindow Scrnsize] = Screen('OpenWindow',0);

board = randi([1,3],15,15);

[scrnslice_across_sets,scrnslice_down_sets] = DrawBoard(board,mywindow,Scrnsize);
[x,y,loc] = GetUserInput(scrnslice_across_sets,scrnslice_down_sets);
[i,j] = Floodfill(board,loc)
[newBoard,newIndBoard] = DroppBricks(board, j)
[scrnslice_across_sets,scrnslice_down_sets] = DrawBoard(newBoard,mywindow,Scrnsize);

ShowCursor;
sca;