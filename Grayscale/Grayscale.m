c=imread('LENNA.bmp'); % 24-bit BMP image RGB888
b=rgb2gray(c);
imshow(b)
k=1;
for i=256:-1:1 % image is written from the last row to the first row
for j=1:256
a(k)=b(i,j,1);
k=k+1;
end
end
fid = fopen('LENNA.hex', 'wt');
fprintf(fid, '%x\n', a);
disp('Mission Successful');disp(' ');