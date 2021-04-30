a=dir('images\*.jpg');
for i=1:length(a)
    A = imread(['images/' a(i).name]);
logo=imread('4.jpg');
logo=imresize(logo,[120,120]);
[r,c,ch]=logo;
 newImg = A;

    newImg(1:r, 1:c, :) = logo;
    % left top

subplot(14,2,i),imshow(newImg);
end
