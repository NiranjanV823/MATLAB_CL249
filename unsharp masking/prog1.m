clc 
clear
A=imread('download.jpeg');
H=fspecial('unsharp');
B=imfilter(A,H);
subplot(1,2,1), imshow(A), title('original image')
subplot(1,2,2), imshow(B), title('unsharp image')