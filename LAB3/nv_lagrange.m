function [sum,m]= nv_lagrange(x0,x,y,n)
sum=0;
q=[];
for i=1:n
    product=y(i);
    k=1;
    for j=1:n 
        if j~=i
            q(j)=k*(x0-x(j))/(x(i)-x(j));
        product=product*(x0-x(j))/(x(i)-x(j));
         k=q(j);
        end
    end
    m(i)=k;
    sum=sum+product;
end
