a=zeros(255)
for row=10:200
    for col=100:200
        a(row,col)=255;
    end
end
imshow(a);
b=zeros(255)
for row=150:250
    for col=100:180
        b(row,col)=255;
    end
end
figure,imshow(b);
diff=a-b
figure,imshow(diff);