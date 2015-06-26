function [scaledAnnotationStruct] = scale_annotation(annotationStruct, scalingFactor)
%SCALE_ANNOTATION

scaledAnnotationStruct = annotationStruct;

scaledAnnotationStruct.start = scalingFactor * scaledAnnotationStruct.start;
scaledAnnotationStruct.end = scalingFactor * scaledAnnotationStruct.end;
scaledAnnotationStruct.duration = scalingFactor * scaledAnnotationStruct.duration;
scaledAnnotationStruct.timeLine = scalingFactor * scaledAnnotationStruct.timeLine;

