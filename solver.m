
Xg=[1;1];
A=[1 1;1 -1];
B=[5;1];
[~,n]=size(A);
disp(myGaussSeidel(A,B,Xg,n));
