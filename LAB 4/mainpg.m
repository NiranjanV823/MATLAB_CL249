clc
clear
h=0.1;
x(1)=0;
for i=1:10
    for j=1:15/h
        x(j+1)=x(j)+h;
    end
    [a,b]=solver(h);
   plot(x,a);
    hold on;
    h=h/2;
end

hold off;


h1=0.1;
[a1,b1]=solver(h1);
h2=0.01;
[a2,b2]=solver(h2);
 req=abs((b2-b1)./b2);
% plot(req); 