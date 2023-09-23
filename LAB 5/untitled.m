clc
clear
h=0.25;
t(1)=0;
f=zeros(1/h,1/h);
for i=1:1/h
%     10*(u(i)^3) + (3*h^2 +2)*u(i)-u(i+1)-u(i-1)+t(i-1)*h^2=0;
     f(i,i)=-1;
     f(i,i+1)=3*h^2 + 2;
     f(i,i+2)=-1;
     f(i,i+3)=10*h^2;
     g(i)=(-t(i)^2)*h^2;
     t(i+1)=t(i)+h;
end
G=g';
f\G