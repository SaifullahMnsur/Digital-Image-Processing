clc;                % Clear the command window
clear;              % Clear all variables from the workspace
close all;          % Close all open figure windows

% Read the image
image = imread('images/dora.jpg');  % Read the input image from the specified path

% Get the size of the image (height, width, and number of channels)
[height, width, channels] = size(image);

% Initialize an empty matrix to store the negated image
negated_image = zeros(height, width, channels, 'uint8');  % Initialize a matrix for negated image

% Loop through each pixel in the image
for i = 1:height  % Loop through each row (height)
    for j = 1:width  % Loop through each column (width)
        for k = 1:channels  % Loop through each color channel (R, G, B)
            % Manually negate each pixel by subtracting from 255
            negated_image(i, j, k) = 255 - image(i, j, k);
        end
    end
end

% Create a figure to display the original and negated images side by side
figure;

% Display the Original Image in the first subplot
subplot(1,2,1);        
imshow(image);         % Display the original image
title('Original Image'); % Set the title for the original image subplot

% Display the Negated Image in the second subplot
subplot(1,2,2);        
imshow(negated_image);     % Display the negated image
title('Manually Negated Image'); % Set the title for the negated image subplot
