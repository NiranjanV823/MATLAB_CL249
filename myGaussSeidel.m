function [X]= myGaussSeidel(A,B,Xg,n)
count=0;
%maxerr=0.0001;
%err1=inf;
%while err1>maxerr
for k=1:20
     X1=Xg;
    for i=1:n
   
    sum=0;
    for j=1:(i-1)
        sum=sum+A(i,j)*X(j);
        count=count+2;
    end
    for j=(i+1):n
        sum=sum+A(i,j)*X1(j);
        count=count+2;
    end
    X(i)=(1/A(i,i))*(B(i)-sum);
     count =count +3;
    
    end
    Xg=X;
    %err1=abs(X1-X);
end

