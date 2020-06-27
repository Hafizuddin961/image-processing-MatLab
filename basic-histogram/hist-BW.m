original = imread('pepper2.jpg')  
bw = im2bw(original)
gray = rgb2gray(original)

figure
subplot(2,1,1), imshow(bw), title('Black & White');
subplot(2,1,2), imhist(bw);
impixelinfo;