clc;
clear;
close all;

% Read the color image
image = imread('images/dora.jpg');

% Convert the image into separate Red, Green, and Blue channels
redChannel = image(:,:,1);
greenChannel = image(:,:,2);
blueChannel = image(:,:,3);

% Initialize histograms for each channel (0 to 255)
redHist = zeros(256, 1);
greenHist = zeros(256, 1);
blueHist = zeros(256, 1);

% Get the size of the image
[rows, cols, ~] = size(image);

% Loop through each pixel in the image and update the histograms
for i = 1:rows
    for j = 1:cols
        % Get pixel values for each channel
        redValue = redChannel(i,j);
        greenValue = greenChannel(i,j);
        blueValue = blueChannel(i,j);

        % Increment the corresponding histogram bin
        redHist(redValue + 1) = redHist(redValue + 1) + 1;
        greenHist(greenValue + 1) = greenHist(greenValue + 1) + 1;
        blueHist(blueValue + 1) = blueHist(blueValue + 1) + 1;
    end
end

% Create a figure for displaying histograms
figure;

% Plot the individual histograms for Red, Green, and Blue channels
subplot(2,2,1);
bar(0:255, redHist, 'r');
title('Red Channel Histogram');
xlim([0 255]);
xlabel('Pixel Intensity');
ylabel('Frequency');

subplot(2,2,2);
bar(0:255, greenHist, 'g');
title('Green Channel Histogram');
xlim([0 255]);
xlabel('Pixel Intensity');
ylabel('Frequency');

subplot(2,2,3);
bar(0:255, blueHist, 'b');
title('Blue Channel Histogram');
xlim([0 255]);
xlabel('Pixel Intensity');
ylabel('Frequency');

% Plot the combined RGB histogram
subplot(2,2,4);
hold on;
bar(0:255, redHist, 'r', 'FaceAlpha', 0.5);
bar(0:255, greenHist, 'g', 'FaceAlpha', 0.5);
bar(0:255, blueHist, 'b', 'FaceAlpha', 0.5);
title('Combined RGB Histogram');
xlim([0 255]);
xlabel('Pixel Intensity');
ylabel('Frequency');
legend({'Red', 'Green', 'Blue'});

% Display the original image for reference
figure;
imshow(image);
title('Original Color Image');
