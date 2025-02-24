clc;                % Clear the command window
clear;              % Clear all variables from the workspace
close all;          % Close all open figure windows

% Read the original image
image = imread('images/dora.jpg');  % Read the input image from the specified path

% Read the pre-grayscaled image
grascaleImage = imread('images/grayscaled_image.jpg');  % Read the pre-grayscale image from the specified path

% Set the threshold value for binary conversion
threshold = 128;  % Any pixel value greater than 128 will be set to 1 (white), else 0 (black)

% Get the size of the grayscale image (rows, columns, channels)
[rows, cols, channels] = size(grascaleImage);  % Extract the number of rows, columns, and color channels

% Initialize the binary image with ones (white)
binary_image = ones(rows, cols);

% Loop through each pixel in the grayscale image
for i = 1:rows  % Loop over each row
    for j = 1:cols  % Loop over each column
        if grascaleImage(i,j) > threshold  % Check if pixel value is greater than the threshold
            binary_image(i,j) = 1;  % Set the pixel to 1 (white) if above threshold
        else
            binary_image(i,j) = 0;  % Set the pixel to 0 (black) if below or equal to threshold
        end
    end
end

% Create a figure to display the original, grayscale, and binary images side by side
figure;

% Display the Original Image in the first subplot
subplot(1,3,1);        
imshow(image);         % Display the original image
title('Original Image'); % Set the title for the original image subplot

% Display the Grayscale Image in the second subplot
subplot(1,3,2);        
imshow(grascaleImage);     % Display the grayscale image
title('Grayscaled Image'); % Set the title for the grayscale image subplot

% Display the Binary Image in the third subplot
subplot(1,3,3);        
imshow(binary_image);      % Display the binary image
title('Binary Image');     % Set the title for the binary image subplot
