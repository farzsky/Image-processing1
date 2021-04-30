dd = dir('images/*.jpg');
for i=1:length(dd)
    A = imread(['images/' dd(i).name]);
    img=imread("6.jpg");
       img2=imread("1.png");
    
    img= imresize(img, [size(A,1)/8 size(A,1)/8]);
     img2= imresize(img2, [size(A,1)/8 size(A,1)/8]);
    
    [r, c, ch] = size(img);
    newImg = A;

    newImg(1:r, 1:c, :) = img;% left top
    newImg(1:r, end-c+1:end, : ) = img;%right top
      newImg(end-r+1:end, end-c+1:end, : ) = img2;
       newImg(end-r+1:end, 1:c, : ) = img2;
       
       
imshow(newImg);
    
    imwrite(newImg,['gray/' dd(i).name]);
end