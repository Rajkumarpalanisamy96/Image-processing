A = imread('C:\Users\Rajkumar Palanisamy\Desktop\Gray images\gray_moon_by_ll_black_star_ll-d6hk9vf.jpg')
A = imnoise(A,'salt & pepper',0.2)
figure; imshow(A);
B = A;
for c = 1 : 3
    B(:, :, c) = medfilt2(A(:, :, c), [3, 3]);
end
figure; imshow(B);
B = fspecial('prewitt')
figure; imshow(B);
B = fspecial('laplacian',0.2);
figure; imshow(B);
% Unsharp masking
B = padarray(2,[2 2]) - fspecial('average' ,[3 3],2); 
B = im2uint8(B)
B = A - B
K = imfilter(B);  
figure,imshow(K);
% Highboost filtering

