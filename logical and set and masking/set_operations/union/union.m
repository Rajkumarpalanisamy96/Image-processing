a=zeros(255)
for row=50:180
    for col=40:210
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=150:230
    for col=180:250
        b(row,col)=255;
    end
end
figure,imshow(b);
uni=a|b
figure,imshow(uni);
