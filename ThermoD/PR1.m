function z=PR1(T,P)
%solve using Peng-Robinson equation of state ... param=[a b omega Tc]
%returns the value of Z for the given T (in K), P (in Pa) and param
%param should be containing a and b (in SI units)
[~,~,~,R]=critical_point_information();
[a,b]=parameter_PR(T);
%set up the cubic equation Z^3 + alpha * Z^2 + beta * Z + gamma =0
A=a*P/(R*T)^2;
B=(b*P)/(R*T);
alpha= -1.+B;
beta=A-3*B*B-2*B;
gamma= -A*B + B*B*(B+1.);
PReq=[1.0 alpha beta gamma]';
zr=real(roots(PReq));

%get only relevant values of z
check_zr=abs(polyval(PReq,zr))<1.e-8 & zr>1.e-5;
z=zr(check_zr==1);
%disp(zr);
%disp(alpha);
%disp(beta);
%disp(gamma);