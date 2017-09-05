a=zeros(255)
for row=20:180
    for col=100:200
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=150:250
    for col=100:200
        b(row,col)=255;
    end
end
figure,imshow(b);
or=a|b
figure,imshow(or);
