clc 
clear
x0=-1;
xn=1;
I=[];
h=0.1;
sum=0;
for j=1:10
    h=h/2;
    for i=x0+h:h:xn-h
    sum=sum+f(i);
    end
sum=sum*2;
I(j)=h/2*(x0+sum+xn);
end
