function [shiftedAnnotationStruct] = shift_annotation(annotationStruct, shift)
%SHIFT_ANNOTATION

shiftedAnnotationStruct = annotationStruct;

shiftedAnnotationStruct.start = shiftedAnnotationStruct.start + shift;
shiftedAnnotationStruct.end = shiftedAnnotationStruct.end + shift;
shiftedAnnotationStruct.timeLine = shiftedAnnotationStruct.timeLine + shift;
