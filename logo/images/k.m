img=imread('65.jpg');
img=im2double(img);
outputDir='gray\my.txt';
for i=1:10
    r=randi([-10,4],3,3)
new=imfilter(img,r);
subplot(3,10,i),imshow(new);
title(sprintf('\t%d\t,\t\t', r));
subplot(3,10,i+10),imshow(img);
writematrix(r, gray);
title('orignal');
b=randi(4,4)
a=imfilter(img,b);
subplot(3,10,i+20),imshow(a);
path=strcat(outputDir,string(i));
imwrite(new,path);
end