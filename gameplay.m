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
clc;

% Give instructions for user in the console
fprintf('Welcome to Bricks Breaking! Try to make as many combinations of colors as you can!\n');
fprintf('Each click of a single brick adds a point to your score! POINTS ARE BAD!\n');
fprintf('Your goal is to clear the entire board with a score of 6 or less, otherwise you lose!\n');
input('Press <enter> to begin'); % Allow user to accept instructions and initiate PTB game

oldLevel = Screen('Preference', 'Verbosity', 0); % suppress ALL PTB console ouput

Screen('Preference', 'SkipSyncTests', 2); % completely skip all PTB tests and calibrations for fastest game lodaing speed time

rng('shuffle'); % set the random seed

[mywindow Scrnsize] = Screen('OpenWindow',0); % initiate PTB screen window for game play

board = randi([1,3],15,15); % generate the random gameplay board
scoreCard = 0; % pre-allocate scoreCard to 0 points for beginning of game

% run first iteration of game to generate the newBoard for continued gameplay
[scrnslice_across_sets,scrnslice_down_sets] = DrawBoard(board,mywindow,Scrnsize);
[x,y,loc] = GetUserInput(scrnslice_across_sets,scrnslice_down_sets);
[i,j] = Floodfill(board,loc);
[newBoard,newIndBoard] = DroppBricks(board, j);
[scrnslice_across_sets,scrnslice_down_sets] = DrawBoard(newBoard,mywindow,Scrnsize);

% play the rest of the game until the entire board is empty (full of 5's in
% matrix (sum of 225*5 = 1125))
while (sum(sum(newBoard)) ~= (1125))
    [x,y,loc] = GetUserInput(scrnslice_across_sets,scrnslice_down_sets);
    [i,j] = Floodfill(newBoard,loc);
    if (i == 1)
        scoreCard = scoreCard + 1;
    end
    [newBoard,newIndBoard] = DroppBricks(newBoard, j);
    [scrnslice_across_sets,scrnslice_down_sets] = DrawBoard(newBoard,mywindow,Scrnsize);
end

% exit the PTB game window and perform maintenance
ShowCursor;
sca;
Screen('Preference', 'Verbosity', oldLevel); % restore the old level

% print to console the results of the gameplay
if (scoreCard < 6) % player WON
    fprintf('\n\nYou WON the Bricks Breaking game with a score of %d', scoreCard);
    fprintf('\n\n');
elseif (scoreCard == 6) % player WON while living right on the edge of failure
    fprintf('\n\nWow! You barely won the Bricks Breaking game living on the edge with a score of 6! \nTry harder next time!\n\n');
elseif (scoreCard > 6) % player LOST
    fprintf('\n\nYou LOST the Bricks Breaking game with a score of %d', scoreCard);
    fprintf('\n Try to score 6 or under next time!\n\n');
end