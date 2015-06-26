clear all
close all
clc
[pathstr, ~, ~] = fileparts(mfilename('fullpath'));

% Change default figure stuff
set(0,'DefaultFigurePosition',[200, 200, 1700, 1000])
set(0,'DefaultAxesFontName', 'Courier')
set(0,'DefaultAxesFontSize', 14)
set(0,'DefaultAxesFontWeight','bold')
set(0,'DefaultAxesLineWidth', 2.5)


%% load 
load(fullfile(pathstr, 'dataLog22.mat'))

%% scale events
%I assume the button event have the correct timing
scaling = 1.075;

wrongBlock = scale_annotation(wrongBlock, scaling);
correctBlock = scale_annotation(correctBlock, scaling);
wrongPosition = scale_annotation(wrongPosition, scaling);
correctPosition = scale_annotation(correctPosition, scaling);

%% cut

startTime = 100;
endTime = 2000;

for i = 1:10
    button{i} = cut_button(button{i}, startTime, endTime);
end

%% shift
shift = -100;

for i = 1:10
    button{i} = shift_button(button{i}, shift);
end

wrongBlock = shift_annotation(wrongBlock, shift);
correctBlock = shift_annotation(correctBlock, shift);
wrongPosition = shift_annotation(wrongPosition, shift);
correctPosition = shift_annotation(correctPosition, shift);

%% plot

colors = linspecer(10);
for i = 1:10
    ypos = i/2+10.5;
    width = 0.45;
%     plot([0, endTime - startTime], [ypos, ypos], '-.k')
    plot_one_timeline(button{i}.start, button{i}.end, ypos ,width , colors(i,:))
end

%
for i = 1:10
    ypos = i/2+16.5;
    width = 0.45;
    plot_one_timeline(button{i}.start, button{i}.end, ypos ,width , colors(i,:))
end

%
plot([-1000, 2000], [10, 10], '--k')
plot([-1000, 2000], [16.25, 16.25], '--k')


% fill([correctPosition.timeLine(1), correctPosition.timeLine', correctPosition.timeLine(end)], ...
%     [0,correctPosition.timeValue',0], ...
%     'r', 'facealpha', 0.2, ...
%     'edgecolor', 'r', 'edgealpha', 0)

linewidth = 2;

thisGreen = [100, 212, 63] / 255;
thisRed = [232, 24, 46] / 255;
thisYellow = [199, 201, 198] / 255;
thisBlack = [40, 35, 42] / 255;

plot(wrongBlock.timeLine, wrongBlock.timeValue, 'color', thisBlack,  'linewidth', linewidth)
plot(correctBlock.timeLine, correctBlock.timeValue, 'color', thisYellow, 'linewidth', linewidth)

plot(wrongPosition.timeLine, wrongPosition.timeValue, 'color', thisRed, 'linewidth', linewidth)
plot(correctPosition.timeLine, correctPosition.timeValue, 'color', thisGreen, 'linewidth', linewidth)


set(gca,'XLim', [-20 1170])
set(gca,'XTick', [0, 235, 658, 1140])
set(gca,'XTickLabel', {'Start'; '4 min'; '12 min'; '19 min'})

set(gca,'YLim', [-0.8 22.5])

set(gca,'YTick',[0 1 2 3 5 7 10, 11:0.5:15.5, 17:0.5:21.5])
set(gca,'YTickLabel',{'0 '; '1 '; '2 '; '3 '; '5 '; '7 '; '10 '; ...
                        'Button  1 '; ...
                        'Button  2 '; ...
                        'Button  3 '; ...
                        'Button  4 '; ...
                        'Button  5 '; ...
                        'Button  6 '; ...
                        'Button  7 '; ...
                        'Button  8 '; ...
                        'Button  9 '; ...
                        'Button 10 '; ...
                        'Button  1 '; ...
                        'Button  2 '; ...
                        'Button  3 '; ...
                        'Button  4 '; ...
                        'Button  5 '; ...
                        'Button  6 '; ...
                        'Button  7 '; ...
                        'Button  8 '; ...
                        'Button  9 '; ...
                        'Button 10 '})















