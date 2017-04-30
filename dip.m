function y = dip(Img)
% imshow(Img);
s = size(Img);
ns = [128*ceil(s(1)/128),128*ceil(s(2)/128)];
% Img_n = zeros(ns(1),ns(2));
Img_n(1:ns(1),1:ns(2)) = Img;
%imshow(im2uint8(Img_n));
%P = Img_n(1:128,1:128);
%imshow(im2uint8(P));
for i=0:(ns(1)/128)-1
    for j=0:(ns(2)/128)-1
        P = Img_n(i*128+1:i*128+128,j*128+1:j*128+128); 
        %imshow(im2uint8(P));
        trans = mgramfilt(im2uint8(P));
        %imshow(im2uint8(trans));
        %break;
        New_Img(i*128+1:i*128+128,j*128+1:j*128+128) = trans; 
    end
end
y=(im2uint8(New_Img));