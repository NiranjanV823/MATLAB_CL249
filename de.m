clc
clear
y=[];
y(1)=1;
h=0.5;
for i=0:4
y1(i+1)=(1+2*i)*sqrt(y(i+1));
y(i+2)=y(i+1)+h*y1(i+1);
end