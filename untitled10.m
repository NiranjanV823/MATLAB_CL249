A = [
6 -7 1 0 0 0 0 0 0 0 0 0 0 0 0;
-4 5 -4 1 0 0 0 0 0 0 0 0 0 0 0;
1 -4 6 -4 1 0 0 0 0 0 0 0 0 0 0;
0 1 -4 6 -4 1 0 0 0 0 0 0 0 0 0;
0 0 1 -4 6 -4 1 0 0 0 0 0 0 0 0;
0 0 0 1 -4 6 -4 1 0 0 0 0 0 0 0;
0 0 0 0 1 -4 6 -4 1 0 0 0 0 0 0;
0 0 0 0 0 1 -4 6 -4 1 0 0 0 0 0;
0 0 0 0 0 0 1 -4 6 -4 1 0 0 0 0;
0 0 0 0 0 0 0 1 -4 6 -4 1 0 0 0;
0 0 0 0 0 0 0 0 1 -4 6 -4 1 0 0;
0 0 0 0 0 0 0 0 0 1 -4 6 -4 1 0;
0 0 0 0 0 0 0 0 0 0 1 -4 6 -4 1;
0 0 0 0 0 0 0 0 0 0 0 1 -4 5 -4;
0 0 0 0 0 0 0 0 0 6 5 1 3 -2 2;
];
B=zeros(15,1);
for i=1:15
    B(i,1)=87;
end
maxerr=1e-5;
x=[ 92.1786   90.8048   82.6319   71.2746   60.1632   52.1955   49.3942   52.6547   61.6382   74.8239   89.6960  103.0106  111.0701  109.9455   95.6206]';
err1=inf;
itr=0;
%while all(err1>maxerr)
for k=1:100
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
   % plot(x);
    %hold on;

itr=itr+1;
y(itr,:)=x;
err1=abs(x_old-x);
end
fprintf('Method converge in %d iteration\n',itr);
disp(x);
%plot(x);