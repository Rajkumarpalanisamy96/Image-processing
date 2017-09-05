a=zeros(255)
for row=20:180
    for col=50:150
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=150:250
    for col=100:170
        b(row,col)=255;
    end
end
figure,imshow(b);
inter=a&b
figure,imshow(inter);