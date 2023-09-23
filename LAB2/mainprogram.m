clc
clear
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
[~,n]=size(A);
disp(myGaussSeidal(A,B,n));


