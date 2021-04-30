I = imread('1.png');
[ny,nx] = size(I) ;
imshow(I) ;
hold on
% Center 
C = round([nx ny]/2) ;
plot(C(1),C(2),'*r')   % mid point/ center of image 
%%Draw line
P1 = [1 nx] ;
P2 = [C(2) C(2)] ;
plot(P1,P2,'b')
%
P3 = [C(1) C(1)] ;
P4 = [1 ny] ;
plot(P3,P4,'b')