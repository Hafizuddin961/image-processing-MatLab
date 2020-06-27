original = imread('pepper2.jpg')  

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