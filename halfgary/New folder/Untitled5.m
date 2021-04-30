  f1=imread('5.jpg'); %reads the images
f2=imread('7.jpg');
f3=rgb2gray(f1); %converts the images into grayscale images
f4=rgb2gray(f2);
subplot(2,2,1),imshow(f3) %plots both the images in one figure
subplot(2,2,2),imshow(f4)
combImg=cat(f1:f2);
imshow(combImg);