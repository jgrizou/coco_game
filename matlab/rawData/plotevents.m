function [ ] = plotevents( E, offset, factor, yes, no)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% 7: offset = 0, factor = 0.98, yes = 10; no = 6;
% 16: offset = 0, factor = 0.98, yes = 3; no = 1;

figure
hold on
for i = 1:10
    if i == no
    x = 'r';
    elseif i == yes
        x = 'g';
    else
        x = 'y';
    end
    if ~isempty(E{1,i})
        for j = 1:size(E{1,i})
            
            %plot(E{1,i}(j,:), [i,i], 'LineWidth', 20);
            plot([E{1,i}(j,1)*factor-offset, E{1,i}(j,1)*factor-offset], [0,100], 'Color', x)
        end
    end

end

