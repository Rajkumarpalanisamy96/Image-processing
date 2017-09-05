A = imread('C:\Users\Rajkumar Palanisamy\Pictures\Itachi.jpg');
A=rgb2gray(A);
figure,imshow(A);
[row,col] = size(A);
for row1 = 1:row
    for col1 = 1:col
        A(row1,col1) = A(row1,col1)+ 90;
    end
end

A = uint8(A);
figure,imshow(A);
