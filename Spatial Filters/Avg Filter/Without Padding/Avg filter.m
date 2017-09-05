A = [9,8,7,6,6,7;
     3,8,25,23,10,12;
     13,23,22,20,16,18;
     6,24,16,1,8,14;
     3,2,17,10,12,17;
     24,25,14,17,18,19;
     ];

w = [1,1,1;
     1,1,1;
     1,1,1];

val = 0;
Z = zeros(6);
 
for row = 1:6
    for col = 1:6 
        if row==1||col==1||row==6||col==6
            Z(row,col) = A(row,col);
        else
            Z(row,col) = (A(row-1,col-1)*w(1,1)+ A(row-1,col)*w(1,2) + A(row-1,col+1)*w(1,3) + A(row,col-1)*w(2,1) + A(row,col)*w(2,2) + A(row,col+1)*w(2,3) + A(row+1,col-1)*w(3,1)+ A(row+1,col)*w(3,2)+ A(row+1,col+1)*w(3,3))/9;  
         end
    end
end

Z = int8(Z);
disp(Z);
 