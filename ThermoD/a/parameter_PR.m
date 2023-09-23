function [a,b]=parameter_PR(T)
k = 0.4069;
Tc = 154.6 ;
Pc= 5.046e6;
R=8.314;
a = 0.45724*(R^2)*(Tc^2)*(1/Pc)*(1+k*(1-sqrt(T/Tc)))^2;
b=0.0778*R*Tc/Pc;