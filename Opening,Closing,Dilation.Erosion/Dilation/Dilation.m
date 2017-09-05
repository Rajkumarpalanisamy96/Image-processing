A=imread('C:\Users\Rajkumar Palanisamy\Desktop\DIP\Intensity Transformation\AntiLog Transformation\Input.JPG');
figure,imshow(A); 

%Structuring Elemnent
B2=getnhood(strel('diamond',5));

m=floor(size(B2,1)/2);
n=floor(size(B2,2)/2);

C=padarray(A,[m n]);

D=false(size(A));

for i=1:size(C,1)-(2*m)
    for j=1:size(C,2)-(2*n)
        Temp=C(i:i+(2*m),j:j+(2*n));
        D(i,j)=max(max(Temp&B2));%And of Structuring element with Temp
    end
end

figure,imshow(D);