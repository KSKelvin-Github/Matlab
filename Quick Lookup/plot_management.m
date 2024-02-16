clc;
close all;
clear all;

hfig=figure;
set(hfig,'position',[50 50 800 400]);
tiledlayout(3,4,'Padding','tight','TileSpacing','tight');
for n = 1: 12
    ax(n) = nexttile;
    plot(rand(1,10));
    xlabel('xlabel');
    ylabel('ylabel');
    title(num2str(n));
end
linkaxes(ax,'x');


hfig=figure;
set(hfig,'position',[50 50 800 400]);
tiledlayout(4,4,'Padding','tight','TileSpacing','tight');
nexttile(3,[4 2]);
plot(rand(1,10));
axis square;
for n = 1: 8
    ax(n) = nexttile;
    plot(rand(1,10));
    xlabel('xlabel');
    ylabel('ylabel');
    title(num2str(n));
end
linkaxes(ax,'x');