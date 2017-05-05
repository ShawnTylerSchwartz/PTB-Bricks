% @File: gameplay.m
% @Author: (c) Shawn Tyler Schwartz, 2017
% @Website: https://shawntylerschwartz.com
% @Project Site: git.shawntylerschwartz.com/PTB-Bricks
%
% "I wrote my game "Bricks Breaking" in Matlab, using the Psychophysics Toolbox 
% extensions (Brainard, 1997; Pelli, 1997; Kleiner et al, 2007) for UCLA 
% Psychology 20B, Spring 2017 with Professor Dr. Uri Maoz."

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

for plays = 1:20 % run until the whole board is empty
    [x,y,loc] = GetUserInput(scrnslice_across_sets,scrnslice_down_sets);
    [i,j] = Floodfill(newBoard,loc)
    [newBoard,newIndBoard] = DroppBricks(newBoard, j)
    [scrnslice_across_sets,scrnslice_down_sets] = DrawBoard(newBoard,mywindow,Scrnsize);
end

WaitSecs(5); 

ShowCursor;
sca;