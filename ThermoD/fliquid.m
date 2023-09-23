function [fl]=fliquid(zl,A,B,P)
k=(zl+(1+sqrt(2))*B)/(zl+(1-sqrt(2))*B);
c=(zl-1)-log(zl-B)-(A/(2*sqrt(2)*B))*log(k);
fl=P*exp(c);

