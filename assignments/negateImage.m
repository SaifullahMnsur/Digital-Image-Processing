clc;
clear;
close all;

image = imread('dora.jpg');

negated_image = 255 - image;

figure;

subplot(1,2,1);
imshow(image);
title('Original Image');

subplot(1,2,2);
imshow(negated_image);
title('Negated Image');