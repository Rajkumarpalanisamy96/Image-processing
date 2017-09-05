A = imread('C:\Users\Rajkumar Palanisamy\Pictures\Itachi.jpg');
A = rgb2gray(A);
imshow(A);
[row,col] = size(A);
A = bitcmp(A)
figure,imshow(A);
for row1 = 1:row
    for col1 = 1:col
        A(row1,col1) = 255 - A(row1,col1);
    end
end
A = uint8(A);
figure,imshow(A);