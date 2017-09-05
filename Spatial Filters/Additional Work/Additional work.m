 F = input('Type of filter ','s');
size = input('Window size 3 or 5? ');


 A = [9,8,7,6,6,7;
     3,8,25,23,10,12;
     13,23,22,20,16,18;
     6,24,16,1,8,14;
     3,2,17,10,12,17;
     24,25,14,17,18,19;
     ];
	 
B = zeros(6);

Gaussian3 = [1,2,1;
                2,4,2;
                1,2,1];
            
Avg3 = ones(3);

Gaussian5 = [0,0,1,0,0;
                 0,1,2,1,0;
                 1,2,16,2,1;
                 0,1,2,1,0;
                 0,0,1,0,0]; 
             
Avg5 = ones(5);    

% Gaussian3 %

if (strcmp(F,'Gaussian') && (size==3))
    for row = 1:6
        for col = 1:6
            if row==1||col==1||row==6||col==6
                B(row,col) = A(row,col);
            else
                B(row,col) = (A(row-1,col-1)*Gaussian3(1,1)+ A(row-1,col)*Gaussian3(1,2) + A(row-1,col+1)*Gaussian3(1,3) + A(row,col-1)*Gaussian3(2,1) + A(row,col)*Gaussian3(2,2) + A(row,col+1)*Gaussian3(2,3) + A(row+1,col-1)*Gaussian3(3,1)+ A(row+1,col)*Gaussian3(3,2)+ A(row+1,col+1)*Gaussian3(3,3))/16;  
            end
        end
    end 
B = int8(B);
disp(B);

% Gaussian5 %
elseif (strcmp(F,'Gaussian') && (size==5))
    for row = 1:6
        for col = 1:6 
            if row==1||col==1||row==6||col==6||row==2||col==2||row==5||col==5
                B(row,col) = A(row,col);
            else
                B(row,col) = (A(row-2,col-2)*Gaussian5(1,1)+ A(row-2,col-1)*Gaussian5(1,2) + A(row-2,col)*Gaussian5(1,3) + A(row-2,col+1)*Gaussian5(1,4) + A(row-2,col+2)*Gaussian5(1,5) + A(row-1,col-2)*Gaussian5(2,1) + A(row-1,col-1)*Gaussian5(2,2)+ A(row-1,col)*Gaussian5(2,3)+ A(row-1,col+1)*Gaussian5(2,4)+ A(row-1,col+2)*Gaussian5(2,5)+ A(row,col-2)*Gaussian5(3,1)+ A(row,col-1)*Gaussian5(3,2)+ A(row,col)*Gaussian5(3,3)+ A(row,col+1)*Gaussian5(3,4)+ A(row,col+2)*Gaussian5(3,5)+ A(row+1,col-2)*Gaussian5(4,1)+ A(row+1,col-1)*Gaussian5(4,2)+ A(row+1,col)*Gaussian5(4,3)+ A(row+1,col+1)*Gaussian5(4,4)+ A(row+1,col+2)*Gaussian5(4,5)+ A(row+2,col-2)*Gaussian5(5,1)+ A(row+2,col-1)*Gaussian5(5,2)+ A(row+2,col)*Gaussian5(5,3)+ A(row+2,col+1)*Gaussian5(5,4)+ A(row+2,col+2)*Gaussian5(5,5))/32;  
            end
        end
    end 
B = int8(B);
disp(B);


% Average3 %

elseif (strcmp(F,'Average') && (size==3))   
    for row = 1:6
        for col = 1:6 
            if row==1||col==1||row==6||col==6
                B(row,col) = A(row,col);
            else
                B(row,col) = (A(row-1,col-1)*Avg3(1,1)+ A(row-1,col)*Avg3(1,2) + A(row-1,col+1)*Avg3(1,3) + A(row,col-1)*Avg3(2,1) + A(row,col)*Avg3(2,2) + A(row,col+1)*Avg3(2,3) + A(row+1,col-1)*Avg3(3,1)+ A(row+1,col)*Avg3(3,2)+ A(row+1,col+1)*Avg3(3,3))/9;  
            end
        end
    end

B = int8(B);
disp(B);

% Average5 %

elseif (strcmp(F,'Average') && (size==5))
    for row = 1:6
        for col = 1:6
            if row==1||col==1||row==6||col==6||row==2||col==2||row==5||col==5
                B(row,col) = A(row,col);
            else
                B(row,col) = (A(row-2,col-2)*Avg5(1,1)+ A(row-2,col-1)*Avg5(1,2) + A(row-2,col)*Avg5(1,3) + A(row-2,col+1)*Avg5(1,4) + A(row-2,col+2)*Avg5(1,5) + A(row-1,col-2)*Avg5(2,1) + A(row-1,col-1)*Avg5(2,2)+ A(row-1,col)*Avg5(2,3)+ A(row-1,col+1)*Avg5(2,4)+ A(row-1,col+2)*Avg5(2,5)+ A(row,col-2)*Avg5(3,1)+ A(row,col-1)*Avg5(3,2)+ A(row,col)*Avg5(3,3)+ A(row,col+1)*Avg5(3,4)+ A(row,col+2)*Avg5(3,5)+ A(row+1,col-2)*Avg5(4,1)+ A(row+1,col-1)*Avg5(4,2)+ A(row+1,col)*Avg5(4,3)+ A(row+1,col+1)*Avg5(4,4)+ A(row+1,col+2)*Avg5(4,5)+ A(row+2,col-2)*Avg5(5,1)+ A(row+2,col-1)*Avg5(5,2)+ A(row+2,col)*Avg5(5,3)+ A(row+2,col+1)*Avg5(5,4)+ A(row+2,col+2)*Avg5(5,5))/25;  
            end
        end
    end 
B = int8(B);
disp(B);

end;