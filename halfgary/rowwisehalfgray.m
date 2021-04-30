inputdir='New folder/';
outputdir='bw/';
loadjpg=dir([inputdir '*.jpg']);
for i=1:length(loadjpg)
    imgRGB=imread([inputdir loadjpg(i).name]);
    name=loadjpg(i).name;
    

imgGray = rgb2gray(imgRGB);



[r, c, ~] = size(imgRGB);
r= round(r/2);

imgRGB([1:r],[1:c],1) = rgb2gray(imgRGB([1:r],[1:c],:)); 
for i = 2:3
  imgRGB([1:r],[1:c],i) = imgRGB([1:r],[1:c],1);
end

imshow(imgRGB)
imwrite(imgRGB, [outputdir name]);
end