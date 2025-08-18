clc;
close all;
clear all;

% Generate sample data
x = linspace(0, 1, 100);

% Create figure with adjusted position
hFig = figure('Position', [0 0 500 600], 'Name', 'Demonstrate of tiledlayout and nexttile');
movegui(hFig, 'center'); % Centers the figure on screen

% Create tiled layout
nRows = 4;  % nRows)
nCols = 2;  % nCols
tiledlayout(nRows, nCols, ...
    'Padding', 'tight', ...
    'TileSpacing', 'tight');

% Loop through tiles
for tileIdx = 1:nRows*nCols
    ax(tileIdx) = nexttile(tileIdx);
    plot(x, x * tileIdx);
    xlabel('X Axis');
    ylabel('Y Axis');
    title(sprintf('titelocation %d', tileIdx));
end
linkaxes(ax, 'x');  % Link axes for synchronized zooming/panning



% hfig=figure;
% set(hfig,'position',[50 50 800 400]);
% tiledlayout(4,4,'Padding','tight','TileSpacing','tight');
% nexttile(3,[4 2]);
% plot(rand(1,10));
% axis square;
% for n = 1: 8
%     ax(n) = nexttile;
%     plot(rand(1,10));
%     xlabel('xlabel');
%     ylabel('ylabel');
%     title(num2str(n));
% end
% linkaxes(ax,'x');