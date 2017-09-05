A = imread('C:\Users\Rajkumar Palanisamy\Pictures\Itachi.jpg');
A = rgb2gray(A);
imshow(A);
[row,col] = size(A);
Z = zeros(row,col);
m=20;
E=4;
for row1 = 1:row
    for col1 = 1:col
        Z(row1,col1) = 1./(1+(m./(A(row1,col1))).^E);
    end
end
A = im2double(A);
figure,imshow(Z);
imwrite(Z,'Output.jpg');