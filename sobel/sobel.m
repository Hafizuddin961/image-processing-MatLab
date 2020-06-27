%  SOBEL OPERATOR EDGE DETECTION PROGRAMMING
% Muhammad Hafizuddin Bin Redzuan
% Afiqa
% Umi
% 15 June 2020

% Read Input Image 
original_image = imread('car.jpg'); 
figure, imshow(original_image); title('Original Image');

% Convert into gray image
BW = rgb2gray(original_image);
figure, imshow(BW); title('Black & White');

% Convert into double for next filtering process
input_image = double(BW);
figure, imshow(input_image); title('double variable');


% Sobel Operator Mask 
Mx = [-1 0 1; -2 0 2; -1 0 1]; 
My = [-1 -2 -1; 0 0 0; 1 2 1]; 

% Edge Detection Process 
% When i = 1 and j = 1, then filtered_image pixel 
% position will be filtered_image(2, 2) 
% The mask is of 3x3, so we need to traverse 
% to filtered_image(size(input_image, 1) - 2 
% size(input_image, 2) - 2) 
% Thus we are not considering the borders. 

for i = 1:size(input_image, 1) - 2 
    for j = 1:size(input_image, 2) - 2 
        % Gradient approximations 
        Gx = sum(sum(Mx.*input_image(i:i+2, j:j+2))); 
        Gy = sum(sum(My.*input_image(i:i+2, j:j+2))); 
        
        % Calculate magnitude of vector
        filtered_image(i+1, j+1) = sqrt(Gx.^2 + Gy.^2); 
    end 
end 

% Displaying Filtered Image 
filtered_image = uint8(filtered_image);
figure, imshow(filtered_image); title('Filtered Image');

% Define a threshold value 
thresholdValue = 100; % varies between [0 255] 
output_image = max(filtered_image, thresholdValue);
output_image(output_image == round(thresholdValue)) = 0; 

% Displaying Output Image 
output_image = im2bw(output_image);
figure, imshow(output_image); title('Edge Detected Image'); 


