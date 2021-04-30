a=dir('*.jpg');
for i=1:length(a)
    b=a(i).name;
    images=imread(b);
    i=images;
    subplot(14,2,i),imshow(images);
end