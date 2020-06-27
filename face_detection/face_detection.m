% Face Detection  using Viola-Jones Algorithm 
% Muhammad Hafizuddin Bin Redzuan
% Afiqa
% Umi
% 15 June 2020 
% To detect Face 
FDetect = vision.CascadeObjectDetector; 

%Read the input image 
I = imread('face2.jpg'); 

%Returns Bounding Box values based on number of objects 
BB = step(FDetect,I); 

figure, imshow(I); hold on 

for i = 1:size(BB,1)  
    rectangle('Position',BB(i,:),'LineWidth',2,'LineStyle','-','EdgeColor','r'); 
end 

title('Face Detection'); 
hold off;