img = imread('1.png');
img = im2double(img);


% create few filters.
%https://en.wikipedia.org/wiki/Kernel_(image_processing)
ident =  [0 0 0;0 1 0;0 0 0]; %identity filter
ed = [-1 -1 -1; -1 8 -1;-1 -1 -1]; %edge detection
shar = [0 -1 0; -1 5 -1;0 -1 0]; % sharpening the edeges 
blur = [1/9 1/9 1/9; 1/9 1/9 1/9;1/9 1/9 1/9]; % blurring 
new=imfilter(img,ident);
new1=imfilter(img,ed);
new3=imfilter(img,shar);
new4=imfilter(img,blur);
subplot(2,2,1),imshow(new);
subplot(2,2,2),imshow(new1);

subplot(2,2,3),imshow(new3);
subplot(2,2,4),imshow(new4);



    

    
