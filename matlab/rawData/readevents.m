function [E] = readevents( pathbuttons )
%UNTITLED Summary of this function goes here
%  pathbuttons = '/auto/uei/vollmer/test/events.txt'; 

fid = fopen(pathbuttons);
mask = '%s %f %s';
Eraw = textscan(fid, mask, 'delimiter',',');
fclose(fid);

for i = 1:size(Eraw{1,1})
    Eg(i,1) = str2num(Eraw{1,1}{i,1}(1,2));
end

Eg(:,2) = Eraw{1,2};

for i = 1:10
    E{i} = reshape(Eg(find(Eg(:,1)==(i-1)),2), 2, [])';
end