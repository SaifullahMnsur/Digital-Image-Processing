clc;
clear;
close all;

% Read the images
image1 = imread('images/image1.jpg');   % Read the first image (image1.jpg)
image2 = imread('images/image2.jpg');   % Read the second image (image2.jpg)

% Ensure both images are of the same size
if size(image1) ~= size(image2)
    error('The images must be of the same size');
end

% Initialize empty matrices for the results of addition and subtraction
sub_image = zeros(size(image1), 'like', image1);  % Same size as image1
add_image = zeros(size(image1), 'like', image1);  % Same size as image1

% Manually add and subtract the pixel values
for i = 1:size(image1, 1)  % Loop over the rows
    for j = 1:size(image1, 2)  % Loop over the columns
        for k = 1:size(image1, 3)  % Loop over the color channels (RGB)
            % Addition: Add the pixel values of both images
            add_image(i, j, k) = image1(i, j, k) + image2(i, j, k);
            
            % Subtraction: Subtract the pixel values of image2 from image1
            sub_image(i, j, k) = image1(i, j, k) - image2(i, j, k);
        end
    end
end

% Create a figure to display all images
figure;

% Display Image 1 in the first subplot
subplot(2,2,1);        
imshow(image1);        
title('Image 1');      

% Display Image 2 in the second subplot
subplot(2,2,2);        
imshow(image2);        
title('Image 2');      

% Display the manually added image in the third subplot
subplot(2,2,3);        
imshow(add_image);     
title('Manually Added Image');  

% Display the manually subtracted image in the fourth subplot
subplot(2,2,4);        
imshow(sub_image);     
title('Manually Subtracted Image');  
