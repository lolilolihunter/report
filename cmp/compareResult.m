function out=compareResult(img1, img2)
A = imread(img1);
A=im2double(A);
B = imread(img2);
B=im2double(B);
C=abs(A-B);
imshow(C);
% out=psnr(A, B);
out=sum(sum(sum(C(C~=0))));
imwrite(C, 'C.png');
end