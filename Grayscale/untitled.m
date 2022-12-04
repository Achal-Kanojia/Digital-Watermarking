c=imread('LENNA.bmp'); % 24-bit BMP image RGB888
b=rgb2gray(c);
imshow(b)
k=1;
for i=256:-1:1 % image is written from the last row to the first row
for j=1:256
a(i,j)=b(i,j);
end
end
fid = fopen('Lenna2D_2.hex', 'wt');
for i=256:-1:1 % image is written from the last row to the first row
for j=1:256
    fprintf(fid, '%x ', a(i,j));
end
    fprintf(fid, '\n');
end
disp('Mission Successful');disp(' ');