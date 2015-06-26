function [shiftedButtonStruct] = shift_button(buttonStruct, shift)
%SHIFT_BUTTON

shiftedButtonStruct = buttonStruct;

shiftedButtonStruct.start = shiftedButtonStruct.start + shift;
shiftedButtonStruct.end = shiftedButtonStruct.end + shift;