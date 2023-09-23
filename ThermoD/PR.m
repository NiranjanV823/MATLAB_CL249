function z=PR(T,P)
%solve using Peng-Robinson equation of state ... param=[a b omega Tc]
%returns the value of Z for the given T (in K), P (in Pa) and param
%param should be containing a and b (in SI units)
[~,~,~,R]=critical_point_information();
[a,b]=parameter_PR(T);
%set up the cubic equation Z^3 + alpha * Z^2 + beta * Z + gamma =0
%while true
A=(a*P)/((R*T)^2);
B=(b*P)/(R*T);
alpha= -1.+B;
beta=A-3*B*B-2*B;
gamma= -A*B + B*B*(B+1.);
PReq=[1.0 alpha beta gamma]';
zr=real(roots(PReq));
%get only relevant values of z
check_zr=abs(polyval(PReq,zr))<1.e-8 & zr>1.e-5;
z=zr(check_zr==1);
zv=max(zr);
zl=min(zr);
fv=fvapour(zv,A,B,P);
fl=fliquid(zl,A,B,P);
 %if abs((fl/fv) - 1)<0.0001
  %  break;
%else 
 % P=P*fl/fv;
%end
%end
fprintf('zv=%d \n',zv);
fprintf('zl=%d \n',zl);
fprintf('fv=%d \n',fv);
fprintf('fl=%d \n',fl);
disp(fl/fv -1);
disp(a);
disp(b);
disp(A);
disp(B);
