A = imread('C:\Users\Rajkumar Palanisamy\Pictures\Itachi.jpg');
A = rgb2gray(A);
imshow(A);
[row,col] = size(A);
B = zeros(row,col);
A = im2double(A);
for row1 = 1:row
    for col1 = 1:col
        B(row1,col1)=sqrt(A(row1,col1));
    end
end

figure,imshow(B);
