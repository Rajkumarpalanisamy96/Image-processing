a=zeros(255)
for row=20:200
    for col=20:120
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=150:180
    for col=100:200
        b(row,col)=255;
    end
end
figure,imshow(b);
an=a&b
figure,imshow(an);
