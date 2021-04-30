img=imread('65.jpg');
b=imread('1.png');
b=imresize(b,[120,120]);
img=im2double(img);
b = fspecial('log',7,0.4);
new=imfilter(img,b);
subplot(2,2,1),imshow(img);
subplot(2,2,2),imshow(b);
subplot(2,2,3),imshow(new);
