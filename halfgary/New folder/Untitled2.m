img=imread('9.jpg');
figure,imshow(img);
img=rgb2gray(img);

fourier_transform=fftn(img);%take fourier transform of gray scale image

phase=exp(1j*angle(fourier_transform));
phase_only=ifftn(phase);%compute phase only reconstruction
figure,imshow(phase_only,[]);

ph=im2uint8(phase_only);%convert image from double to uint8 
superimposing = img;
superimposing(ph) = 255;  
figure,
imshow(superimposing,[]), 

