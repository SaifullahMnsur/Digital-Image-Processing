clc;
clear;
close all;

image = imread('dora.jpg');
R = image(:,:,1);
G = image(:,:,2);
B = image(:,:,3);

grayImage = 0.299 * R + 0.587 * G + 0.114 * B;

figure;

subplot(1,2,1);
imshow(image);
title('Original Image');

subplot(1,2,2);
imshow(grayImage);
title('Grayscaled Image');

imwrite(grayImage, 'grayscaled_image.jpg');