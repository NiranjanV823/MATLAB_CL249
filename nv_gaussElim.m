function [x]=nv_gaussElim(a)

[~,n]=size(a);
j=1;
x=j+1;
for j=1:(n-1)
    for x=j+1:n 
        a(x,:)=a(x,:)-(a(x,j)/a(j,j)).*a(j,:);
    end
    disp(a);
    pause;
end