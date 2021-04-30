dd = dir('images/*.jpg');
for i=1:length(dd)
    A = imread(['images/' dd(i).name]);
    B = imread('7.jpg');

    c=rgb2gray(B);
    
    newImg(1:r, 1:c, :) = B;% left top
    newImg(1:r, end-c+1:end, : ) = B;%right top
imshow(newImg);
    pause(0.5);
    imwrite(newImg,['gh/' dd(i).name]);
end