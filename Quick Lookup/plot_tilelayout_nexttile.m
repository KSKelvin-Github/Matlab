clc;
close all;
clear all;

% Generate sample data
x = linspace(0, 1, 100);

%% FIGURE 1: Basic tiledlayout demonstration
% Create figure with adjusted position
hFig1 = figure('Position', [0 0 500 600]);
set(hFig1, 'Name', 'Basic tiledlayout demonstration'); % Name of figure
movegui(hFig1, [-10, 100]); % Position the figure

% Create tiled layout
nRows = 4;  % Number of rows
nCols = 2;  % Number of columns
tiledlayout(nRows, nCols, ...
    'Padding', 'tight', ...
    'TileSpacing', 'tight');

% Loop through tiles
for tileIdx = 1:nRows*nCols
    ax(tileIdx) = nexttile; % No need to specify tileIdx - automatically advances
    plot(x, x * tileIdx);
    xlabel('X Axis');
    ylabel('Y Axis');
    title(sprintf('Tile %d', tileIdx)); % Fixed typo: titelocation → Tile
    grid on; % Add grid for better readability
end
linkaxes(ax, 'x');  % Link axes for synchronized zooming/panning

%% FIGURE 2: Demonstration of spanning tiles
% Create figure with adjusted position
hFig2 = figure('Position', [0 0 500 600]);
set(hFig2, 'Name', 'Spanning tiles demonstration');
movegui(hFig2, [-50, 100]); % Position the figure

% Create tiled layout
nRows = 4;  % Number of rows
nCols = 2;  % Number of columns
t = tiledlayout(nRows, nCols, ...
    'Padding', 'tight', ...
    'TileSpacing', 'tight');

% First, create all regular tiles
for tileIdx = 1:nRows*nCols
    ax(tileIdx) = nexttile;
    plot(x, x * tileIdx);
    xlabel('X Axis');
    ylabel('Y Axis');
    title(sprintf('Tile %d', tileIdx));
    grid on;
end

% Now create spanning tiles (this will overwrite existing tiles)
% Tile 2 spanning 2 rows × 1 column
tileIdx = 2;
nexttile(tileIdx, [2, 1]); % Span 2 rows, 1 column starting at position 2
cla; % Clear the existing plot
plot(x, x * tileIdx, 'LineWidth', 2); % Thicker line for emphasis
xlabel('X Axis');
ylabel('Y Axis');
title(sprintf('Spanning Tile %d (2×1)', tileIdx));
grid on;

% Tile 6 spanning 2 rows × 1 column
tileIdx = 6;
nexttile(tileIdx, [2, 1]); % Span 2 rows, 1 column starting at position 6
cla;
plot(x, x * tileIdx, 'LineWidth', 2);
xlabel('X Axis');
ylabel('Y Axis');
title(sprintf('Spanning Tile %d (2×1)', tileIdx));
grid on;

linkaxes(ax, 'x');  % Link axes for synchronized zooming/panning

%% Additional demonstrations
% Add trace in nexttile(6) in figure 1
figure(hFig1); % Switch to figure 1
nexttile(6); % Go to tile 6
hold on;
plot(x, x);

% Add trace in nexttile(6) in figure 2
figure(hFig2); % Switch to figure 2
nexttile(6); % Go to tile 6
hold on;
plot(x, x, 'LineWidth', 2);

%% Add overall title to figures
figure(hFig1);
sgtitle('Basic Tiled Layout - All Uniform Tiles'); % Overall title for figure 1

figure(hFig2);
sgtitle('Advanced Tiled Layout - With Spanning Tiles'); % Overall title for figure 2