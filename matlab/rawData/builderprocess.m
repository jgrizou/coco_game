function [  ] = builderprocess( A , numV, numE)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% 7: numV = 8; numE = 7;
% 16: numV = 9; numE = 8;
% 17: numV = 11; numE = 10;
% 22: numV = 10; numE = 10;

B = [A{:,2:end}];

vneg = B(find(strcmp(A{1,1}, '-V') == 1), :);
vpos = B(find(strcmp(A{1,1}, '+V') == 1), :);
eneg = B(find(strcmp(A{1,1}, '-E') == 1), :);
epos = B(find(strcmp(A{1,1}, '+E') == 1), :);


Pvp = [vpos(:,4)*100/numV,vpos(:,4)*100/numV];
Pep = [epos(:,4)*100/numE,epos(:,4)*100/numE];

Pvn = [vneg(:,4)*100/numV,vneg(:,4)*100/numV];
Pen = [eneg(:,4)*100/numE,eneg(:,4)*100/numE];

%figure
%subplot(2,1,1)
handlevector(:,1) = plot(reshape(vpos(:,1:2)', [], 1), reshape(Pvp', [], 1), 'b', 'LineWidth', 2);
hold on
handlevector(:,2) = plot(reshape(epos(:,1:2)', [], 1), reshape(Pep', [], 1), 'k', 'LineWidth', 2);

%handlev(:,1) = plot(vneg(:,1:2)', [1,1], 'r', 'LineWidth', 4);
%handleve(:,1) = plot(eneg(:,1:2)', [1.1,1.1], 'k', 'LineWidth', 4);

%legend([handlevector(1,:)], {'correct bricks','correctly joined'}, 'Location','SouthEast') 


%subplot(2,1,2)
handlevector2(:,1) = plot(reshape(vneg(:,1:2)', [], 1), reshape(Pvn', [], 1), 'c', 'LineWidth', 2);
hold on
handlevector2(:,2) = plot(reshape(eneg(:,1:2)', [], 1), reshape(Pen', [], 1), 'Color',[107/256 107/256 107/256], 'LineWidth', 2);

legend([handlevector(1,:), handlevector2(1,:)], {'correct bricks','correctly joined','incorrect bricks','incorrectly joined'}, 'Location','SouthEast') 



end

