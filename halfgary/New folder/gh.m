%// Load in MATLAB logo
[logo, map, alpha] = imread('1.png');

%// Load in Jack Bauer
jack = imread('7.jpg');

%// Resize the MATLAB logo
logoResize = imresize(logo, 0.5, 'bilinear');
%// Make sure you do the same for the alpha map
alphaResize = imresize(alpha, 0.5, 'bilinear');
%// Duplicate the alpha map to make this three channels - This is a colour image
alphaResize = repmat(alphaResize, [1 1 3]);
%// Make double to ensure mixing
alphaResize = im2double(alphaResize);

%// Get the size of the resized logo - we need this
%// to properly mix the stuff in
rows = size(logoResize, 1);
cols = size(logoResize, 2);

%// Mix in the logo with the image
jack(1:rows,1:cols,:) = uint8(alphaResize.*double(logoResize) + ...
                       (1-alphaResize).*double(jack(1:rows,1:cols,:)));
                   jack(1:rows,end-cols+1:end,:) = uint8(alphaResize.*double(logoResize) + ...
(1-alphaResize).*double(jack(1:rows,end-cols+1:end,:)));
jack(end-rows+1:end,1:cols,:) = uint8(alphaResize.*double(logoResize) + ...
(1-alphaResize).*double(jack(end-rows+1:end,1:cols,:)));
jack(end-rows+1:end,end-cols+1:end,:) = uint8(alphaResize.*double(logoResize) + ...
(1-alphaResize).*double(jack(end-rows+1:end,end-cols+1:end,:)));
 

figure; 
imshow(jack);
