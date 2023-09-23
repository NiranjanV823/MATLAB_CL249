clc
clear
%A=[27 6 -1;6 15 2;1 1 54];
%B=[85;72;110];
%A=[1 1;1 -1];
%B=[5;1];
A=[1 1 1;1 3 1;1 2 2];
B=[7;13;13];
maxdiff=1e-8;
x=zeros(1,size(A,1));
diff=1;
itr=0;
while all(diff>maxdiff)
    x_old=x;
    for i=1:size(A,1)
        sum=0;
      for j=1:i-1
           sum=sum+A(i,j)*x(j);   
      end
      for j=i+1:size(A,1)
        sum= sum+A(i,j)*x_old(j);
      end
    x(i)=(1/A(i,i))*(B(i)-sum);
    end

itr=itr+1;
y(itr,:)=x;
diff=abs(x_old-x);
end
fprintf('Method converge in %d iteration\n',itr);
disp(x);