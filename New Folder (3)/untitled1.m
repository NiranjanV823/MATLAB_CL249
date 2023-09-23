H=[0.01,0.02,0.04,0.05,0.1];
for z=1:5
h=H(z);
p=(1/h)-1;
x=h:h:1-h;
y=zeros(p,1);
yold=zeros(p,1);
for i=1:p
    y(i,1)=randi(1);
end
tol=0.0001;
f=zeros(p,1);
condition=false;
while true
for i=1:p
    if i==1
        f(i,1)=f5(0,y(i),y(i+1),h,x(i));
        continue;
    end
    if i==p
       f(i,1)=f5(y(i-1,1),y(i,1),1,h,x(i));
       break;
    end
    f(i,1)=f5(y(i-1),y(i),y(i+1),h,x(i));
    
end
j=zeros(p,p);
for i=1:p
    if i==1
         j(1,2)=1;
         j(1,1)=dfu2(y(1),h);
         continue;
    end
    j(i,i-1)=1;
    j(i,i)=dfu2(y(i),h);
    j(i,i+1)=1;
end
f=-f;

A=[j f];
for i=1:size(A,1)
    for k=i+1:size(A,1)
        key1=A(k,i)./A(i,i);
        A(k,:)=A(k,:)-key1.*A(i,:);
    end
end
dely=zeros(1,size(j,2));
yold=y;
for i=size(A,1):-1:1
     hg=sum(A(i,i+1:end-1).*dely(i+1:end));
     dely(i)=(A(i,end)-hg)./A(i,i);
end
for i=1:p

    y(i,1)=y(i,1)+dely(1,i);

end
for i=1:p
    if (y(i,1)-yold(i,1))/y(i,1)<tol
        condition=true;
    else
        condition=false;
        break;
    end
end
if condition
    break;
end
end
x=[0 x 1];
y=[0 ;y; 1];
plot(x,y);
hold on
end