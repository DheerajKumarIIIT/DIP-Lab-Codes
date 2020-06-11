clc;
clear;
close all;
%Reading Original Image
I = imread('Lenna.png');
figure

subplot(1,2,1)
imshow(I)
title('streched Image');
subplot(1,2,2)
imhist(I,64)
title('streched image Histogram');
J = histeq(I);

figure
subplot(1,2,1)
imshow(J)
title('Original Image');
subplot(1,2,2)
imhist(J,64)
title('Original Image Histogram');
