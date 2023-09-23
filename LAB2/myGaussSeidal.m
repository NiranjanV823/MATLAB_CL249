function [x]=myGaussSeidal(A,B,n)

x=rand(1,n);

count=0;
for k=1:100
    x_guess=x;
    for i=1:n
        sum=0;
      for j=1:i-1
           sum=sum+A(i,j)*x(j); 
           count=count+2;
      end
      for j=i+1:n
        sum= sum+A(i,j)*x_guess(j);
        count=count+2;
      end
    x(i)=(1/A(i,i))*(B(i)-sum);
    count=count+2;
    end
end
fprintf('Number of operations = %d \n',count);
plot(x,'-r');