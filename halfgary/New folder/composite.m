function abc = composite(a, b, c)
  m = size(a,1); n = size(a,2);
  abc = zeros(m, n, 3);
  for i=1:3
    % Vectorize the i-th channel of a, add it to the accumulator.
    ai = a(:,:,i); 
    acc = ai(:);
    % Vectorize the i-th channel of b, replace its nonzero pixels in the accumulator
    bi = b(:,:,i); 
    bi = bi(:);
    z = (bi ~= 0);
    acc(z) = bi(z);
    % Likewise for c
    ci = c(:,:,i);
    ci = ci(:);
    z = (ci ~= 0);
    acc(z) = ci(z);
    % Place the result in the i-th channel of abc
    abc(:,:,i) = reshape(acc, m, n);
  end
  
  
  
  
  
  
  
  
  
  
  
  f1=imread('5.jpg'); %reads the images
f2=imread('6.jpg');
f3=rgb2gray(f1); %converts the images into grayscale images
f4=rgb2gray(f2);
subplot(2,2,1),imshow(f3) %plots both the images in one figure
subplot(2,2,2),imshow(f4)
combImg=cat(f1,f2);
imshow(combImg);

  
  
  
  
  
  
  
  
  
 