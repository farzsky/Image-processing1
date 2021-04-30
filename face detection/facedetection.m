A=imread('99.jpg');
FaceDetector=vision.CascadeObjectDetector;
BBOX=step(FaceDetector,A);
B=insertObjectAnnotation(A,'rectangle',BBOX,'Face');
imshow(B),title('Detected Faces');
n=size(BBOX);
str_n=num2str(n);
for i=1:size(BBOX,1)
    crop{i}=imcrop(B,BBOX(i,:));
   
end
subplot(2,size(BBOX,1),2),imshow(B);
for i=1:size(BBOX,1)
    subplot(2,size(BBOX,1),i+3),imshow(crop{i});
end
str=strcat('number of detected faces are ',str_n);
disp(str);