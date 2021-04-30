imgRGB = imread('7.jpg');
imgGray = rgb2gray(imgRGB);

[r, c, ~] = size(imgRGB);
c = round(c/2);

imgSplit = imgRGB;
for i = 1:3
  imgSplit([1:r],[1:c],i) = imgGray([1:r],[1:c]);
end
subplot(1,3,1), imshow(imgRGB); title('RGB image');
subplot(1,3,2), imshow(imgGray); title('GrayScale image');
subplot(1,3,3), imshow(imgSplit); title('Half RGB & Half Gray');



