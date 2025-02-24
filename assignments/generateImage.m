clc;
clear;
close all;

rows = 250;
cols = 250;
channels = 3;

image = 0 * ones(rows, cols, channels, 'uint8');

imshow(image);

imwrite(image, 'images/image2.jpg');
