function [P]=PR(T,P)
%solve using Peng-Robinson equation of state ... param=[a b omega Tc]
%returns the value of Z for the given T (in K), P (in Pa) and param
%param should be containing a and b (in SI units)
R=8.314;
[a,b]=parameter_PR(T);
%set up the cubic equation Z^3 + alpha * Z^2 + beta * Z + gamma =0
while true
A=(a*P)/((R*T)^2);
B=(b*P)/(R*T);
alpha= -1.+B;
beta=A-3*B*B-2*B;
gamma= -A*B + B*B*(B+1.);
PReq=[1.0 alpha beta gamma]';
zr=real(roots(PReq));
zv=max(zr);
zl=min(zr);
fv=fugacity(zv,A,B,P);
fl=fugacity(zl,A,B,P);
 if abs((fl/fv) - 1)<0.0001
    break;
else 
  P=P*fl/fv;
end
end