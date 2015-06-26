function plot_one_timeline(starts, ends, ypos, heigth, color)
%PLOT_ONE_TIMELINE

hold on
for i = 1:length(starts)
    patchX = [starts(i) ends(i) ends(i) starts(i)];
    patchY = [ypos-heigth/2 ypos-heigth/2 ypos+heigth/2 ypos+heigth/2];
    patch(patchX, patchY, color, 'EdgeColor', color);    
end




