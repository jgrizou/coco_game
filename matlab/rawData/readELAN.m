function [A] = readELAN( path )
%UNTITLED Summary of this function goes here
%   path = '/auto/uei/vollmer/test/16test.txt';

fid = fopen(path);
mask = '%s\t%f\t%f\t%f\t%f\n';
A = textscan(fid, mask);
fclose(fid);
end

