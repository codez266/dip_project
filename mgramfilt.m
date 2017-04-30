function y = mgramfilt(im)

%im = imread(imgName);
% wavelet transform to remove large spatial objects
filtim = clear(im);
%imshow(filtim);
% image contrast thresholding
thim = imadjust(filtim, [0.09 0.14], [0 1]);
% grayscale to bw
bwim = im2bw(thim);
% morphing
morphed = morph(bwim);
y=morphed;
%y=filtim;