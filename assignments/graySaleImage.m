clc;                % Clear the command window
clear;              % Clear all variables from the workspace
close all;          % Close all open figure windows

% Read the image
image = imread('images/dora.jpg');  % Read the input image from the specified path

% Get the size of the image (height, width, and number of channels)
[height, width, channels] = size(image);

% Initialize an empty matrix for the grayscale image
grayImage = zeros(height, width, 'uint8');  % Initialize a grayscale image matrix

% Loop through each pixel in the image
for i = 1:height
    for j = 1:width
        % Extract the RGB values for the current pixel
        R = image(i, j, 1);  % Red value
        G = image(i, j, 2);  % Green value
        B = image(i, j, 3);  % Blue value
        
        % Apply the grayscale conversion formula manually
        grayValue = 0.299 * R + 0.587 * G + 0.114 * B;
        
        % Assign the calculated grayscale value to the new image
        grayImage(i, j) = uint8(grayValue);  % Store the grayscale value (cast to uint8)
    end
end

% Create a figure to display the original and grayscale images side by side
figure;

% Display the Original Image in the first subplot
subplot(1,2,1);        
imshow(image);         % Display the original image
title('Original Image'); % Set the title for the original image subplot

% Display the Grayscale Image in the second subplot
subplot(1,2,2);        
imshow(grayImage);     % Display the grayscale image
title('Manually Grayscaled Image'); % Set the title for the grayscale image subplot

% Save the Grayscale Image as a new file
imwrite(grayImage, 'images/grayscaled_image_manual.jpg'); % Save the manually grayscaled image
