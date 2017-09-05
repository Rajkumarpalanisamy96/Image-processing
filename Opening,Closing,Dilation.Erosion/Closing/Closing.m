A=imread('C:\Users\Rajkumar Palanisamy\Desktop\DIP\Intensity Transformation\AntiLog Transformation\Input.JPG');
figure,imshow(A); 

%Structuring Elemnent
B=getnhood(strel('square',5));

m=floor(size(B,1)/2);
n=floor(size(B,2)/2);


C=padarray(A,[m n],1);
%Dilation
D=false(size(A));
for i=1:size(C,1)-(2*m)
    for j=1:size(C,2)-(2*n)
        Temp=C(i:i+(2*m),j:j+(2*n));
        D(i,j)=max(max(Temp&B));% And for Dilation
    end
end

C=padarray(D,[m n],1);
D=false(size(D));
% Erosion
for i=1:size(C,1)-(2*m)
    for j=1:size(C,2)-(2*n)
       
        Temp=C(i:i+(2*m),j:j+(2*n));
       
        D(i,j)=min(min(Temp-B));%comparing
      
    end
end
%Logical Invert
D = ~D;
figure,imshow(D);