function [I]=mytrapeziodal(h)
a=-1;
b=1;
n=(b-a)/h;
x=zeros(1,n);
x(1,1)=a+h;
x(1,n)=b;
for i=2:n-1
    x(1,i)=x(1,i-1)+h;
end
sum=0;
for i=1:n-1
    sum=sum+f(x(i));
end
sum =sum*2;
I=h/2*(a + sum+f(x(n)));
disp(x);
disp(n);
