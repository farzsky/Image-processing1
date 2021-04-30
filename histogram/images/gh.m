a=imread('4.jpg');
b=dir('img/*.jpg');
for c=1:length(b)
    i=imread(['img/',a(c).name]);
  a = imhist(rgb2gray(i));
  subplot(14,2,c),imshow(i);
  subplot(14,2,c+7),imhist(rgb2gray(i));
end