I = imread('download.png');

roi = [360 118 384 560];
BW = imbinarize(I);

Results = ocr(I, roi);