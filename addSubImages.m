clc;
clear;
close all;

image1 = imread('image1.jpg');
image2 = imread('image2.jpg');

sub_image = image1 - image2;
add_image = image1 + image2;

figure;
subplot(2,2,1);
imshow(image1);
title('Image 1');

subplot(2,2,2);
imshow(image2);
title('Image 2');

subplot(2,2,3);
imshow(add_image);
title('Added Image');

subplot(2,2,4);
imshow(sub_image);
title('Subtracted Image');