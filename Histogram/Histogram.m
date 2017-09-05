A = imread('C:\Users\Rajkumar Palanisamy\Pictures\Itachi.jpg');
[row,col] = size(A);
C = zeros(255,1);
for i = 1 : row
    for j = 1 : col
        B = A(i,j);
        C(B+1,1)= C(B+1,1) + 1;
    end
end

bar(C);
xlabel('Intensity', 'fontsize', 12);
ylabel('Number of Pixel', 'fontsize', 12);

title('HISTOGRAM');