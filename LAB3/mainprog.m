x= [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
y= [0 0.2 0.35 0.46 0.58 0.66 0.74 0.85 0.91 0.96 1.0];
[~,n]=size(x);
x0=0.55;
[a,b]=nv_lagrange(x0,x,y,n);
%fprintf('The interpolated value is %d\n',a);
a
b