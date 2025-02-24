clc;
clear;
close all;

image = imread('dora.jpg');
grascaleImage = imread('grayscaled_image.jpg');

threshold = 128;
[rows, cols, channels] = size(grascaleImage);

binary_image = ones(rows, cols);
for i = 1:rows
    for j = 1:cols
        if grascaleImage(i,j) > threshold
            binary_image(i,j) = 1;
        else
            binary_image(i,j) = 0;
        end
    end
end

figure;

subplot(1,3,1);
imshow(image);
title('Original Image');

subplot(1,3,2);
imshow(grascaleImage);
title('Grayscaled Image');

subplot(1,3,3);
imshow(binary_image);
title('Binary Image');