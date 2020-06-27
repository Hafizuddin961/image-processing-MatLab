% Basic Image Processing steps 
% Muhammad Hafizuddin Bin Redzuan 
% 27 June 2020

% Read original image
original = imread('pepper2.jpg');

%<-------------------------------RGB--------------------------------->

%Split into RGB Channels
Red = original(:,:,1);
Green = original(:,:,2);
Blue = original(:,:,3);
    
%Get histValues for each channel
[yRed, x] = imhist(Red);
[yGreen, x] = imhist(Green);
[yBlue, x] = imhist(Blue);

%Plot them together in one plot
figure
subplot(2,1,1), imshow(original), title('RGB');
subplot(2,1,2), plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');
impixelinfo;

%<-------------------------------BW--------------------------------->

% Convert image into black & White
bw = im2bw(original);
figure
subplot(2,1,1), imshow(bw), title('Black & White');
subplot(2,1,2), imhist(bw);
impixelinfo;


%<-------------------------------Gray--------------------------------->

% Convert image into Gray image
gray = rgb2gray(original);
figure
subplot(2,1,1), imshow(gray), title('Gray');
subplot(2,1,2), imhist(gray);
impixelinfo;


%<------------------------------Organized-------------------------------->

% Organize the display
figure
subplot(2,3,1), imshow(original), title('RGB');
subplot(2,3,4), plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');

subplot(2,3,2), imshow(bw), title('B & W');
subplot(2,3,5), imhist(bw);

subplot(2,3,3), imshow(gray), title('Gray');
subplot(2,3,6), imhist(gray);
impixelinfo;