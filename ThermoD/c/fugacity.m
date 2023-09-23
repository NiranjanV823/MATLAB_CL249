function [f]=fugacity(z,A,B,P)
k=(z+(1+sqrt(2))*B)/(z+(1-sqrt(2))*B);
c=(z-1)-log(z-B)-(A/(2*sqrt(2)*B))*log(k);
f=P*exp(c);

