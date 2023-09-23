function [fv]=fvapour(zv,A,B,P)
k=(zv+(1+sqrt(2))*B)/(zv+(1-sqrt(2))*B);
c=(zv-1)-log(zv-B)-(A/(2*sqrt(2)*B))*log(k);
fv=P*exp(c);

