

loadjpg=dir('images/ *.jpg');

for i=1: length(loadjpg)
    img=imread([dir loadjpg(i).name]);
    name= loadjpg(i).name;
    subplot(2,8,i),imshow(img);
    subplot(2,8,i+8),imhist(rgb2gray(img));
    a=imread("6.jpg");
    c=imhist(rgb2gray(a));
    d=imhist(rgb2gray(img));
    sum(abs(c-d))
    
end


