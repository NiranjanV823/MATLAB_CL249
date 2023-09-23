function [y,t]=solver(h)
a1=1/6;
a2=2/6;
a3=2/6;
a4=1/6;
p1=1/2; p2=1/2; p3=1;
q11=1/2;
q21=0; q22=1/2; 
q31=0; q32=0; q33=1;
x(1)=0; y(1)=4; z(1)=1.5;
t(1)=4;

for i=1:15/h
k1=f(x(i),y(i),z(i));
m1=g(x(i),y(i),z(i));

k2=f(x(i)+(p1*h),y(i)+(q11*k1*h),z(i)+(q11*m1*h));
m2=g(x(i)+(p1*h),y(i)+(q11*k1*h),z(i)+(q11*m1*h));

k3=f(x(i)+(p2*h),y(i)+(q21*k1*h)+(q22*k2*h),z(i)+(q21*m1*h)+(q22*m2*h));
m3=g(x(i)+(p2*h),y(i)+(q21*k1*h)+(q22*k2*h),z(i)+(q21*m1*h)+(q22*m2*h));

k4=f(x(i)+(p3*h),y(i)+(q31*k1*h)+(q32*k2*h)+(q33*k3*h),z(i)+(q31*m1*h)+(q32*m2*h)+(q33*m3*h));
m4=g(x(i)+(p3*h),y(i)+(q31*k1*h)+(q32*k2*h)+(q33*k3*h),z(i)+(q31*m1*h)+(q32*m2*h)+(q33*m3*h));

y(i+1)=y(i)+h*(a1*k1+a2*k2+a3*k3+a4*k4);
z(i+1)=z(i)+h*(a1*m1+a2*m2+a3*m3+a4*m4);
x(i+1)=x(i)+h; 

for j=1:15
   if i==j/h
     t(j+1)=y(i+1);
   end     
end
end

