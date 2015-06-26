clear all
close all
clc
[pathstr, ~, ~] = fileparts(mfilename('fullpath'));

%%
elan = readELAN(fullfile(pathstr, '22test.txt'));

wrongBlockIdx = strcmp(elan{1}, '-V');
wrongBlock.start = elan{2}(wrongBlockIdx);
wrongBlock.end = elan{3}(wrongBlockIdx);
wrongBlock.duration = elan{4}(wrongBlockIdx);
wrongBlock.value = elan{5}(wrongBlockIdx);
wrongBlock.timeLine = reshape([wrongBlock.start, wrongBlock.end]', 1, 2*length(wrongBlock.start))';
wrongBlock.timeValue = reshape([wrongBlock.value, wrongBlock.value]', 1, 2*length(wrongBlock.value))';

correctBlockIdx = strcmp(elan{1}, '+V');
correctBlock.start = elan{2}(correctBlockIdx);
correctBlock.end = elan{3}(correctBlockIdx);
correctBlock.duration = elan{4}(correctBlockIdx);
correctBlock.value = elan{5}(correctBlockIdx);
correctBlock.timeLine = reshape([correctBlock.start, correctBlock.end]', 1, 2*length(correctBlock.start))';
correctBlock.timeValue = reshape([correctBlock.value, correctBlock.value]', 1, 2*length(correctBlock.value))';

wrongPositionIdx = strcmp(elan{1}, '-E');
wrongPosition.start = elan{2}(wrongPositionIdx);
wrongPosition.end = elan{3}(wrongPositionIdx);
wrongPosition.duration = elan{4}(wrongPositionIdx);
wrongPosition.value = elan{5}(wrongPositionIdx);
wrongPosition.timeLine = reshape([wrongPosition.start, wrongPosition.end]', 1, 2*length(wrongPosition.start))';
wrongPosition.timeValue = reshape([wrongPosition.value, wrongPosition.value]', 1, 2*length(wrongPosition.value))';

correctPositionIdx = strcmp(elan{1}, '+E');
correctPosition.start = elan{2}(correctPositionIdx);
correctPosition.end = elan{3}(correctPositionIdx);
correctPosition.duration = elan{4}(correctPositionIdx);
correctPosition.value = elan{5}(correctPositionIdx);
correctPosition.timeLine = reshape([correctPosition.start, correctPosition.end]', 1, 2*length(correctPosition.start))';
correctPosition.timeValue = reshape([correctPosition.value, correctPosition.value]', 1, 2*length(correctPosition.value))';


%%
events = readevents(fullfile(pathstr, 'events.txt'));

button = cell(1, 10);
for i = 1:10
    button{i} = struct;
    button{i}.start = events{i}(:,1);
    button{i}.end = events{i}(:,2);
    button{i}.duration = button{i}.end - button{i}.start;
end

%%
save('dataLog22', 'wrongBlock', 'correctBlock', 'wrongPosition', 'correctPosition', 'button')