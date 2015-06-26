function [cuttedButtonStruct] = cut_button(buttonStruct, cutBefore, cutAfter)
%CUT_BUTTON 
% very quick do not handle cases where the cut is in the middle of an event it keeps it


cuttedButtonStruct = buttonStruct;

sout = find(cuttedButtonStruct.start < cutBefore);
eout = find(cuttedButtonStruct.end < cutBefore);

out = eout == sout;
cuttedButtonStruct.start(sout(out)) = [];
cuttedButtonStruct.end(sout(out)) = [];
cuttedButtonStruct.duration(sout(out)) = [];


sout = find(cuttedButtonStruct.start > cutAfter);
eout = find(cuttedButtonStruct.end > cutAfter);

out = eout == sout;
cuttedButtonStruct.start(sout(out)) = [];
cuttedButtonStruct.end(sout(out)) = [];
cuttedButtonStruct.duration(sout(out)) = [];






