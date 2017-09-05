A =  [9,8,7,6,6,7;
     3,8,25,23,10,12;
     13,23,22,20,16,18;
     6,24,16,1,8,14;
     3,2,17,10,12,17;
     24,25,14,17,18,19;
     ];
w = [1,2,1;
     2,4,2;
     1,2,1];
 
 Z = zeros(10);
 Z1 = zeros(6);
 
disp(A);
for row = 3:8
    for col = 3:8 
        Z(row,col) = A(row-2,col-2);
    end
end
disp(Z);


for row = 3:8
    for col = 3:8  
            Z(row,col) = (Z(row-1,col-1)*w(1,1)+ Z(row-1,col)*w(1,2) + Z(row-1,col+1)*w(1,3) + Z(row,col-1)*w(2,1) + Z(row,col)*w(2,2) + Z(row,col+1)*w(2,3) + Z(row+1,col-1)*w(3,1)+ Z(row+1,col)*w(3,2)+ Z(row+1,col+1)*w(3,3))/16;
    end
end

for row = 3:8
    for col = 3:8  
            Z1(row-2,col-2) = Z(row,col);
    end
end

Z1 = int8(Z1);
disp(Z1);    