a=zeros(255)
for row=50:150
    for col=80:200
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=100:250
    for col=100:220
        b(row,col)=255;
    end
end
figure,imshow(b);
xo=a&b
figure,imshow(xo);
