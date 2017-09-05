a=zeros(255)
for row=50:180
    for col=20:200
        a(row,col)=255;
    end
end
imshow(a);
b=~a
figure,imshow(b);
