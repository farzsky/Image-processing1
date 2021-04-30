img=imread("65.jpg");
img=im2double(img);
p=[-1 -sqrt(2) -1; 0 0 0;1 sqrt(2) 1];
new=imfilter(img,p);
subplot(1,2,1),imshow(img);
subplot(1,2,2),imshow(new);
