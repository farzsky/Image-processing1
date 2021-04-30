img=imread("5.jpg");
img=im2double(img);
a=imread("1.png");
a=im2double(a);
p=[-1 -sqrt(2) -1; 0 0 0;1 sqrt(2) 1];

new=imfilter(img,a);
b=imfilter(new,p);

subplot(2,2,1),imshow(img);
subplot(2,2,2),imshow(a);
subplot(2,2,3),imshow(new);
subplot(2,2,4),imshow(b);