A = imread('C:\Users\Rajkumar Palanisamy\Pictures\Itachi.jpg');
A = rgb2gray(A);
imshow(A);
[row,col] = size(A);
B = zeros(row,col);
C = zeros(row,col);
A = im2double(A);
E1 = 0.2;
E2 = 4;
for row1 = 1:row
    for col1 = 1:col
        B(row1,col1)=(2*(A(row1,col1)^E1);
        C(row1,col1)=(2*(A(row1,col1)^E2);
    end
end
imshow(B);
imshow(C);
