function X = morph(A)
%% Dilation
%A=imread('test.bmp');
%A=im2bw(A);
%Structuring element
B=ones(5,5);
m=floor(size(B,1)/2);
n=floor(size(B,2)/2);
%Pad array on all the sides
%C=padarray(A,[m n]);
C = zeros(size(A,1)+2*m,size(A,2)+2*n);
C(1+m:size(A,1)+m,1+n:size(A,2)+n) = A;
D=false(size(A));
for i=1:size(C,1)-(2*m)
    for j=1:size(C,2)-(2*n)
        Temp=C(i:i+(2*m),j:j+(2*n));
        D(i,j)=max(max(Temp&B));
    end
end
%imshow(D-A);
%% Erosion  

A2=D;
%Pad array on all the sides
%C=padarray(A2,[m n],1);
C = ones(size(A2,1)+2*m,size(A2,2)+2*n);
C(1+m:size(A2,1)+m,1+n:size(A2,2)+n) = A2;
%Intialize a matrix with size of matrix A
D2=false(size(A2));
for i = 1:(size(C,1)-(2*m))
    for j = 1:(size(C,2)-(2*n))
        Temp = C(i:i+(2*m),j:j+(2*n));
        D2(i,j) = min(min(Temp-B));
    end
end
D2 = ~D2;
%imshow(D2);
%% Contrast Enhancement by image multiplication
%imshow(A.*D);
X=(A2.*D2);