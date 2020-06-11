% LPF and HPF on an image.
% Created By : Dheeraj Kumar(BT17ECE066),IIIT, Nagpur.
clc;
clear;
close all;
I = imread('lenna.png'); %taking image as input
kernel = [-1 -1 -1;-1 8 -1;-1 -1 -1];%HPF
kernel2 = 1/9 *([1,1,1;1,1,1;1,1,1]);%LPF
LPF_Image = imfilter(I, kernel2, 'same');%using lpf on image
HPF_Image = imfilter(I, kernel, 'same');%using hpf on image
imshowpair(LPF_Image,HPF_Image,'montage');%showing both the image
title('Low Pass Filter                                   High Pass Filter');
