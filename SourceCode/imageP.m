function val=imageP()

% clc;
% clear all;

I = imread('BN.jpg');
level = graythresh(I);
img = im2bw(I,level);
val=int64(img);

% for i=1:800
%     for j=1:1200
%         if img(i,j)==1
%             img(i,j)=0;
%         else
%             img(i,j)=1;
%         end
%     end
% end
% 
% imshow(img);